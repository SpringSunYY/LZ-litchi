package com.lz.framework.vector.core.vector;

import cn.hutool.core.util.IdUtil;
import cn.hutool.core.util.StrUtil;
import com.lz.framework.common.exception.util.ServiceExceptionUtil;
import com.lz.framework.vector.config.EmbeddingProperties;
import com.lz.framework.vector.config.MilvusProperties;
import com.lz.framework.vector.core.exception.VectorDisabledException;
import com.lz.framework.vector.core.feature.FeatureExtractor;
import com.lz.framework.vector.core.feature.FeatureService;
import com.lz.framework.vector.core.isolation.VectorTenantContext;
import com.lz.framework.vector.milvus.service.MilvusService;
import com.lz.framework.vector.pojo.QueryCondition;
import com.lz.framework.vector.pojo.QueryResult;
import com.lz.framework.vector.pojo.SearchResult;
import com.lz.framework.vector.pojo.VectorRecord;
import jakarta.annotation.PreDestroy;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.ObjectProvider;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/**
 * 图片索引编排服务：协调文件存储、特征提取、向量入库、向量检索。
 * 本模块当前外部唯一接口，无论是否开启都注册bean，统一由容器管理。
 * 为后续增加向量数据库时扩展接口。
 * <p>分层职责：
 * <ul>
 *   <li>{@link FeatureService}：按模型路由到 {@link FeatureExtractor} 提取向量</li>
 *   <li>{@link MilvusService}：纯 CRUD——接收 {@link VectorRecord} 实体、返回 {@link VectorRecord} / {@link SearchResult}。</li>
 *   <li><b>本类</b>：组合上面两者，对外暴露统一的业务入口。</li>
 * </ul>
 *
 * <p><b>集合管理</b>：所有公开方法均要求传入 {@code collection} 参数，
 * 指定要操作的 Milvus 集合名称，框架自动应用多租户隔离策略。
 *
 * <p><b>扩展性</b>：换特征提取模型？改 yml 的 {@code embedding.model}。
 */
@Slf4j
public class ImageIndexService {
    private final ObjectProvider<FeatureService> featureServiceProvider;
    private final ObjectProvider<MilvusService> milvusServiceProvider;
    private final EmbeddingProperties embeddingProps;
    private final MilvusProperties milvusProps;
    private final ObjectProvider<VectorTenantContext> tenantContextProvider;

    public ImageIndexService(ObjectProvider<FeatureService> featureServiceProvider,
                             ObjectProvider<MilvusService> milvusServiceProvider,
                             EmbeddingProperties embeddingProps,
                             MilvusProperties milvusProps,
                             ObjectProvider<VectorTenantContext> tenantContextProvider) {
        this.featureServiceProvider = featureServiceProvider;
        this.milvusServiceProvider = milvusServiceProvider;
        this.embeddingProps = embeddingProps;
        this.milvusProps = milvusProps;
        this.tenantContextProvider = tenantContextProvider;
    }

    private FeatureService featureService() {
        FeatureService fs = featureServiceProvider.getIfAvailable();
        if (fs == null) {
            throw new VectorDisabledException("feature service not available (litchi.vector.enable=false)");
        }
        return fs;
    }

    private MilvusService milvusService() {
        MilvusService ms = milvusServiceProvider.getIfAvailable();
        if (ms == null) {
            throw new VectorDisabledException("milvus service not available (litchi.vector.enable=false)");
        }
        return ms;
    }

    /**
     * 特征提取专用线程池（懒初始化）
     */
    private volatile ExecutorService featureExecutor;

    /**
     * 上传目录
     */
    private static final String UPLOAD_DIR = "images";

    public static final Set<String> IMG_EXT = Set.of("jpg", "jpeg", "png", "webp", "bmp", "gif");

    // ==================== 索引 =====================

    /**
     * @param collection 目标 Milvus 集合名（必填）
     */
    public VectorRecord index(String fileUrl, byte[] content, String collection) throws Exception {
        return index(fileUrl, content, null, collection);
    }

    /**
     * @param originKey     可选：上传场景时是 {@code infra_file.id}
     * @param collection 目标 Milvus 集合名（必填）
     */
    public VectorRecord index(String fileUrl, byte[] content, String originKey, String collection) throws Exception {
        checkEnabled("index");
        float[] vector = featureService().extract(content);
        String id = IdUtil.fastSimpleUUID();
        VectorRecord record = new VectorRecord(
                id, fileUrl, vector,
                originKey,
                currentTenantId(),
                System.currentTimeMillis()
        );
        //插入向量
        milvusService().insertVector(record, collection);
        return record;
    }

