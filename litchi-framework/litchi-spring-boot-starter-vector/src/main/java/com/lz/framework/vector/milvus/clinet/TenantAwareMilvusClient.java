package com.lz.framework.vector.milvus.clinet;

import com.lz.framework.vector.config.MilvusProperties;
import com.lz.framework.vector.constants.MilvusDatabaseConstants;
import com.lz.framework.vector.constants.MilvusIsolationStrategyEnum;
import com.lz.framework.vector.core.feature.FeatureExtractor;
import com.lz.framework.vector.core.isolation.VectorContextHolder;
import com.lz.framework.vector.milvus.isolation.MilvusIsolationResolver;
import com.lz.framework.vector.milvus.service.MilvusService;
import io.milvus.v2.client.ConnectConfig;
import io.milvus.v2.client.MilvusClientV2;
import io.milvus.v2.service.collection.request.*;
import io.milvus.v2.service.database.request.CreateDatabaseReq;
import io.milvus.v2.service.database.response.ListDatabasesResp;
import io.milvus.v2.service.partition.request.CreatePartitionReq;
import io.milvus.v2.service.partition.request.HasPartitionReq;
import io.milvus.v2.service.vector.request.*;
import io.milvus.v2.service.vector.response.*;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.ObjectProvider;

import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/**
 * 多租户透明的 Milvus gRPC 客户端（{@link MilvusClientV2} 子类）。
 * <p>本类继承 Milvus SDK 的 {@link MilvusClientV2}，
 * override 所有需要隔离的 SDK 方法，在 forward 给 per-database client 前自动注入：
 * <ul>
 *   <li>{@code databaseName}（按 isolation 策略 + tenantId 切到目标库）</li>
 *   <li>{@code collectionName}（COLLECTION 策略按 tenantId 拼接）</li>
 *   <li>{@code partitionName(s)}（PARTITION 策略自动填入 + ensure）</li>
 * </ul>
 *
 * <p><b>channel 管理策略</b>：不复用 {@code useDatabase}（SDK v2 内部会重复 connect 开新 channel 而不关老的）。
 * 改用 per-database client 缓存 —— 每个 database 独占一个 {@link MilvusClientV2} 实例，
 * 用 {@link ConcurrentHashMap} 缓存，请求结束时由 {@link VectorContextHolder} 清理线程上下文，
 * 真正 shutdown 由 Spring 容器销毁时统一做。
 *
 * <p><b>SDK Req 类型 vs Setter</b>（不同 Req 类 partition 字段名/单复数不一致）：
 * <ul>
 *   <li>{@link QueryReq} / {@link SearchReq} / {@link HybridSearchReq}：{@code setPartitionNames(List)}</li>
 *   <li>{@link InsertReq} / {@link UpsertReq} / {@link DeleteReq} / {@link GetReq}：{@code setPartitionName(String)}</li>
 * </ul>
 *
 * @author litchi
 */
@Slf4j
public class TenantAwareMilvusClient extends MilvusClientV2 {

    // ========================================================
    //  公开接口：隔离注入回调
    // ========================================================

    /**
     * 隔离注入回调接口。
     *
     * <p>由 {@link MilvusService} 在构造期注入 {@link CollectionAutoEnsurer} 实现：
     * 在每次 SDK 方法 override 触发 {@link #fireBefore} 时被调用，
     * 用于确保 collection / partition 存在。
     *
     * @author litchi
     */
    public interface IsolationInjector {
        /**
         * SDK 方法被 override 触发钩子时回调。
         *
         * @param logicalCollection 业务方传入的逻辑集合名（未翻译）
         * @param needWrite        此次调用是否为写入（insert / upsert）
         */
        void onBeforeSend(String logicalCollection, boolean needWrite);
    }

    // ========================================================
    //  字段
    // ========================================================

    private final MilvusIsolationResolver resolver;
    private final MilvusProperties props;
    private final ObjectProvider<FeatureExtractor> featureExtractorProvider;

