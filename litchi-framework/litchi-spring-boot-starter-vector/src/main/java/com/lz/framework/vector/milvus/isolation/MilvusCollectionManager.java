package com.lz.framework.vector.milvus.isolation;

import com.lz.framework.vector.config.MilvusProperties;
import com.lz.framework.vector.core.feature.FeatureExtractor;
import com.lz.framework.vector.milvus.clinet.TenantAwareMilvusClient;
import io.milvus.v2.common.ConsistencyLevel;
import io.milvus.v2.service.collection.request.*;
import lombok.extern.slf4j.Slf4j;

/**
 * Milvus 集合的<b>显式</b>生命周期管理（exists / create / drop / init）。
 *
 * <p>业务层调用 {@code MilvusService.initCollection(...)} / {@code dropCollection(...)}
 * 等显式操作时使用本类。
 *
 * <p>日常 query / insert / search 操作<b>不应</b>调用本类，
 * 应直接调 {@link TenantAwareMilvusClient}（由它透明处理 collection 物理名 + partition + database）。
 *
 * @author litchi
 */
@Slf4j
public class MilvusCollectionManager {

    private final TenantAwareMilvusClient client;
    private final MilvusIsolationResolver resolver;
    private final MilvusProperties props;

    public MilvusCollectionManager(TenantAwareMilvusClient client,
                                  MilvusIsolationResolver resolver,
                                  MilvusProperties props) {
        this.client = client;
        this.resolver = resolver;
        this.props = props;
    }

    public boolean exists(String logicalCollection) {
        try {
            return Boolean.TRUE.equals(client.hasCollection(HasCollectionReq.builder()
                    .collectionName(logicalCollection)
                    .build()));
        } catch (Exception e) {
            log.error("检查集合存在性失败: {}", logicalCollection, e);
            return false;
        }
    }

    public void create(String logicalCollection) {
        doCreate(logicalCollection);
    }

    /** feature 维度（用于 collection schema 中的 FloatVector.dimension 字段） */
    private int dimension() {
        FeatureExtractor fe = client.featureExtractor();
        if (fe == null) return 0;
        try {
            return fe.getFeatureDim();
        } catch (Exception ignore) {
            return 0;
        }
    }

    private void doCreate(String logicalName) {
        String physical = resolver.resolveCollectionName(logicalName);
        int dim = dimension();
        try {
            CreateCollectionReq req = CreateCollectionReq.builder()
                    .collectionName(logicalName)
                    .description("Image search collection - vector + business metadata")
                    .consistencyLevel(ConsistencyLevel.BOUNDED)
                    .collectionSchema(MilvusCollectionTemplate.buildSchema(client, dim))
                    .indexParams(MilvusCollectionTemplate.buildIndexParams())
                    .build();
            client.createCollection(req);
            client.loadCollection(LoadCollectionReq.builder()
                    .collectionName(logicalName)
                    .build());
            log.info("集合 '{}'（物理名 {}）创建成功", logicalName, physical);
        } catch (Exception e) {
            log.warn("集合创建失败 logical={} physical={}: {}", logicalName, physical, e.getMessage());
            throw e;
        }
    }

    public void drop(String logicalCollection) {
        try {
            client.dropCollection(DropCollectionReq.builder()
                    .collectionName(logicalCollection)
                    .build());
            log.info("集合 '{}' 已删除", logicalCollection);
        } catch (Exception e) {
            log.warn("集合删除失败: {}", logicalCollection, e);
        }
    }

    public void init(String logicalCollection) {
        if (client == null) {
            log.warn("Milvus 客户端未就绪，跳过 init。");
            return;
        }
        log.info("[initCollection] 准备初始化集合: name={}", logicalCollection);
        try {
            if (exists(logicalCollection) && props.isRecreateOnSchemaChange()) {
                log.warn("集合 '{}' 已存在，recreate-on-schema-change=true，将删除并重建。", logicalCollection);
                drop(logicalCollection);
            }
            if (!exists(logicalCollection)) {
                doCreate(logicalCollection);
            }
            log.info("集合 '{}' 初始化成功", logicalCollection);
        } catch (Exception e) {
            log.warn("初始化集合 '{}' 失败: {}", logicalCollection, e.getMessage());
        }
    }

    /** 显式 ensureLoaded（极少用，业务层调 client.search/insert 时已自动 ensure） */
    public void ensureLoaded(String logicalCollection) {
        try {
            client.loadCollection(LoadCollectionReq.builder()
                    .collectionName(logicalCollection)
                    .build());
        } catch (Exception e) {
            log.error("ensureLoaded 失败: {}", e.getMessage());
        }
    }

    /** 释放集合（极少用） */
    public void release(String logicalCollection) {
        try {
            client.releaseCollection(ReleaseCollectionReq.builder()
                    .collectionName(logicalCollection)
                    .build());
        } catch (Exception e) {
            log.error("release 失败: {}", e.getMessage());
        }
    }
}