    // ==================== 批量索引 ====================

    /**
     * @param collection 目标 Milvus 集合名（必填）
     */
    public List<String> indexBatch(List<String> imagePaths, String collection) throws Exception {
        return indexBatch(imagePaths, milvusProps.getInsertBatchSize(), null, collection);
    }

    /**
     * @param batchSize  每批多少张调一次 Milvus
     * @param collection 目标 Milvus 集合名（必填）
     */
    public List<String> indexBatch(List<String> imagePaths, int batchSize, String collection) throws Exception {
        return indexBatch(imagePaths, batchSize, null, collection);
    }

    /**
     * @param originKey     可选：所有记录共享同一 originKey
     * @param collection 目标 Milvus 集合名（必填）
     */
    public List<String> indexBatch(List<String> imagePaths, int batchSize, String originKey, String collection) throws Exception {
        checkEnabled("indexBatch");
        if (imagePaths == null || imagePaths.isEmpty()) {
            log.info("[批量索引] 0 张，跳过");
            return Collections.emptyList();
        }

        long t0 = System.currentTimeMillis();
        int total = imagePaths.size();
        FeatureExtractor fe = featureService().getExtractor();
        log.info("━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━");
        log.info("[批量索引] 开始: 总 {} 张 | 模型: {} | 集合: {}",
                total, fe.getModelName(), collection);

        // 1) 并行提特征
        List<float[]> vectors = new ArrayList<>(total);
        for (int i = 0; i < total; i++) vectors.add(null);
        CountDownLatch latch = new CountDownLatch(total);
        AtomicInteger done = new AtomicInteger(0);
        int progressEvery = Math.max(8, total / 8);

        for (int k = 0; k < total; k++) {
            final int idx = k;
            final File f = new File(imagePaths.get(k));
            ensureExecutor().submit(() -> {
                long tt0 = System.currentTimeMillis();
                try {
                    float[] v = fe.extractFeature(f, ensureExecutor());
                    vectors.set(idx, v);
                    if (idx % progressEvery == 0 || idx == total - 1) {
                        log.info("[批量索引] 提特征进度 {}/{} | 最近单张 {}ms",
                                idx + 1, total, System.currentTimeMillis() - tt0);
                    }
                } catch (Throwable e) {
                    log.error("[批量索引] 单张提特征失败: {}", f, e);
                } finally {
                    done.incrementAndGet();
                    latch.countDown();
                }
            });
        }
        try {
            latch.await();
        } catch (InterruptedException ie) {
            Thread.currentThread().interrupt();
            throw new RuntimeException("[批量索引] 提特征被中断", ie);
        }
        long featMs = System.currentTimeMillis() - t0;
        log.info("[批量索引] 提特征完成: {}/{} 张 | 耗时 {}ms", done.get(), total, featMs);

        // 2) 组装 VectorRecord 列表
        long now = System.currentTimeMillis();
        List<VectorRecord> records = new ArrayList<>(total);
        for (int k = 0; k < total; k++) {
            float[] v = vectors.get(k);
            if (v == null || v.length == 0) continue;
            String id = generateImageId(imagePaths.get(k));
            records.add(new VectorRecord(id, imagePaths.get(k), v, originKey, currentTenantId(), now));
        }
        if (records.isEmpty()) {
            log.warn("[批量索引] 全部失败，0 张入库");
            return Collections.emptyList();
        }

        // 3) 调 Milvus 入库
        List<String> inserted = milvusService().insertVectors(records, batchSize, collection);
        log.info("[批量索引] 完成: 成功 {} / {} 张 | 集合: {} | 总耗时 {}ms",
                inserted.size(), total, collection, System.currentTimeMillis() - t0);
        log.info("━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━");
        return inserted;
    }

    // ==================== 目录导入 ====================