    /**
     * 隔离注入回调钩子，构造时是 noop。
     * 由 {@link MilvusService} 构造完成后调 {@link #setInjector} 替换成 {@link CollectionAutoEnsurer}。
     */
    private volatile IsolationInjector injector = (s, w) -> {};

    /**
     * 当前线程正在使用的 database 名（仅用于 {@link #activeDatabase()} 查询）。
     * 与 per-database client 缓存独立追踪，互不干扰。
     */
    private final ThreadLocal<String> activeDatabase = VectorContextHolder.ACTIVE_DATABASE;

    /**
     * 原始 ConnectConfig（不含 dbName）。
     * 用于克隆出每个 database 的独立 client。
     */
    private final ConnectConfig baseConfig;

    /**
     * per-database MilvusClientV2 缓存。
     * key = database 名，value = 该 database 独占的 client 实例。
     *
     * <p>不复用 {@code useDatabase} 切换 —— SDK v2 的 useDatabase 内部会重新 connect 开新 channel
     * 而不关老的，导致 channel 泄漏。每个 database 独占一个 channel，线程池回收时统一 close。
     */
    private final Map<String, MilvusClientV2> dbClientCache = new ConcurrentHashMap<>();

    // ========================================================
    //  构造
    // ========================================================

    /**
     * @param baseConfig               Milvus gRPC 连接配置（host / port / token，不含 dbName）
     * @param resolver                 隔离策略解析器（{@link MilvusIsolationResolver}）
     * @param props                    配置属性（用于读取 {@code isolation} 等开关）
     * @param featureExtractorProvider FeatureExtractor provider（取特征维度，构建 schema 时用）
     */
    public TenantAwareMilvusClient(ConnectConfig baseConfig,
                                  MilvusIsolationResolver resolver,
                                  MilvusProperties props,
                                  ObjectProvider<FeatureExtractor> featureExtractorProvider) {
        super(baseConfig);
        this.baseConfig = baseConfig;
        this.resolver = resolver;
        this.props = props;
        this.featureExtractorProvider = featureExtractorProvider;
    }

    // ========================================================
    //  公开方法
    // ========================================================

    /**
     * 当前 FeatureExtractor（用于构造 schema 时取 feature 维度）。
     * 模块未启用时返回 null。
     */
    public FeatureExtractor featureExtractor() {
        return featureExtractorProvider.getIfAvailable();
    }

    /**
     * 由 {@link MilvusService} 在构造完成后调用（注入 {@link CollectionAutoEnsurer}）。
     *
     * @param inj 不能为 null；传 null 等同 noop
     */
    public void setInjector(IsolationInjector inj) {
        this.injector = inj == null ? (s, w) -> {} : inj;
    }

    /**
     * 框架内部使用：当前已激活的 database 物理名。
     * 若还没激活（{@link #getOrCreateClient} 也没跑过），返回 null。
     */
    public String activeDatabase() {
        return activeDatabase.get();
    }

    /**
     * 显式触发 database client 初始化（懒加载通常自动会跑，但有些 ensure 路径要拿稳定值）。
     */
    public void ensureDatabaseActivated() {
        if (activeDatabase.get() == null) {
            clientForCurrentDb();
        }
    }

    /**
     * 当前隔离策略（业务侧偶尔会用到）。
     */
    public String isolation() {
        return props.getIsolation();
    }

    /**
     * 关闭所有 per-database client，释放 gRPC channel。
     * 由 {@link MilvusService#close()} 调用（对应 {@code @Bean(destroyMethod = "close")}）。
     */
    @Override
    public void close() {
        for (Map.Entry<String, MilvusClientV2> e : dbClientCache.entrySet()) {
            try {
                e.getValue().close();
                log.info("[TenantAwareMilvusClient] close db='{}' client", e.getKey());
            } catch (Exception ex) {
                log.warn("[TenantAwareMilvusClient] close db='{}' client failed: {}",
                        e.getKey(), ex.getMessage());
            }
        }
        dbClientCache.clear();
        log.info("[TenantAwareMilvusClient] all db clients closed");
    }

