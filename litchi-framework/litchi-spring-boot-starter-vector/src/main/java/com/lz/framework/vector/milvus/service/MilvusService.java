package com.lz.framework.vector.milvus.service;

import com.lz.framework.vector.config.MilvusProperties;
import com.lz.framework.vector.core.exception.VectorDisabledException;
import com.lz.framework.vector.core.feature.FeatureExtractor;
import com.lz.framework.vector.core.isolation.VectorTenantContext;
import com.lz.framework.vector.pojo.QueryCondition;
import com.lz.framework.vector.pojo.QueryResult;
import com.lz.framework.vector.pojo.SearchResult;
import com.lz.framework.vector.pojo.VectorRecord;
import com.lz.framework.vector.milvus.clinet.CollectionAutoEnsurer;
import com.lz.framework.vector.milvus.clinet.TenantAwareMilvusClient;
import com.lz.framework.vector.milvus.isolation.MilvusCollectionManager;
import com.lz.framework.vector.milvus.isolation.MilvusIsolationResolver;
import io.milvus.v2.client.ConnectConfig;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.ObjectProvider;

import java.util.List;
import java.util.Map;

/**
 * Milvus CRUD / 检索的对外门面（Façade）。
 *
 * <p>所有 SDK 调用通过 {@link TenantAwareMilvusClient} 完成 —— 该子类在 SDK 调用前自动注入：
 * databaseName（按 tenant 切库）、collectionName 物理名（COLLECTION 策略拼接 tenantId）、
 * partitionName(s)（PARTITION 策略自动 ensure + 填入）。
 *
 * <p>业务层调用方式与未隔离的 SDK 完全一致 —— 一行代码搞定，零样板。
 *
 * @author litchi
 */
@Slf4j
public class MilvusService {

    private final TenantAwareMilvusClient client;
    private final ObjectProvider<FeatureExtractor> featureExtractorProvider;
    private final MilvusCollectionManager collectionManager;
    private final MilvusWriter writer;
    private final MilvusSearcher searcher;
    private final MilvusQuerier querier;

    public MilvusService(ObjectProvider<FeatureExtractor> featureExtractorProvider,
                        ObjectProvider<VectorTenantContext> tenantContextProvider,
                        MilvusProperties milvusProps,
                        ConnectConfig connectConfig) {
        this.featureExtractorProvider = featureExtractorProvider;
        MilvusIsolationResolver resolver = new MilvusIsolationResolver(milvusProps, tenantContextProvider, featureExtractorProvider);
        // 构造 TenantAwareMilvusClient（继承 MilvusClientV2，所有 SDK 方法 override 透明注入隔离字段）
        this.client = new TenantAwareMilvusClient(connectConfig, resolver, milvusProps, featureExtractorProvider);
        // 把"集合自动创建 + ensureLoaded + ensurePartition"的钩子装到 client
        this.client.setInjector(new CollectionAutoEnsurer(client, resolver, milvusProps, featureExtractorProvider));
        this.collectionManager = new MilvusCollectionManager(client, resolver, milvusProps);
        MilvusRecordMapper mapper = new MilvusRecordMapper();
        MilvusResultExtractor extr = new MilvusResultExtractor();
        this.writer = new MilvusWriter(client, mapper, milvusProps.getInsertBatchSize());
        this.searcher = new MilvusSearcher(client, extr);
        this.querier = new MilvusQuerier(client, extr);
    }

    // ==================== 状态 ====================

    public boolean isEnabled() {
        return client != null && featureExtractorProvider.getIfAvailable() != null;
    }

    public void checkEnabled(String operation) {
        if (!isEnabled()) {
            throw new VectorDisabledException(operation);
        }
    }

    /**
     * 业务层拿到这个 client 后，调法和未隔离的 MilvusClientV2 完全一致。
     * 所有 SDK 方法已被框架 override，调用前自动注入 database / collection 物理名 / partition。
     */
    public TenantAwareMilvusClient client() {
        return client;
    }

    /** FeatureExtractor（供业务编排层使用） */
    public FeatureExtractor featureExtractor() {
        FeatureExtractor f = featureExtractorProvider.getIfAvailable();
        if (f == null) {
            throw new VectorDisabledException("featureExtractor");
        }
        return f;
    }