    /**
     * @param collection 目标 Milvus 集合名（必填）
     */
    public Map<String, Object> importFromDirectory(String dir, boolean recursive, int batchSize, String collection) throws Exception {
        File root = new File(dir);
        if (!root.exists() || !root.isDirectory()) {
            throw new IllegalArgumentException("目录不存在: " + dir);
        }
        int batchSizeEff = batchSize <= 0 ? milvusProps.getInsertBatchSize() : batchSize;

        List<File> imageFiles = new ArrayList<>();
        collectImages(root, imageFiles, recursive);
        log.info("━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━");
        log.info("[导入开始] 目录: {} | 递归: {} | 集合: {} | 共 {} 张图片",
                dir, recursive, collection, imageFiles.size());

        List<String> toIndex = new ArrayList<>();
        int skipped = 0;
        int failed = 0;
        File uploadDir = new File(UPLOAD_DIR);
        for (File f : imageFiles) {
            try {
                File destFile = new File(uploadDir, f.getName());
                if (destFile.exists() && destFile.length() > 0) {
                    skipped++;
                } else {
                    Files.copy(f.toPath(), destFile.toPath(), StandardCopyOption.REPLACE_EXISTING);
                }
                toIndex.add(UPLOAD_DIR + "/" + f.getName());
            } catch (IOException e) {
                failed++;
                log.warn("[导入] 文件复制失败: {}", f.getAbsolutePath(), e);
            }
        }

        long t0 = System.currentTimeMillis();
        List<String> ids = indexBatch(toIndex, batchSizeEff, collection);
        long cost = System.currentTimeMillis() - t0;

        log.info("[导入完成] 共扫描:{} | 入库:{} | 跳过:{} | 失败:{} | 集合:{} | 耗时:{}ms",
                imageFiles.size(), ids.size(), skipped, failed, collection, cost);
        log.info("━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━");

        Map<String, Object> ret = new LinkedHashMap<>();
        ret.put("scanned", imageFiles.size());
        ret.put("inserted", ids.size());
        ret.put("skipped", skipped);
        ret.put("failed", failed);
        ret.put("durationMs", cost);
        ret.put("directory", dir);
        ret.put("recursive", recursive);
        ret.put("collection", collection);
        return ret;
    }

    // ==================== 以图搜图 ====================

    /**
     * @param collection 目标 Milvus 集合名（必填）
     */
    public List<SearchResult> searchByPath(String queryImagePath, int topK, String collection) throws Exception {
        checkEnabled("searchByPath");
        long t0 = System.currentTimeMillis();
        float[] vec = featureService().extract(new File(queryImagePath));
        List<SearchResult> results = milvusService().searchByVector(vec, topK, collection);
        log.info("[以图搜图] 集合:{} | 耗时 {}ms", collection, System.currentTimeMillis() - t0);
        return results;
    }

    public List<SearchResult> searchByStream(InputStream in, int topK, String collection) throws Exception {
        checkEnabled("searchByStream");
        long t0 = System.currentTimeMillis();
        float[] vec;
        try (InputStream closed = in) {
            vec = featureService().extract(closed, featureService().getDefaultModel());
        }
        List<SearchResult> results = milvusService().searchByVector(vec, topK, collection);
        log.info("[以图搜图] 集合:{} | 耗时 {}ms", collection, System.currentTimeMillis() - t0);
        return results;
    }

    /**
     * 向量检索（直接接收 query 向量，不走特征提取）。
     */
    public List<SearchResult> searchByVector(float[] queryVector, int topK, String collection) {
        return milvusService().searchByVector(queryVector, topK, collection);
    }

    public List<SearchResult> searchById(String id, int topK, String collection) {
        if (StrUtil.isEmpty(id)) {
            return new ArrayList<>();
        }
        // 先拿完整记录（含 vector），再以图搜图
        List<VectorRecord> records =
                queryByIds(Collections.singletonList(id), collection);
        if (records.isEmpty() || records.getFirst() == null) {
            new ArrayList<>();
        }
        float[] vec = records.getFirst().getVector();
        if (vec == null || vec.length == 0) {
            return new ArrayList<>();
        }
        return searchByVector(vec, topK, collection);
    }
    /**
     * 按 id 列表查询完整向量记录（带 vector）。
     */
    public List<VectorRecord> queryByIds(List<String> ids, String collection) {
        return milvusService().queryByIds(ids, collection);
    }

    /**
     * 初始化集合（创建 + ensureLoaded）。
     */
    public void initCollection(String collection) {
        milvusService().initCollection(collection);
    }

    // ==================== 字段查询 ====================

    public QueryResult queryById(String id, String collection) {
        return milvusService().queryById(id, collection);
    }

    public QueryResult queryById(String id, boolean withVector, String collection) {
        return milvusService().queryById(id, withVector, collection);
    }

    public List<QueryResult> queryByOriginKey(String originKey, String collection) {
        return milvusService().queryByOriginKey(originKey, collection);
    }
    public List<QueryResult> queryByImagePath(String imagePath, String collection) {
        return milvusService().queryByImagePath(imagePath, collection);
    }

    public List<QueryResult> queryByImagePathLike(String substring, String collection) {
        return milvusService().queryByImagePathLike(substring, collection);
    }