    // ========================================================
    //  SDK 方法 override——透明注入隔离字段
    //  所有 super.* 调用改为走 per-database client（不使用 useDatabase 切换）
    // ========================================================

    @Override
    public QueryResp query(QueryReq req) {
        fireBefore(req.getCollectionName(), false);
        applyCollection(req, req.getCollectionName());
        List<String> ps = resolvePartitionList();
        if (ps != null) req.setPartitionNames(ps);
        return clientForCurrentDb().query(req);
    }

    @Override
    public InsertResp insert(InsertReq req) {
        fireBefore(req.getCollectionName(), true);
        applyCollection(req, req.getCollectionName());
        String p = resolvePartitionName();
        if (p != null) req.setPartitionName(p);
        return clientForCurrentDb().insert(req);
    }

    @Override
    public UpsertResp upsert(UpsertReq req) {
        fireBefore(req.getCollectionName(), true);
        applyCollection(req, req.getCollectionName());
        String p = resolvePartitionName();
        if (p != null) req.setPartitionName(p);
        return clientForCurrentDb().upsert(req);
    }

    @Override
    public DeleteResp delete(DeleteReq req) {
        fireBefore(req.getCollectionName(), false);
        applyCollection(req, req.getCollectionName());
        String p = resolvePartitionName();
        if (p != null) req.setPartitionName(p);
        return clientForCurrentDb().delete(req);
    }

    @Override
    public SearchResp search(SearchReq req) {
        fireBefore(req.getCollectionName(), false);
        applyCollection(req, req.getCollectionName());
        List<String> ps = resolvePartitionList();
        if (ps != null) req.setPartitionNames(ps);
        return clientForCurrentDb().search(req);
    }

    @Override
    public SearchResp hybridSearch(HybridSearchReq req) {
        fireBefore(req.getCollectionName(), false);
        applyCollection(req, req.getCollectionName());
        List<String> ps = resolvePartitionList();
        if (ps != null) req.setPartitionNames(ps);
        return clientForCurrentDb().hybridSearch(req);
    }

    @Override
    public GetResp get(GetReq req) {
        fireBefore(req.getCollectionName(), false);
        applyCollection(req, req.getCollectionName());
        String p = resolvePartitionName();
        if (p != null) req.setPartitionName(p);
        return clientForCurrentDb().get(req);
    }

    @Override
    public Boolean hasCollection(HasCollectionReq req) {
        applyCollection(req, req.getCollectionName());
        return clientForCurrentDb().hasCollection(req);
    }

    @Override
    public void createCollection(CreateCollectionReq req) {
        applyCollection(req, req.getCollectionName());
        clientForCurrentDb().createCollection(req);
    }

    @Override
    public void dropCollection(DropCollectionReq req) {
        applyCollection(req, req.getCollectionName());
        clientForCurrentDb().dropCollection(req);
    }

    @Override
    public void loadCollection(LoadCollectionReq req) {
        applyCollection(req, req.getCollectionName());
        clientForCurrentDb().loadCollection(req);
    }

    @Override
    public void releaseCollection(ReleaseCollectionReq req) {
        applyCollection(req, req.getCollectionName());
        clientForCurrentDb().releaseCollection(req);
    }

    @Override
    public Boolean hasPartition(HasPartitionReq req) {
        applyCollection(req, req.getCollectionName());
        return clientForCurrentDb().hasPartition(req);
    }

    @Override
    public void createPartition(CreatePartitionReq req) {
        applyCollection(req, req.getCollectionName());
        clientForCurrentDb().createPartition(req);
    }

    // ========================================================
    //  框架内部使用：直接调用 per-database client
    //  （CollectionAutoEnsurer 用这些方法确保 collection / partition 存在）
    //  注意：createDatabase / listDatabases 是管理操作，在任意 client 上均可执行
    // ========================================================

