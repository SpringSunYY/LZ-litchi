package com.lz.framework.vector.milvus.clinet;

import com.lz.framework.vector.config.MilvusProperties;
import com.lz.framework.vector.constants.MilvusDatabaseConstants;
import com.lz.framework.vector.constants.MilvusIsolationStrategyEnum;
import com.lz.framework.vector.core.feature.FeatureExtractor;
import com.lz.framework.vector.milvus.isolation.MilvusCollectionTemplate;
import com.lz.framework.vector.milvus.isolation.MilvusIsolationResolver;
import io.milvus.v2.service.collection.request.HasCollectionReq;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.ObjectProvider;

/**
 * 集合自动 ensure 钩子 —— {@link TenantAwareMilvusClient} 在每次 SDK 方法被触发时执行。
 *
 * <p><b>职责</b>：
 * <ol>
 *   <li>集合不存在 → 自动按 {@link MilvusCollectionTemplate} 默认 schema 创建</li>
 *   <li>集合存在但未 loaded → 调用 loadCollection（Milvus 对未 loaded 的集合做 query 会报错）</li>
 *   <li>PARTITION 策略下确保目标 partition 存在</li>
 * </ol>
 *
 * <p><b>递归防护</b>：本类调用的 SDK 方法都通过 {@code client.superXxx(req)} 走父类原始实现，
 * 不会再次触发 override → 避免死循环。
 *
 * <p><b>database 注入</b>：所有发给裸 SDK 的请求都要先写 {@code databaseName}，
     * 否则 SDK 会以 {@link MilvusDatabaseConstants#DEFAULT} 库为作用域，导致集合被错放到 default 库。
     */
@Slf4j
@RequiredArgsConstructor
public class CollectionAutoEnsurer implements TenantAwareMilvusClient.IsolationInjector {

    private final TenantAwareMilvusClient client;
    private final MilvusIsolationResolver resolver;
    private final MilvusProperties props;
    private final ObjectProvider<FeatureExtractor> featureExtractorProvider;

    @Override
    public void onBeforeSend(String logicalCollection, boolean needWrite) {
        if (logicalCollection == null || logicalCollection.isEmpty()) return;

        // 1. 先确保切到目标 database（让 activeDatabase 缓存有值）
        client.ensureDatabaseActivated();

        // 2. 解析物理集合名 + 拿到当前 database 名
        String physical = resolver.resolveCollectionName(logicalCollection);
        String dbName = client.activeDatabase();
        if (dbName == null || dbName.isBlank()) {
            dbName = MilvusDatabaseConstants.DEFAULT;
        }

        try {
            boolean exists;
            try {
                // 直接发 HasCollectionReq，一定要带 databaseName！
                exists = Boolean.TRUE.equals(client.superHasCollection(
                        HasCollectionReq.builder()
                                .databaseName(dbName)
                                .collectionName(physical)
                                .build()));
            } catch (Exception e) {
                log.error("[auto-ensure] hasCollection 异常（忽略，记为不存在）: {}", e.getMessage());
                exists = false;
            }

            if (!exists) {
                // 不管读还是写，只要集合不存在都创建 —— 对未初始化的租户来说，读也要可工作
                log.info("[auto-ensure] database='{}' 集合 '{}' (physical={}）不存在，自动创建",
                        dbName, logicalCollection, physical);
                createCollectionInternal(dbName, physical);
                ensureLoaded(dbName, physical);
            } else {
                ensureLoaded(dbName, physical);
            }

            // PARTITION 策略下确保 partition 存在
            if (MilvusIsolationStrategyEnum.PARTITION.is(MilvusIsolationStrategyEnum.of(props.getIsolation()))) {
                String partition = resolver.resolvePartitionName();
                if (partition != null) {
                    ensurePartition(dbName, physical, partition);
                }
            }
        } catch (Exception e) {
            log.warn("[auto-ensure] 钩子异常（不致命）: {}", e.getMessage());
        }
    }

    /** 用默认 schema 创建集合。物理名是已经 tenant 化后的名字。 */
    private void createCollectionInternal(String dbName, String physical) {
        FeatureExtractor fe = featureExtractorProvider.getIfAvailable();
        int dim = (fe == null) ? 0 : safeDim(fe);
        client.superCreateCollection(io.milvus.v2.service.collection.request.CreateCollectionReq.builder()
                .databaseName(dbName)
                .collectionName(physical)
                .description("Image search collection - vector + business metadata")
                .consistencyLevel(io.milvus.v2.common.ConsistencyLevel.BOUNDED)
                .collectionSchema(MilvusCollectionTemplate.buildSchema(client, dim))
                .indexParams(MilvusCollectionTemplate.buildIndexParams())
                .build());
        log.info("[auto-ensure] collection '{}' 已创建于 database='{}'，dim={}", physical, dbName, dim);
    }

    /**
     * loadCollection：集合不在时 SDK 会抛异常；
     * 我们不能简单 try/catch 后直接重建 —— 因为 loadCollection 是 idempotent 的，
     * 真正失败说明 schema 损坏或不兼容，此时才掉头 drop + create。
     */
    private void ensureLoaded(String dbName, String physical) {
        try {
            client.superLoadCollection(io.milvus.v2.service.collection.request.LoadCollectionReq.builder()
                    .databaseName(dbName)
                    .collectionName(physical)
                    .build());
        } catch (Exception e) {
            log.warn("[auto-ensure] loadCollection failed for '{}'（db={}）：{} → drop + rebuild",
                    physical, dbName, e.getMessage());
            try {
                client.superDropCollection(io.milvus.v2.service.collection.request.DropCollectionReq.builder()
                        .databaseName(dbName)
                        .collectionName(physical)
                        .build());
            } catch (Exception ignore) {
                // drop 也失败也无所谓，反正接下来 createCollection 会处理
            }
            createCollectionInternal(dbName, physical);
        }
    }

    private void ensurePartition(String dbName, String physical, String partition) {
        try {
            if (Boolean.TRUE.equals(client.superHasPartition(
                    io.milvus.v2.service.partition.request.HasPartitionReq.builder()
                            .databaseName(dbName)
                            .collectionName(physical)
                            .partitionName(partition)
                            .build()))) {
                return;
            }
        } catch (Exception ignore) {
            return;
        }
        try {
            client.superCreatePartition(io.milvus.v2.service.partition.request.CreatePartitionReq.builder()
                    .databaseName(dbName)
                    .collectionName(physical)
                    .partitionName(partition)
                    .build());
            log.info("[partition] auto-create '{}' in '{}.{}'", partition, dbName, physical);
        } catch (Exception e) {
            log.error("createPartition 异常（可能已存在）: {}", e.getMessage());
        }
    }

    private static int safeDim(FeatureExtractor fe) {
        try {
            return fe.getFeatureDim();
        } catch (Exception e) {
            return 0;
        }
    }
}