    public List<QueryResult> queryByImagePathPrefix(String prefix, String collection) {
        return milvusService().queryByImagePathPrefix(prefix, collection);
    }

    public List<QueryResult> queryByCreatedAtRange(Long fromInclusive, Long toInclusive, String collection) {
        return milvusService().queryByCreatedAtRange(fromInclusive, toInclusive, collection);
    }

    public List<QueryResult> queryByCondition(QueryCondition condition, boolean withVector, int limit, String collection) {
        return milvusService().queryByCondition(condition, withVector, limit, collection);
    }

    public List<QueryResult> queryByCondition(QueryCondition condition, String collection) {
        return milvusService().queryByCondition(condition, false, collection);
    }

    public List<QueryResult> queryByCondition(QueryCondition condition, boolean withVector, String collection) {
        return milvusService().queryByCondition(condition, withVector, collection);
    }

    public List<QueryResult> queryByRawExpr(String expr, String collection) {
        return milvusService().queryByRawExpr(expr, false, -1, collection);
    }

    public List<QueryResult> queryByRawExpr(String expr, boolean withVector, int limit, String collection) {
        return milvusService().queryByRawExpr(expr, withVector, limit, collection);
    }

    // ==================== 删除 ====================

    public int deleteByIds(List<String> ids, String collection) {
        return milvusService().deleteByIds(ids, collection);
    }

    // ==================== 集合管理 ====================

    public void createCollection(String collection) {
        milvusService().createCollection(collection);
    }

    public void dropCollection(String collection) {
        milvusService().dropCollection(collection);
    }

    public boolean collectionExists(String collection) {
        return milvusService().collectionExists(collection);
    }

    public void ensureCollectionLoaded(String collection) {
        milvusService().ensureCollectionLoaded(collection);
    }

    public Map<String, Object> getCollectionInfo(String collection) {
        return milvusService().getCollectionInfo(collection);
    }

    public Map<String, Object> getCollectionStats(int sampleSize, String collection) {
        return milvusService().getCollectionStats(sampleSize, collection);
    }

    public long countByCondition(QueryCondition condition, String collection) {
        return milvusService().countByCondition(condition, collection);
    }

    // ==================== 内部辅助 ====================

    private Long currentTenantId() {
        VectorTenantContext ctx = tenantContextProvider.getIfAvailable();
        if (ctx == null) {
            return null;
        }
        return ctx.currentTenantId();
    }

    private String generateImageId(String imagePath) {
        String fileName = imagePath;
        int slash = Math.max(fileName.lastIndexOf('/'), fileName.lastIndexOf('\\'));
        if (slash >= 0) fileName = fileName.substring(slash + 1);
        int dot = fileName.lastIndexOf('.');
        if (dot > 0) fileName = fileName.substring(0, dot);
        fileName = fileName.replaceAll("[^a-zA-Z0-9_\\-]", "_");
        String ts = new SimpleDateFormat("yyyyMMdd_HHmmss_SSS").format(new Date());
        return fileName + "_" + ts;
    }

    private void collectImages(File dir, List<File> out, boolean recursive) {
        File[] files = dir.listFiles();
        if (files == null) return;
        Arrays.sort(files, (a, b) -> a.getName().compareTo(b.getName()));
        for (File f : files) {
            if (f.isDirectory()) {
                if (recursive) collectImages(f, out, recursive);
            } else if (f.length() > 0) {
                String name = f.getName().toLowerCase();
                int dot = name.lastIndexOf('.');
                if (dot > 0 && IMG_EXT.contains(name.substring(dot + 1))) {
                    out.add(f);
                }
            }
        }
    }

    private ExecutorService ensureExecutor() {
        ExecutorService e = featureExecutor;
        if (e != null) return e;
        synchronized (this) {
            if (featureExecutor == null) {
                int n = Math.max(1, embeddingProps.getFeatureThreads());
                featureExecutor = Executors.newFixedThreadPool(n, runnable -> {
                    Thread t = new Thread(runnable, "image-index-feature-" + System.nanoTime());
                    t.setDaemon(true);
                    return t;
                });
            }
            return featureExecutor;
        }
    }

    @PreDestroy
    public void shutdown() {
        if (featureExecutor == null) return;
        featureExecutor.shutdown();
        try {
            if (!featureExecutor.awaitTermination(10, TimeUnit.SECONDS)) {
                featureExecutor.shutdownNow();
            }
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            featureExecutor.shutdownNow();
        }
    }

    private void checkEnabled(String operation) {
        if (!featureService().isEnabled()) {
            throw new VectorDisabledException(operation);
        }
    }
}