    /** 内部：用 listDatabases() 查所有库名，判断目标库是否存在。 */
    public boolean databaseExists(String dbName) {
        try {
            MilvusClientV2 adminClient = dbClientCache.values().stream().findFirst().orElse(null);
            ListDatabasesResp resp;
            if (adminClient != null) {
                resp = adminClient.listDatabases();
            } else {
                // 没有任何 client 时，用初始 config 建的 client 查（查完手动 close）
                MilvusClientV2 temp = new MilvusClientV2(baseConfig);
                try {
                    resp = temp.listDatabases();
                } finally {
                    temp.close();
                }
            }
            return resp != null && resp.getDatabaseNames().contains(dbName);
        } catch (Exception e) {
            log.error("[database] listDatabases 失败: {}", e.getMessage());
            return false;
        }
    }

    /** 内部：在指定 database 上执行 createDatabase（使用该 db 的 client）。 */
    public void createDatabaseIn(String dbName) {
        MilvusClientV2 c = dbClientCache.get(dbName);
        if (c == null) {
            c = createClientForDb(dbName);
        }
        c.createDatabase(CreateDatabaseReq.builder().databaseName(dbName).build());
    }

    /** 内部：在指定 database 上检查 collection。 */
    public Boolean superHasCollection(HasCollectionReq req) {
        return clientForDb(getDbNameFromReq(req)).hasCollection(req);
    }

    /** 内部：在指定 database 上创建 collection。 */
    public void superCreateCollection(CreateCollectionReq req) {
        clientForDb(getDbNameFromReq(req)).createCollection(req);
    }

    /** 内部：在指定 database 上删除 collection。 */
    public void superDropCollection(DropCollectionReq req) {
        clientForDb(getDbNameFromReq(req)).dropCollection(req);
    }

    /** 内部：在指定 database 上加载 collection。 */
    public void superLoadCollection(LoadCollectionReq req) {
        clientForDb(getDbNameFromReq(req)).loadCollection(req);
    }

    /** 内部：在指定 database 上释放 collection。 */
    public void superReleaseCollection(ReleaseCollectionReq req) {
        clientForDb(getDbNameFromReq(req)).releaseCollection(req);
    }

    /** 内部：在指定 database 上检查 partition。 */
    public Boolean superHasPartition(HasPartitionReq req) {
        return clientForDb(getDbNameFromReq(req)).hasPartition(req);
    }

    /** 内部：在指定 database 上创建 partition。 */
    public void superCreatePartition(CreatePartitionReq req) {
        clientForDb(getDbNameFromReq(req)).createPartition(req);
    }

    // ========================================================
    //  内部：隔离注入
    // ========================================================

    private void fireBefore(String logicalCollection, boolean needWrite) {
        try {
            injector.onBeforeSend(logicalCollection, needWrite);
        } catch (Exception e) {
            log.error("[isolation-injector] hook failed: {}", e.getMessage());
        }
    }

    /**
     * 把 req 上的逻辑集合名翻译成物理名后写入。
     *
     * <p>COLLECTION 策略下会追加 {@code _<tenantId>} 后缀；其他策略原样透传。</p>
     */
    private void applyCollection(Object req, String logical) {
        String physical = resolver.resolveCollectionName(logical);
        try {
            req.getClass().getMethod("setCollectionName", String.class).invoke(req, physical);
        } catch (Exception e) {
            log.error("[isolation] setCollectionName failed on {}: {}",
                    req.getClass().getSimpleName(), e.getMessage());
        }
    }

    /**
     * PARTITION 策略下返回当前 partition 名（{@code tenantId} 或 {@code _default}）；
     * 其他隔离策略返回 null。
     */
    private String resolvePartitionName() {
        if (!MilvusIsolationStrategyEnum.PARTITION.is(MilvusIsolationStrategyEnum.of(props.getIsolation()))) return null;
        return resolver.resolvePartitionName();
    }

    /**
     * 同上，单元素 List 形式（给 SDK 的 {@code setPartitionNames(List)} 用）。
     */
    private List<String> resolvePartitionList() {
        String p = resolvePartitionName();
        return p == null ? null : Collections.singletonList(p);
    }