    /**
     * Spring 容器销毁前主动关闭 gRPC 客户端，避免 ManagedChannel 漏出被 jvm 回收时报
     * "ManagedChannel allocation site" 警告。
     *
     * <p>由 {@code @Bean(destroyMethod = "close")} 调用，不依赖 {@code @PreDestroy}。
     */
    public void close() {
        try {
            if (client != null) {
                client.close();
                log.info("[MilvusService] gRPC client 已关闭");
            }
        } catch (Exception e) {
            log.warn("[MilvusService] 关闭 gRPC client 失败: {}", e.getMessage());
        }
    }

    // ==================== 集合显式管理 ====================

    public boolean collectionExists(String collection) {
        return collectionManager.exists(collection);
    }

    public void createCollection(String collection) {
        collectionManager.create(collection);
    }

    public void dropCollection(String collection) {
        collectionManager.drop(collection);
    }

    public void ensureCollectionLoaded(String collection) {
        collectionManager.ensureLoaded(collection);
    }

    public void initCollection(String collection) {
        collectionManager.init(collection);
    }

    // ==================== 写入 ====================

    public String insertVector(VectorRecord record, String collection) {
        return writer.insertOne(record, collection);
    }

    public List<String> insertVectors(List<VectorRecord> records, int batchSize, String collection) {
        return writer.insertBatch(records, batchSize, collection);
    }

    // ==================== 向量检索 ====================

    public List<SearchResult> searchByVector(float[] queryVector, int topK, String collection) {
        return searcher.searchByVector(queryVector, topK, collection);
    }

    // ==================== 字段查询 ====================

    public QueryResult queryById(String id, String collection) {
        return querier.queryById(id, collection);
    }

    public QueryResult queryById(String id, boolean withVector, String collection) {
        return querier.queryById(id, withVector, collection);
    }


    public List<QueryResult> queryByOriginKey(String originKey, String collection) {
        return querier.queryByOriginKey(originKey, collection);
    }

    public List<QueryResult> queryByImagePath(String imagePath, String collection) {
        return querier.queryByImagePath(imagePath, collection);
    }

    public List<QueryResult> queryByImagePathLike(String substring, String collection) {
        return querier.queryByImagePathLike(substring, collection);
    }

    public List<QueryResult> queryByImagePathPrefix(String prefix, String collection) {
        return querier.queryByImagePathPrefix(prefix, collection);
    }

    public List<QueryResult> queryByCreatedAtRange(Long fromInclusive, Long toInclusive, String collection) {
        return querier.queryByCreatedAtRange(fromInclusive, toInclusive, collection);
    }

    public List<QueryResult> queryByCondition(QueryCondition condition, boolean withVector, int limit, String collection) {
        return querier.queryByCondition(condition, withVector, limit, collection);
    }

    public List<QueryResult> queryByCondition(QueryCondition condition, boolean withVector, String collection) {
        return querier.queryByConditionWithVector(condition, withVector, collection);
    }

    public List<QueryResult> queryByRawExpr(String expr, boolean withVector, int limit, String collection) {
        return querier.queryByRawExpr(expr, withVector, limit, collection);
    }

    public List<QueryResult> queryByRawExpr(String expr, boolean withVector, String collection) {
        return querier.queryByRawExpr(expr, withVector, collection);
    }

    public List<QueryResult> queryByConditionPage(QueryCondition condition, boolean withVector,
                                                 long offset, int pageSize, String collection) {
        return querier.queryByConditionPage(condition, withVector, offset, pageSize, collection);
    }

    public List<VectorRecord> queryByIds(List<String> ids, String collection) {
        return querier.queryByIds(ids, collection);
    }

    // ==================== 删除 ====================

    public int deleteByIds(List<String> ids, String collection) {
        return querier.deleteByIds(ids, collection);
    }

    // ==================== 统计 ====================

    public Map<String, Object> getCollectionInfo(String collection) {
        return querier.getCollectionInfo(collection);
    }

    public Map<String, Object> getCollectionStats(int sampleSize, String collection) {
        return querier.getCollectionStats(sampleSize, collection);
    }

    public long countByCondition(QueryCondition condition, String collection) {
        return querier.countByCondition(condition, collection);
    }

    /** 兼容旧调用（COLLECTION 策略翻译 logical → physical） */
    public String resolveCollectionName(String logical) {
        return logical; // 物理名由 TenantAwareMilvusClient 自动翻译，外部不再需要
    }
}