    // ========================================================
    //  内部：per-database client 核心
    // ========================================================

    /**
     * 获取当前请求线程对应的 database 名。
     */
    private String currentDbName() {
        String dbName = resolver.resolveDatabaseName();
        return (dbName == null || dbName.isBlank()) ? MilvusDatabaseConstants.DEFAULT : dbName;
    }

    /**
     * 获取当前请求线程对应的 per-database client。
     * 内部自动 ensure database 存在 + 缓存 client。
     *
     * <p>不再使用 {@code useDatabase} 切换 —— SDK v2 useDatabase 内部会重新 connect
     * 开新 channel 而不关老的，导致 channel 泄漏。</p>
     */
    private MilvusClientV2 clientForCurrentDb() {
        String dbName = currentDbName();
        if (!dbName.equals(activeDatabase.get())) {
            ensureDbClientCached(dbName);
            activeDatabase.set(dbName);
        }
        return dbClientCache.get(dbName);
    }

    /**
     * 为指定 database 获取或创建 client，同时 ensure database 存在。
     */
    private MilvusClientV2 ensureDbClientCached(String dbName) {
        return dbClientCache.computeIfAbsent(dbName, name -> {
            ensureDatabaseExists(name);
            return createClientForDb(name);
        });
    }

    /**
     * 用 baseConfig 克隆 + 指定 dbName 创建新的 MilvusClientV2。
     */
    private MilvusClientV2 createClientForDb(String dbName) {
        ConnectConfig cfg = ConnectConfig.builder()
                .uri(baseConfig.getUri())
                .token(baseConfig.getToken())
                .dbName(dbName)
                .build();
        MilvusClientV2 c = new MilvusClientV2(cfg);
        log.info("[database] new MilvusClientV2(db='{}') channel created (thread={})",
                dbName, Thread.currentThread().getName());
        return c;
    }

    /**
     * 确保 database 存在（不存在则创建）。
     */
    private void ensureDatabaseExists(String dbName) {
        if (!databaseExists(dbName)) {
            // 在 default db 的 client 上创建（任意 client 均可执行 createDatabase）
            MilvusClientV2 adminClient = dbClientCache.get(MilvusDatabaseConstants.DEFAULT);
            if (adminClient == null) {
                // 没有 default client，用临时连接创建
                try {
                    ConnectConfig adminCfg = ConnectConfig.builder()
                            .uri(baseConfig.getUri())
                            .token(baseConfig.getToken())
                            .dbName(MilvusDatabaseConstants.DEFAULT)
                            .build();
                    MilvusClientV2 temp = new MilvusClientV2(adminCfg);
                    try {
                        temp.createDatabase(CreateDatabaseReq.builder().databaseName(dbName).build());
                        log.info("[database] createDatabase '{}' ok", dbName);
                    } finally {
                        temp.close();
                    }
                } catch (Exception e) {
                    log.error("[database] createDatabase '{}' 异常（可能已存在）: {}", dbName, e.getMessage());
                }
            } else {
                try {
                    adminClient.createDatabase(CreateDatabaseReq.builder().databaseName(dbName).build());
                    log.info("[database] createDatabase '{}' ok", dbName);
                } catch (Exception e) {
                    log.error("[database] createDatabase '{}' 异常（可能已存在）: {}", dbName, e.getMessage());
                }
            }
        }
    }

    /**
     * 从 req 提取 databaseName（反射兼容所有 Req 类型）。
     */
    private String getDbNameFromReq(Object req) {
        try {
            Object db = req.getClass().getMethod("getDatabaseName").invoke(req);
            return db != null ? db.toString() : currentDbName();
        } catch (Exception e) {
            return currentDbName();
        }
    }

    /**
     * 获取指定 database 的 client，不存在则创建（不含 ensure database 逻辑）。
     * 用于 super* 框架内部调用。
     */
    private MilvusClientV2 clientForDb(String dbName) {
        return dbClientCache.computeIfAbsent(dbName, name -> createClientForDb(name));
    }
}
