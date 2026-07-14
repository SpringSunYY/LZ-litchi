package com.lz.framework.vector.core.feature;

import ai.onnxruntime.*;
import com.lz.framework.vector.config.EmbeddingProperties;
import jakarta.annotation.PostConstruct;
import jakarta.annotation.PreDestroy;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

import javax.imageio.ImageIO;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.*;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.atomic.AtomicInteger;

/**
 * 基于 ONNX Runtime 的 CLIP 图像特征提取器
 * 模型：clip-vit-base-patch32（512 维向量）
 * <p>
 * 输入预处理（CLIP 标准）：
 * 1. resize 到 224x224
 * 2. 转 RGB float32 [0, 1]
 * 3. 用 CLIP mean/std 归一化
 * 4. NCHW → Nx3x224x224
 * <p>
 * 资源路径：
 * 类路径下的 models/clip-vit-base-patch32/（resources/models/...）
 * 或环境变量 CLIP_MODEL_DIR 指定的外部目录
 */
@Slf4j
@RequiredArgsConstructor
public class ClipFeatureExtractor implements FeatureExtractor {

    private final EmbeddingProperties embeddingProps;

    private static final int IMG_SIZE = 224;

    // CLIP 标准归一化参数
    private static final float[] MEAN = {0.48145466f, 0.4578275f, 0.40821073f};
    private static final float[] STD = {0.26862954f, 0.26130258f, 0.27577711f};

    /**
     * 视觉塔 session 池（static = 单例池，防止多 Bean 实例互相覆盖）；线程安全靠 synchronized + wait/notify
     */
    private static final Deque<OrtSession> VISION_POOL = new ArrayDeque<>();
    /**
     * 记录当前 Bean 是否已完成初始化（防止被新实例覆盖后重复初始化）
     */
    private static volatile boolean initialized = false;
    /**
     * 记录实例 ID，用于排查多实例问题
     */
    private static final AtomicInteger INSTANCE_COUNT = new AtomicInteger(0);
    private final int instanceId = INSTANCE_COUNT.incrementAndGet();

    private OrtEnvironment env;
    /**
     * 文本塔 session（一般是低频，1 个就够）
     */
    private OrtSession textSession;
    private Path visionModelPath;
    private Path textModelPath;
    /**
     * 解析后的多尺度数组，如 [224, 256]，至少 1 个元素
     */
    private int[] scales;
    /**
     * 性能摘要统计（共享 PerfRecorder）
     */
    private PerfRecorder perf;
    /**
     * 池监控（与 perf 日志独立范畴）：初始池容量（建池时记录）
     */
    private int initialPoolSize = 0;
    /**
     * 视觉塔池借出峰值（high water mark）—— 池监控用
     */
    private static final AtomicInteger PEAK_BORROWED = new AtomicInteger(0);
    private static final AtomicInteger CURRENT_BORROWED = new AtomicInteger(0);
    private static final java.util.concurrent.atomic.AtomicLong LAST_STATS_LOG_MS_HOLDER =
            new java.util.concurrent.atomic.AtomicLong(System.currentTimeMillis());
    private static final long STATS_LOG_INTERVAL_MS = 10_000L;

    @PostConstruct
    public void init() throws Exception {
        // 防止多个 Bean 实例重复初始化 —— static pool 只需 init 一次
        if (initialized) {
            log.warn("[CLIP 启动] 实例 #{} 跳过 init（static pool 已由实例 #1 初始化，pool size={}）",
                    instanceId, VISION_POOL.size());
            return;
        }

        env = OrtEnvironment.getEnvironment();
        log.info("[CLIP 启动] 实例 #{} 开始初始化 ...", instanceId);

        var clip = embeddingProps.getClip();

        log.info("[CLIP 启动] ===== 配置值确认 =====");
        log.info("[CLIP 启动] useVision={} | useText={} | hflipEnabled={}",
                clip.isUseVision(), clip.isUseText(), clip.isHflipEnabled());
        log.info("[CLIP 启动] visionModelPath={}", clip.getVisionModelPath());
        log.info("[CLIP 启动] textModelPath={}", clip.getTextModelPath());
        log.info("[CLIP 启动] sessionPoolSize={} | featureDim={} | scales={}",
                clip.getSessionPoolSize(), clip.getFeatureDim(), clip.getScales());
        log.info("[CLIP 启动] ==========================");

        this.scales = parseScales(clip.getScales());

        log.info("[CLIP] 多尺度推理: {} | 水平翻转增强: {}",
                Arrays.toString(this.scales), clip.isHflipEnabled() ? "启用" : "禁用");
        log.info("[CLIP] 视觉塔: {} | 文本塔: {}",
                clip.isUseVision() ? "启用" : "禁用",
                clip.isUseText() ? "启用" : "禁用");
        if (!clip.isUseVision() && !clip.isUseText()) {
            throw new IllegalStateException("[CLIP] use-vision 和 use-text 不能同时为 false");
        }

        // 视觉塔：池化（默认 = min(CPU 核数, 8)）
        if (clip.isUseVision()) {
            visionModelPath = resolveModelPath(clip.getVisionModelPath(), "视觉塔");
            ensureModelFile(visionModelPath, "视觉塔");
            int poolSize = resolvePoolSize(clip.getSessionPoolSize(), this.scales.length);
            log.info("[CLIP 启动] 开始创建 {} 个视觉 session ...", poolSize);
            OrtSession.SessionOptions opts = buildOpts(poolSize);
            for (int i = 0; i < poolSize; i++) {
                OrtSession s = env.createSession(visionModelPath.toString(), opts);
                VISION_POOL.addLast(s);
                log.info("[CLIP 启动]   第 {}/{} 个 session 入池，当前 pool size={}", i + 1, poolSize, VISION_POOL.size());
            }
            this.initialPoolSize = VISION_POOL.size();
            log.info("[CLIP] 视觉塔 session 池已就绪: {} 个", VISION_POOL.size());
            log.info("[CLIP] 视觉塔输入: {} | 输出: {}",
                    VISION_POOL.peekFirst().getInputNames(),
                    VISION_POOL.peekFirst().getOutputNames());
            // [A 头探测] 启动期跑一次 0.5 噪声输入，把每个输出头的 shape/维度打出来
            int poolBeforeProbe = VISION_POOL.size();
            probeVisionHeads(VISION_POOL.peekFirst());
            int poolAfterProbe = VISION_POOL.size();
            log.info("[CLIP 启动] 探测后 pool size: {} -> {}", poolBeforeProbe, poolAfterProbe);
            log.info("[CLIP 启动] ✅ 初始化完成，pool 最终 size={}", VISION_POOL.size());
        }
        // 文本塔
        if (clip.isUseText()) {
            textModelPath = resolveModelPath(clip.getTextModelPath(), "文本塔");
            ensureModelFile(textModelPath, "文本塔");
            OrtSession.SessionOptions opts = buildOpts(1);
            textSession = env.createSession(textModelPath.toString(), opts);
            log.info("[CLIP] 文本塔已加载: {} | 输入: {} | 输出: {}",
                    textModelPath, textSession.getInputNames(), textSession.getOutputNames());
        }

        // 性能摘要开关：启动期预热也算"性能摘要"
        this.perf = new PerfRecorder(log, "CLIP", embeddingProps.isPerfLogEnabled());
        log.info("[CLIP 启动] perfLogEnabled={}", embeddingProps.isPerfLogEnabled());

        // 视觉塔预热：跑一次 0.5 噪声输入，避免首次推理延迟
        if (clip.isUseVision()) {
            int warmupErrors = 0;
            int warmupSize = 224; // CLIP 输入固定 224
            OrtSession s = VISION_POOL.pollFirst();
            try {
                log.info("[CLIP 预热] 池预热 ...");
                long w0 = System.currentTimeMillis();
                float[][][][] dummy = new float[1][3][warmupSize][warmupSize];
                int plane = warmupSize * warmupSize;
                for (int c = 0; c < 3; c++) {
                    float v = (0.5f - MEAN[c]) / STD[c];
                    for (int i = 0; i < plane; i++) {
                        dummy[0][c][i / warmupSize][i % warmupSize] = v;
                    }
                }
                try (OnnxTensor tensor = OnnxTensor.createTensor(env, dummy)) {
                    Map<String, OnnxTensor> inputs = Collections.singletonMap("pixel_values", tensor);
                    try (OrtSession.Result result = s.run(inputs)) {
                        result.get(0).getValue();
                    }
                }
                long wMs = System.currentTimeMillis() - w0;
                if (perf.isEnabled()) {
                    log.info("[CLIP 预热]   warmup={}ms (scale={})", wMs, warmupSize);
                }
            } catch (Exception e) {
                warmupErrors++;
                log.warn("[CLIP 预热]   warmup failed: {}", e.getMessage());
            } finally {
                VISION_POOL.addLast(s);
            }
            if (warmupErrors > 0) {
                log.warn("[CLIP 预热] 池预热完成，{}/{} 个失败", warmupErrors, 1);
            } else if (perf.isEnabled()) {
                log.info("[CLIP 预热] 池预热完成");
            }
        }

        initialized = true;
        log.info("[CLIP 启动] ✅ 初始化完成，pool 最终 size={}", VISION_POOL.size());
    }

    private static int resolvePoolSize(int configured, int length) {
        if (configured > 0) return configured;
        int cores = Math.max(1, Runtime.getRuntime().availableProcessors());
        return Math.min(cores, length * 2);
    }

    /**
     * 解析多尺度列表，如 [224, 256] → int[]
     */
    private static int[] parseScales(List<Integer> list) {
        if (list == null || list.isEmpty()) {
            return new int[]{224};
        }
        int[] result = new int[list.size()];
        for (int i = 0; i < list.size(); i++) {
            int v = list.get(i);
            if (v < 32) throw new IllegalArgumentException("[CLIP] scales 最小值为 32，当前: " + v);
            result[i] = v;
        }
        return result;
    }

    /**
     * 借一个视觉 session；池空时阻塞等待归还，永不返回 null。
     */
    private OrtSession borrowVisionSession() throws OrtException {
        long tBorrow = System.nanoTime();
        OrtSession s;
        synchronized (VISION_POOL) {
            int waitCount = 0;
            while (VISION_POOL.isEmpty()) {
                waitCount++;
                if (waitCount == 1 || waitCount % 5 == 0) {
                    log.info("[CLIP 池] 等待 session，空池，当前 pool size={}，等待次数={}", VISION_POOL.size(), waitCount);
                }
                try {
                    VISION_POOL.wait();
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                    throw new OrtException("[CLIP] 等待 vision session 被中断");
                }
            }
            s = VISION_POOL.pollFirst();
        }
        long borrowNs = System.nanoTime() - tBorrow;
        noteBorrow();
        // 通过 ThreadLocal 传递 borrowWaitNs，给 runInference 累加到 diag[BORROW_WAIT]
        BORROW_NS_HOLDER.set(borrowNs);
        return s;
    }

    /**
     * 借出等待时间（每次借出时由 borrowVisionSession 写入）
     */
    private static final ThreadLocal<Long> BORROW_NS_HOLDER = ThreadLocal.withInitial(() -> 0L);

    private void returnVisionSession(OrtSession s) {
        if (s == null) return;
        synchronized (VISION_POOL) {
            VISION_POOL.addLast(s);
            VISION_POOL.notify();
        }
        noteReturn();
    }

    private static void noteBorrow() {
        int cur = CURRENT_BORROWED.incrementAndGet();
        int peak = PEAK_BORROWED.get();
        if (cur > peak) PEAK_BORROWED.set(cur);
    }

    private static void noteReturn() {
        CURRENT_BORROWED.decrementAndGet();
    }

    /**
     * 定时性能摘要：每 10 秒打一次。受 perf-log-enabled 控制；开关关掉则完全跳过。
     */
    private void maybeLogStats() {
        if (!perf.isEnabled()) return;
        long now = System.currentTimeMillis();
        long last = LAST_STATS_LOG_MS_HOLDER.get();
        if (now - last < STATS_LOG_INTERVAL_MS) return;
        if (!LAST_STATS_LOG_MS_HOLDER.compareAndSet(last, now)) return;
        perf.logSnapshot("已推理");
        log.info("[CLIP 池监控] 当前借出 {} | 峰值 {}", CURRENT_BORROWED.get(), PEAK_BORROWED.get());
    }

    private OrtSession.SessionOptions buildOpts(int sessionPoolSize) throws OrtException {
        EmbeddingProperties.ClipProperties clip = embeddingProps.getClip();
        // 通用部分已统一到 utils。CLIP 当前没有自己的额外 ONNX 选项。
        OrtSession.SessionOptions opts = FeatureExtractorUtils.buildOrtSessionOptions(
                log, "CLIP", embeddingProps.isBatchMode(),
                clip.getScales().size(), sessionPoolSize);
        opts.setOptimizationLevel(OrtSession.SessionOptions.OptLevel.ALL_OPT);
        return opts;
    }

    private void ensureModelFile(Path p, String tower) throws IOException {
        if (!Files.exists(p)) {
            throw new IOException(
                    "\n[CLIP] " + tower + "模型文件找不到: " + p.toAbsolutePath() + "\n" +
                            "[CLIP] 请检查 application.yml 中 embedding.clip." +
                            (tower.contains("视") ? "vision-model-path" : "text-model-path") + " 是否正确\n" +
                            "[CLIP] 也可以用 scripts\\download-clip-model.ps1 重新下载"
            );
        }
    }

    /**
     * 解析模型路径：yml 写啥就是啥。
     * 解析规则：
     * 1) 如果是绝对路径且文件存在，直接用
     * 2) 否则尝试 classpath: 相对路径（最常用：放在 src/main/resources/ 下随 JAR 分发）
     * 3) 否则尝试工作目录相对路径
     * 4) 都不存在就把原路径返回出去，由 ensureModelFile 抛具体错
     */
    private Path resolveModelPath(String configPath, String tower) {
        if (configPath == null || configPath.isEmpty()) {
            throw new IllegalArgumentException("[CLIP] " + tower + "模型路径未配置 (application.yml 里 embedding.clip." +
                    (tower.contains("视") ? "vision-model-path" : "text-model-path") + ")");
        }
        Path p = Paths.get(configPath);

        // 1) 绝对路径
        if (p.isAbsolute() && Files.exists(p)) {
            log.info("[CLIP] {}模型使用绝对路径: {}", tower, p);
            return p;
        }

        // 2) classpath（resources/ 下的文件随包打进 JAR，开发期在 target/classes/ 下能找到）
        try {
            String normalized = configPath.replace('\\', '/');
            var url = getClass().getClassLoader().getResource(normalized);
            if (url != null) {
                Path cp = Paths.get(url.toURI());
                log.info("[CLIP] {}模型使用 classpath: {}", tower, cp);
                return cp;
            }
        } catch (Exception ignored) {
        }

        // 3) 工作目录相对路径（IDE 启动时 working dir 通常是项目根）
        if (Files.exists(p)) {
            log.warn("[CLIP] {}模型使用工作目录相对路径: {}", tower, p.toAbsolutePath());
            return p.toAbsolutePath();
        }

        // 4) 找不到，把原路径返回出去报错
        return p.isAbsolute() ? p : p.toAbsolutePath();
    }

    @PreDestroy
    public void close() throws OrtException {
        log.info("[CLIP 关闭] 开始销毁 session 池，当前 pool size={}", VISION_POOL.size());
        synchronized (VISION_POOL) {
            OrtSession s;
            int count = 0;
            while ((s = VISION_POOL.pollFirst()) != null) {
                try {
                    s.close();
                    count++;
                } catch (Exception ignored) {
                }
            }
            log.info("[CLIP 关闭] 已销毁 {} 个 session，pool size={}", count, VISION_POOL.size());
        }
        if (textSession != null) textSession.close();
        if (env != null) env.close();
    }

    @Override
    public float[] extractFeature(File imageFile) throws IOException {
        return extractFeature(imageFile, null);
    }

    @Override
    public float[] extractFeature(InputStream inputStream) throws IOException {
        return extractFeature(inputStream, null);
    }

    @Override
    public float[] extractFeature(byte[] imageBytes) throws IOException {
        return extractFeature(imageBytes, null);
    }

    /**
     * 单图特征提取（可选：传入 ExecutorService 触发单图内多尺度并发）。
     *
     * <p>传入 executor 后，CLIP 的多个尺度 [192,224,256] 会并发提交到线程池，借不同 session
     * 真正并行推理。3 个尺度的总耗时 ≈ max(t_192, t_224, t_256) 而不是 sum。
     * session 池容量需 ≥ scales.length（默认 16 个 session，3 个尺度完全够用）。
     *
     * <p>executor == null 时退化为串行多尺度（保持与原行为一致）。
     */
    @Override
    public float[] extractFeature(File imageFile, ExecutorService exec) throws IOException {
        if (imageFile == null || !imageFile.exists() || imageFile.length() == 0) {
            throw new IOException("图像文件不可读 (不存在或为空): " + (imageFile == null ? "<null>" : imageFile.getAbsolutePath()));
        }
        BufferedImage img = ImageIO.read(imageFile);
        if (img == null) {
            throw new IOException("无法解码图像: " + imageFile.getAbsolutePath() + " (格式不支持或文件损坏)");
        }
        return extractFeatureFromBufferedImage(img, exec);
    }

    @Override
    public float[] extractFeature(InputStream inputStream, ExecutorService exec) throws IOException {
        BufferedImage img = ImageIO.read(inputStream);
        if (img == null) {
            throw new IOException("无法解码图像 (InputStream): 格式不支持或流已损坏");
        }
        return extractFeatureFromBufferedImage(img, exec);
    }

    @Override
    public float[] extractFeature(byte[] imageBytes, ExecutorService exec) throws IOException {
        return extractFeatureFromBufferedImage(
                ImageIO.read(new java.io.ByteArrayInputStream(imageBytes)), exec);
    }

    /**
     * 核心：把图片送进 CLIP ONNX 模型，取 [CLS] embedding，512 维
     * <p>
     * 预处理策略（可通过 embedding.clip.scales 配置）：
     * - 单尺度 224：标准的 CLIP center crop
     * - 多尺度如 224,256：每个尺度处理成 224×224 再进 ONNX，embedding 算术平均再 L2 归一化
     * * 224：标准尺度，和训练一致，基准参考
     * * 256：center crop 后保留更多细节纹理
     * - 比 crop 小的尺度（如 192）：resize 后不足 224 的部分用黑边居中 pad 到 224×224
     * <p>
     * 水平翻转增强（可通过 embedding.clip.hflip-enabled 启用）：
     * - 原图 + 水平翻转各跑一遍多尺度，取平均
     * - 消除 CLIP 对翻转图 embedding 的轻微扰动，约 +1~3% 召回
     * <p>
     * 线程安全：从 VISION_POOL 借一个 session → run → 归还到池里。
     * session 始终在 finally 里归还，路径异常也不会泄漏。
     * 多线程可同时调用本方法（互不竞争 session，每个 session 独立持有 native 状态）。
     *
     * @param scaleExecutor 可选：传入非空时启用"单图内多尺度并发"，N 个尺度借不同 session 并行推理。
     *                      session 池容量必须 ≥ scales.length，否则会因借不到 session 而退化为串行（仍能跑通）。
     */
    private float[] extractFeatureFromBufferedImage(BufferedImage image, ExecutorService scaleExecutor) throws IOException {
        if (image == null) {
            throw new IOException("图片读取失败");
        }
        if (!embeddingProps.getClip().isUseVision()) {
            throw new IOException("视觉塔未启用 (embedding.clip.use-vision=false)");
        }

        long tToRgb = System.nanoTime();
        BufferedImage rgb = toRgb(image);
        long toRgbNs = System.nanoTime() - tToRgb;
        long t0 = System.currentTimeMillis();
        // 五段诊断采样：perf.tryStartDiag() 内部已经按 DIAG_EVERY 命中，并自动受 perf-log-enabled 控制。
        long[] diag = perf.tryStartDiag();

        // 多尺度 + HFlip：先分别算出原图和翻转图的平均 embedding，再两者平均
        float[] embOriginal = null;
        float[] embFlipped = null;

        try {
            // 1) 原图多尺度平均
            embOriginal = runMultiScale(rgb, scaleExecutor, diag);
            int avgLen = embOriginal.length;

            // 2) 水平翻转多尺度平均（如果启用）—— HFlip 的耗时不再计入本张图的 diag（避免开 HFlip 时 diag 解读歧义）
            if (embeddingProps.getClip().isHflipEnabled()) {
                BufferedImage flipped = flipHorizontal(rgb);
                embFlipped = runMultiScale(flipped, scaleExecutor, null);
                if (embFlipped.length != avgLen) {
                    log.warn("[CLIP HFlip] 翻转图维度 {} 与原图 {} 不一致，跳过翻转增强", embFlipped.length, avgLen);
                } else {
                    // 原图和翻转图各占 50% 权重 —— 两边都不做中间归一化，最后整体 l2Normalize，
                    // 与"对每张图单独检索再 fusion"数学等价（最终归一化后再用余弦距离排序）。
                    for (int i = 0; i < avgLen; i++) {
                        embOriginal[i] = (embOriginal[i] + embFlipped[i]) * 0.5f;
                    }
                }
            }
            float[] result = l2Normalize(embOriginal);
            long totalMs = System.currentTimeMillis() - t0;
            // 性能摘要：单图总耗时
            if (perf.isEnabled()) {
                boolean hflip = embeddingProps.getClip().isHflipEnabled();
                log.info("[CLIP 单图] scales={} | hflip={} | dim={} | 耗时 {}ms",
                        Arrays.toString(scales), hflip, result.length, totalMs);
            }
            // 五段诊断（受 perf-log-enabled 控制）
            perf.logDiag(0, totalMs, toRgbNs / 1_000_000L, diag);
            return result;

        } catch (Exception e) {
            throw new IOException("CLIP 推理失败: " + e.getMessage(), e);
        }
    }

    /**
     * 对给定图片跑多尺度推理，返回 L2 归一化前的平均 embedding。
     * 尺度由 this.scales 配置决定。
     *
     * <p>并发策略（按调用方意图区分）：
     * <ul>
     *   <li>{@code scaleExecutor == null}：调用方是同步直接调用（典型场景：单图搜图，前端等结果）。
     *       走 {@link ForkJoinPool#commonPool()} 多尺度并发，单图耗时 ≈ max 而不是 sum。</li>
     *   <li>{@code scaleExecutor != null}：调用方正在把整批请求提交到一个池子里（典型场景：批量入库）。
     *       <b>强制走串行多尺度</b>。原因：外层池（如 feature-threads）已经塞满，再向它或 commonPool
     *       invokeAll 提交尺度子任务会与外层调度线程争资源，要么死锁、要么白白增加上下文切换和锁竞争，
     *       整体 throughput 反而下降。串行多尺度在这个场景下是最优解。</li>
     * </ul>
     *
     * @param scaleExecutor 非 null 表示"我在批量池里跑，请串行"；null 表示"我是孤立的单图调用，请并发加速"
     */
    private float[] runMultiScale(BufferedImage rgb, ExecutorService scaleExecutor) throws IOException {
        return runMultiScale(rgb, scaleExecutor, null);
    }

    /**
     * @param diag 可选五段诊断数组（[TO_RGB, RESIZE_CROP, PREP, RUN, BORROW_WAIT, FAIL_COUNT]）。
     *             当调用方需要本张图五段分解时传入；其余情况传 null，完全零开销
     *             （仅在 maybeLogStats 定时打性能摘要时无需 diag）。
     */
    private float[] runMultiScale(BufferedImage rgb, ExecutorService scaleExecutor, long[] diag) throws IOException {
        // 单尺度 → 串行（无并发收益）
        if (scales.length <= 1) {
            return runMultiScaleSerial(rgb, diag);
        }
        // 批量入库场景：调用方传了池子进来，强制串行多尺度
        if (scaleExecutor != null) {
            return runMultiScaleSerial(rgb, diag);
        }
        // 单图搜图场景：调用方没传池子，走 commonPool 多尺度并发
        ForkJoinPool pool = ForkJoinPool.commonPool();
        if (pool.getParallelism() < 2) {
            return runMultiScaleSerial(rgb, diag);
        }
        return runMultiScaleParallel(rgb);
    }

    private float[] runMultiScaleSerial(BufferedImage rgb) throws IOException {
        return runMultiScaleSerial(rgb, null);
    }

    /**
     * @param diag 五段诊断（可选）。槽位对齐 PerfRecorder 常量。
     */
    private float[] runMultiScaleSerial(BufferedImage rgb, long[] diag) throws IOException {
        int avgLen = -1;
        float[] avg = null;
        int validScales = 0;

        // 预分配 [1][3][224][224] float[]，三个尺度复用，避免每次 toChw 都 new float[150528]
        float[][][][] reuse = new float[1][3][IMG_SIZE][IMG_SIZE];

        for (int si = 0; si < scales.length; si++) {
            int targetShort = scales[si];
            int w = rgb.getWidth();
            int h = rgb.getHeight();
            int newW, newH;
            if (w < h) {
                newW = targetShort;
                newH = (int) Math.round((float) h * targetShort / w);
            } else {
                newH = targetShort;
                newW = (int) Math.round((float) w * targetShort / h);
            }
            long tResize = System.nanoTime();
            BufferedImage resized = resizeDirect(rgb, newW, newH);
            BufferedImage tensorInput;
            if (resized.getWidth() < IMG_SIZE || resized.getHeight() < IMG_SIZE) {
                tensorInput = padToSize(resized, IMG_SIZE, IMG_SIZE);
            } else {
                tensorInput = centerCrop(resized, IMG_SIZE, IMG_SIZE);
            }
            long resizeNs = System.nanoTime() - tResize;

            try {
                long[] infDiag = diag != null ? new long[3] : null;
                float[] emb = runInference(tensorInput, reuse, infDiag);
                if (diag != null) {
                    diag[PerfRecorder.RESIZE_CROP] += resizeNs / 1_000_000L;
                    diag[PerfRecorder.PREP] += infDiag[0];
                    diag[PerfRecorder.RUN] += infDiag[1];
                    diag[PerfRecorder.BORROW_WAIT] += infDiag[2];
                }
                if (avg == null) {
                    avgLen = emb.length;
                    avg = new float[avgLen];
                } else if (emb.length != avgLen) {
                    log.warn("[CLIP 多尺度] 尺度 {} 维度 {} 与首尺度 {} 不一致，跳过",
                            targetShort, emb.length, avgLen);
                    continue;
                }
                validScales++;
                float scale = 1.0f / scales.length;
                for (int i = 0; i < avgLen; i++) avg[i] += emb[i] * scale;
            } catch (OrtException e) {
                if (diag != null) diag[PerfRecorder.FAIL_COUNT]++;
                log.warn("[CLIP 多尺度] 尺度 {} 推理失败: {}", targetShort, e.getMessage());
            }
        }

        // 所有尺度都被 skip（极小图），用单尺度兜底
        if (avg == null || validScales == 0) {
            log.warn("[CLIP 多尺度] 所有尺度都不可用（原图 {}x{}），降级到单尺度", rgb.getWidth(), rgb.getHeight());
            return runSingleScaleFallback(rgb);
        }
        return avg;
    }

    /**
     * 多尺度并发：调用线程串行完成所有尺度的 resize/crop（输出 N 张 224×224 BufferedImage），
     * 然后 invokeAll 提交到 {@link ForkJoinPool#commonPool()} 跑 N 个 inference 任务。
     *
     * <p>此方法仅在调用方传 {@code null} 时进入（即单图搜图场景，请求方不在任何池里跑），
     * 用 JVM 全局 commonPool 即可，无需借用调用方的池。
     *
     * <p>守卫：单图并发任务数 > session 池容量时会因 borrowVisionSession 锁等待而退化为串行，
     * 所以 {@link #runMultiScale} 入口已经判过 pool parallelism，不够则不走此方法。
     */
    private float[] runMultiScaleParallel(BufferedImage rgb) throws IOException {
        int n = scales.length;

        // 1) 在调用线程里完成所有尺度的 resize/crop —— BufferedImage 共享给子任务只读使用
        BufferedImage[] tensorInputs = new BufferedImage[n];
        int[] targetShorts = new int[n];
        for (int si = 0; si < n; si++) {
            int targetShort = scales[si];
            targetShorts[si] = targetShort;
            int w = rgb.getWidth();
            int h = rgb.getHeight();
            int newW, newH;
            if (w < h) {
                newW = targetShort;
                newH = (int) Math.round((float) h * targetShort / w);
            } else {
                newH = targetShort;
                newW = (int) Math.round((float) w * targetShort / h);
            }
            BufferedImage resized = resizeDirect(rgb, newW, newH);

            // 比 crop 小的尺度：pad 黑边到 224×224 再进 ONNX
            if (resized.getWidth() < IMG_SIZE || resized.getHeight() < IMG_SIZE) {
                tensorInputs[si] = padToSize(resized, IMG_SIZE, IMG_SIZE);
            } else {
                tensorInputs[si] = centerCrop(resized, IMG_SIZE, IMG_SIZE);
            }
        }

        // 2) 提交到 ForkJoinPool.commonPool：每个任务自己借一个 session，跑一个尺度
        //    注意：每个任务要自己 NEW 自己的 [1][3][224][224] float[][][][] 复用 buffer，
        //    不能共享（否则多线程同时写入会数据竞争）。
        List<java.util.concurrent.Callable<float[]>> tasks = new ArrayList<>(n);
        for (int si = 0; si < n; si++) {
            final int idx = si;
            tasks.add(() -> {
                float[][][][] reuse = new float[1][3][IMG_SIZE][IMG_SIZE];
                return runInference(tensorInputs[idx], reuse);
            });
        }

        int avgLen = -1;
        float[] avg = null;
        int validScales = 0;
        long t0 = System.currentTimeMillis();
        try {
            // 单图搜图场景下的多尺度并发加速：3 个尺度的 ONNX 推理并行执行，单图耗时 ≈ max 而不是 sum。
            // 走 commonPool 而非调用方传入的池，因为调用方传 null（即"我不在任何池里跑"），
            // 没有任何"调用方所在的外层池"可以借用，只能用 JVM 全局的 commonPool。
            List<java.util.concurrent.Future<float[]>> futures = ForkJoinPool.commonPool().invokeAll(tasks);
            for (int si = 0; si < futures.size(); si++) {
                float[] emb;
                try {
                    emb = futures.get(si).get();
                } catch (java.util.concurrent.ExecutionException e) {
                    log.warn("[CLIP 多尺度并发] 尺度 {} 推理失败: {}", targetShorts[si],
                            e.getCause() != null ? e.getCause().getMessage() : e.getMessage());
                    continue;
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                    throw new IOException("CLIP 多尺度并发被中断", e);
                }
                if (avg == null) {
                    avgLen = emb.length;
                    avg = new float[avgLen];
                } else if (emb.length != avgLen) {
                    log.warn("[CLIP 多尺度并发] 尺度 {} 维度 {} 与首尺度 {} 不一致，跳过",
                            targetShorts[si], emb.length, avgLen);
                    continue;
                }
                validScales++;
                float scale = 1.0f / n;
                for (int i = 0; i < avgLen; i++) avg[i] += emb[i] * scale;
            }
            log.error("[CLIP 多尺度并发] scales={} | 总等待 {}ms | 有效 {}/{}",
                    Arrays.toString(scales), System.currentTimeMillis() - t0, validScales, n);
        } catch (Exception e) {
            Thread.currentThread().interrupt();
            throw new IOException("CLIP 多尺度并发被中断", e);
        }

        if (avg == null || validScales == 0) {
            log.warn("[CLIP 多尺度并发] 所有尺度都不可用，降级到单尺度串行");
            return runSingleScaleFallback(rgb);
        }
        return avg;
    }

    /**
     * 用 session 跑一次推理，内部复用 reuse 缓冲区避免反复分配
     * <p>
     * perf 计时：累加到 PerfRecorder。
     */
    private float[] runInference(BufferedImage tensorInput, float[][][][] reuse) throws OrtException {
        return runInference(tensorInput, reuse, null);
    }

    /**
     * @param diag 诊断输出 [0]=prep累加 [1]=run累加 [2]=borrowWait累加（毫秒）。null 时不打诊断。
     *             实际 borrowWait 是在 borrowVisionSession 内部计时的（要进入 synchronized 块前），
     *             这里从 BORROW_NS_HOLDER 读出来。
     */
    private float[] runInference(BufferedImage tensorInput, float[][][][] reuse, long[] diag) throws OrtException {
        // 借出等待时间由 borrowVisionSession 写入；>1ms 才计入诊断（避免 0.0x ms 的虚假精度）
        if (diag != null) {
            long borrowNs = BORROW_NS_HOLDER.get();
            if (borrowNs > 1_000_000L) {
                diag[2] += borrowNs / 1_000_000L;
            }
        }
        OrtSession session = borrowVisionSession();
        try {
            long tPrep = System.nanoTime();
            toChwReuse(tensorInput, reuse);
            long prepNs = System.nanoTime() - tPrep;
            long tRun = System.nanoTime();
            try (OnnxTensor tensor = OnnxTensor.createTensor(env, reuse)) {
                Map<String, OnnxTensor> inputs = Collections.singletonMap("pixel_values", tensor);
                try (OrtSession.Result result = session.run(inputs)) {
                    long runNs = System.nanoTime() - tRun;
                    perf.record(prepNs, runNs);
                    maybeLogStats();
                    if (diag != null) {
                        diag[0] += prepNs / 1_000_000L;
                        diag[1] += runNs / 1_000_000L;
                    }
                    return extractFirstRow(result.get(0).getValue());
                }
            }
        } finally {
            returnVisionSession(session);
        }
    }

    /**
     * 极小图兜底：直接预处理成 224x224 单尺度推理
     */
    private float[] runSingleScaleFallback(BufferedImage image) throws IOException {
        try {
            float[][][][] chw = preprocess(image);
            OrtSession session = borrowVisionSession();
            long tRun = System.nanoTime();
            try (OnnxTensor tensor = OnnxTensor.createTensor(env, chw)) {
                Map<String, OnnxTensor> inputs = Collections.singletonMap("pixel_values", tensor);
                try (OrtSession.Result result = session.run(inputs)) {
                    long runNs = System.nanoTime() - tRun;
                    // 极小图兜底没有显式 prep 时长（preprocess 整段一体），这里统一记入 prep。
                    perf.record(runNs, runNs);
                    maybeLogStats();
                    return extractFirstRow(result.get(0).getValue());
                }
            }
        } catch (OrtException e) {
            throw new IOException("CLIP 推理失败: " + e.getMessage(), e);
        }
    }

    /**
     * 水平翻转：创建一张新的 BufferedImage，像素左右镜像。
     * <p>
     * 用 {@code getRGB} / {@code setRGB} 一次性取出整图 int[]，原地翻转，再用 {@code setRGB} 一次性写回。
     * <p>
     * 为什么不复用 {@code Raster.getPixels/setPixels}：{@code SinglePixelPackedSampleModel} 在某些
     * ColorModel 下对 {@code setPixels(int[])} 严格按 {@code w*h} 校验，但传入 array 长度刚好匹配时
     * 在 TYPE_INT_RGB 上能正常工作。{@code getRGB/setRGB} 是更通用的高层 API，不依赖 SampleModel，
     * 不易触发 {@code Coordinate out of bounds}（参考 {@code padToSize} 的踩坑记录）。
     * <p>
     * 为什么不用老版本的 {@code Graphics2D.drawImage(src, w, 0, -w, h, null)}：水平镜像管线会引入
     * 1~2 LSB 像素偏移，对 CLIP embedding 影响 1e-3 量级余弦距离。这里走纯像素操作，0 偏移。
     */
    private static BufferedImage flipHorizontal(BufferedImage src) {
        int w = src.getWidth();
        int h = src.getHeight();
        BufferedImage out = new BufferedImage(w, h, BufferedImage.TYPE_INT_RGB);
        int[] pixels = src.getRGB(0, 0, w, h, null, 0, w);
        // 整图水平翻转：每行内 [i] ↔ [w-1-i]
        for (int y = 0; y < h; y++) {
            int rowStart = y * w;
            int rowEnd = rowStart + w - 1;
            while (rowStart < rowEnd) {
                int t = pixels[rowStart];
                pixels[rowStart] = pixels[rowEnd];
                pixels[rowEnd] = t;
                rowStart++;
                rowEnd--;
            }
        }
        out.setRGB(0, 0, w, h, pixels, 0, w);
        return out;
    }

    /**
     * 把 cropped 224x224 BufferedImage 转成 [1][3][224][224] float
     * 用 Raster.getPixels() 一次性把整张图读进 int[]，省掉 BufferedImage.getRGB 的越界检查/重载分发。
     */
    private static float[][][][] toChw(BufferedImage cropped) {
        final int cw = cropped.getWidth();
        final int ch = cropped.getHeight();
        int[] pixels = cropped.getRaster().getPixels(0, 0, cw, ch, (int[]) null);
        float[][][][] data = new float[1][3][ch][cw];
        int idx = 0;
        for (int y = 0; y < ch; y++) {
            for (int x = 0; x < cw; x++) {
                int px = pixels[idx++];
                float r = ((px >> 16) & 0xFF) / 255f;
                float g = ((px >> 8) & 0xFF) / 255f;
                float b = (px & 0xFF) / 255f;
                data[0][0][y][x] = (r - MEAN[0]) / STD[0];
                data[0][1][y][x] = (g - MEAN[1]) / STD[1];
                data[0][2][y][x] = (b - MEAN[2]) / STD[2];
            }
        }
        return data;
    }

    /**
     * 复用外部传入的 [1][3][224][224] float[][][][]，原地写入 pixel 值。
     * 三个尺度调用共复用一块内存，消除 3 × 150528 floats ≈ 1.8MB 的 GC 压力。
     * <p>
     * 用 Raster.getPixels() 一次性把整张图读进 int[]（JNI 调用从 224 次降到 1 次）。
     * <p>
     * 关键：{@code tensorInput} 必须是 {@code PHYSICAL} 复制的 BufferedImage，不能是
     * {@code getSubimage()} 视图 —— 因为父 raster 的 scanline stride 可能不是 {@code w*h}，
     * 直接 {@code getPixels} 会读到错位像素（旧版 bug：召回率"几何式下降"的根因）。
     */
    private static void toChwReuse(BufferedImage cropped, float[][][][] reuse) {
        final int cw = cropped.getWidth();
        final int ch = cropped.getHeight();
        int[] pixels = cropped.getRaster().getPixels(0, 0, cw, ch, (int[]) null);
        int idx = 0;
        for (int y = 0; y < ch; y++) {
            for (int x = 0; x < cw; x++) {
                int px = pixels[idx++];
                float r = ((px >> 16) & 0xFF) / 255f;
                float g = ((px >> 8) & 0xFF) / 255f;
                float b = (px & 0xFF) / 255f;
                reuse[0][0][y][x] = (r - MEAN[0]) / STD[0];
                reuse[0][1][y][x] = (g - MEAN[1]) / STD[1];
                reuse[0][2][y][x] = (b - MEAN[2]) / STD[2];
            }
        }
    }

    /**
     * CLIP 标准预处理：
     * 1. 转 RGB（去 alpha）
     * 2. 等比例 resize，短边缩到 256
     * 3. CenterCrop 到 224x224（物理复制，避免子图视图的 raster stride 问题）
     * 4. 转 float32 [0,1]，CLIP mean/std 归一化
     * 5. NCHW → [1][3][224][224]
     */
    private float[][][][] preprocess(BufferedImage src) {
        BufferedImage rgb = toRgb(src);

        // 等比例 resize：短边 → 256，保持长宽比
        int w = rgb.getWidth();
        int h = rgb.getHeight();
        int targetShort = 256;
        int newW, newH;
        if (w < h) {
            newW = targetShort;
            newH = (int) Math.round((float) h * targetShort / w);
        } else {
            newH = targetShort;
            newW = (int) Math.round((float) w * targetShort / h);
        }
        // [精度优化] CLIP 官方训练时用 BICUBIC；BILINEAR 会对细节做"过度平滑"，CLIP-ViT 对这种偏移
        // 比较敏感（embedding 的 LSB 偏移会传播到 attention）。改成 BICUBIC 与训练对齐。
        BufferedImage resized = resize(rgb, newW, newH, RenderingHints.VALUE_INTERPOLATION_BICUBIC);

        // CenterCrop 到 224x224（物理复制）
        BufferedImage cropped = centerCrop(resized, IMG_SIZE, IMG_SIZE);

        // 转 float + 归一化（一次性整图读像素，避免逐点 getRGB）
        int cw = cropped.getWidth();
        int ch = cropped.getHeight();
        float[][][][] data = new float[1][3][ch][cw];
        int[] pixels = cropped.getRaster().getPixels(0, 0, cw, ch, (int[]) null);
        int idx = 0;
        for (int y = 0; y < ch; y++) {
            for (int x = 0; x < cw; x++) {
                int px = pixels[idx++];
                float r = ((px >> 16) & 0xFF) / 255f;
                float g = ((px >> 8) & 0xFF) / 255f;
                float b = (px & 0xFF) / 255f;
                data[0][0][y][x] = (r - MEAN[0]) / STD[0];
                data[0][1][y][x] = (g - MEAN[1]) / STD[1];
                data[0][2][y][x] = (b - MEAN[2]) / STD[2];
            }
        }
        return data;
    }

    /**
     * CenterCrop：物理复制实现 —— 输出独立 BufferedImage，不共享父 raster。
     * <p>
     * 用 {@code BufferedImage.getRGB/setRGB} 高层 API 完成内存拷贝。
     * <p>
     * 为什么不直接用 {@code getSubimage}：那是父 raster 的视图，scanline stride 等于父图宽。
     * 后续 {@code Raster.getPixels} 在某些 JDK 下会按父图 stride 而不是子图 stride 读像素，
     * 实际读出来的是"父图左上角"而非"中心 crop 区域" —— 视觉语义完全错位，召回率断崖下跌。
     * <p>
     * 为什么不用 Graphics2D.drawImage 走"区域 → 区域"复制：Graphics2D 会引入插值和颜色管理，
     * 即使源和目标像素 1:1 一致，输出像素也会被轻微偏移（典型 1~2 个 LSB），
     * 余弦距离因此下降 1e-3 量级，召回明显变差。
     * <p>
     * 为什么不用 {@code Raster.getPixels/setPixels}：{@code SinglePixelPackedSampleModel.setPixels}
     * 在某些源 BufferedImage 上报 {@code Coordinate out of bounds}（参考 {@code padToSize} 踩坑），
     * {@code getRGB/setRGB} 是高层通用 API 不依赖 SampleModel，最稳。
     */
    private static BufferedImage centerCrop(BufferedImage src, int targetW, int targetH) {
        int w = src.getWidth();
        int h = src.getHeight();
        if (w == targetW && h == targetH) {
            return src;
        }
        int x = Math.max(0, (w - targetW) / 2);
        int y = Math.max(0, (h - targetH) / 2);
        int cw = Math.min(targetW, w);
        int ch = Math.min(targetH, h);
        BufferedImage out = new BufferedImage(targetW, targetH, BufferedImage.TYPE_INT_RGB);
        if (cw > 0 && ch > 0) {
            int[] pixels = src.getRGB(x, y, cw, ch, null, 0, cw);
            out.setRGB(0, 0, cw, ch, pixels, 0, cw);
        }
        return out;
    }

    /**
     * Pad 黑边到 targetW × targetH：resized 居中放置，周围黑边填充。
     * <p>
     * 关键边界：resized 可能比 targetW/targetH **大或小**。原版只考虑小的场景；
     * 当 resized 一边 > target（如 192×384）、另一边 < 224 时，单纯 pad 会让 offX 或 offY 变负，
     * 触发 {@code IntegerInterleavedRaster.setDataElements} 的 {@code Coordinate out of bounds}。
     * 因此这里：
     * <ol>
     *   <li>先按"短边 ≤ target" 的中心区域裁剪 resized（如果它长边 > target），得到一个
     *       不超过 targetW × targetH 的中间图；</li>
     *   <li>再把这个中间图居中贴到 targetW × targetH 的黑底上 —— 黑边区域用 0xFF000000 填充。</li>
     * </ol>
     * <p>
     * [精度] 整段不走 {@code Graphics2D.drawImage}，避开 sRGB 色彩管理引入的 ±1 LSB 偏移。
     * 纯像素拷贝，0 LSB 偏移。
     * <p>
     * [性能] 一次 getPixels + 一次 setPixels，中间不做色彩管理、不做插值。
     */
    private static BufferedImage padToSize(BufferedImage resized, int targetW, int targetH) {
        int w = resized.getWidth();
        int h = resized.getHeight();

        // 步骤 1：把 resized 裁到 ≤ target × target 的中心区域
        //         （如果某边 > target，按短边比例 centerCrop 到不超出 target）
        int cropW = Math.min(w, targetW);
        int cropH = Math.min(h, targetH);
        int srcX = (w - cropW) / 2;
        int srcY = (h - cropH) / 2;
        int[] pixels = resized.getRGB(srcX, srcY, cropW, cropH, null, 0, cropW);

        // 步骤 2：写黑底 + 把 pixels 居中贴上去
        BufferedImage out = new BufferedImage(targetW, targetH, BufferedImage.TYPE_INT_RGB);
        int total = targetW * targetH;
        int[] blackPixels = new int[total];
        Arrays.fill(blackPixels, 0xFF000000);
        out.setRGB(0, 0, targetW, targetH, blackPixels, 0, targetW);

        int offX = (targetW - cropW) / 2;
        int offY = (targetH - cropH) / 2;
        if (cropW > 0 && cropH > 0) {
            out.setRGB(offX, offY, cropW, cropH, pixels, 0, cropW);
        }
        return out;
    }

    /**
     * 把任意类型的 BufferedImage 转成 {@code TYPE_INT_RGB}。
     * <p>
     * [精度关键] 不走 {@code Graphics2D.drawImage}：即便源不带 alpha，Graphics2D
     * 仍会过 sRGB 色彩管理，引入 ±1 LSB 像素偏移。改用 {@code getRGB}+{@code setRGB}
     * 高层 API 做跨色彩模型的逐像素拷贝 —— TYPE_3BYTE_BGR / TYPE_4BYTE_ABGR / TYPE_CUSTOM
     * 等情形都能在内核层完成通道顺序重排，0 LSB 偏移。
     * <p>
     * 已经是 {@code TYPE_INT_RGB} 的图直接返回（不做拷贝）。
     */
    private static BufferedImage toRgb(BufferedImage img) {
        if (img.getType() == BufferedImage.TYPE_INT_RGB) return img;
        int w = img.getWidth();
        int h = img.getHeight();
        BufferedImage out = new BufferedImage(w, h, BufferedImage.TYPE_INT_RGB);
        int[] pixels = img.getRGB(0, 0, w, h, null, 0, w);
        out.setRGB(0, 0, w, h, pixels, 0, w);
        return out;
    }

    /**
     * 通用 resize，支持多种插值算法。
     * 直接用 Graphics2D.drawImage(src, 0, 0, w, h, null) 让 AWT 自己选高质量缩放路径，
     * 避免 Image.getScaledInstance 的多级中间缓冲（其内部会构造 1/2、1/4... 多份临时图，开销大且不可控）。
     * 数值上等价：BILINEAR/BICUBIC 都是确定的像素插值，无随机性。
     */
    private static BufferedImage resize(BufferedImage src, int w, int h, Object interpolation) {
        BufferedImage out = new BufferedImage(w, h, BufferedImage.TYPE_INT_RGB);
        Graphics2D g = out.createGraphics();
        try {
            g.setRenderingHint(RenderingHints.KEY_INTERPOLATION, interpolation);
            g.setRenderingHint(RenderingHints.KEY_RENDERING, RenderingHints.VALUE_RENDER_QUALITY);
            g.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);
            g.drawImage(src, 0, 0, w, h, null);
        } finally {
            g.dispose();
        }
        return out;
    }

    /**
     * 多尺度循环专用 resize：固定 BILINEAR，直接传参绕开 RenderingHints 查找。
     * 相比 resize() 少一次 RenderingHints HashMap 的 get() 操作。
     */
    private static BufferedImage resizeDirect(BufferedImage src, int w, int h) {
        BufferedImage out = new BufferedImage(w, h, BufferedImage.TYPE_INT_RGB);
        Graphics2D g = out.createGraphics();
        try {
            // [精度优化] CLIP 训练时用 BICUBIC；与训练对齐比性能更重要（ViT attention 对像素偏移敏感）
            g.setRenderingHint(RenderingHints.KEY_INTERPOLATION,
                    RenderingHints.VALUE_INTERPOLATION_BICUBIC);
            g.drawImage(src, 0, 0, w, h, null);
        } finally {
            g.dispose();
        }
        return out;
    }

    /**
     * 从 ONNX 输出 (可能是 float[][] 或 ArrayList) 里取出第一个向量
     * ONNX Runtime Java 的输出包装形态有 3 种：
     * - float[][]                 (2D: [batch, dim])
     * - Object[] / List<float[]>  (1D: [batch] -> float[])
     * - float[][][] / List&lt;List&lt;float[]&gt;&gt;  (3D，理论上有，CLIP 不会出)
     */
    private static float[] extractFirstRow(Object output) {
        if (output instanceof float[][] arr) {
            return arr[0];
        }
        if (output instanceof List<?> list) {
            if (list.isEmpty()) {
                throw new IllegalStateException("ONNX 输出 List 为空");
            }
            Object row = list.get(0);
            if (row instanceof float[] fr) return fr;
            if (row instanceof Number n) {
                // 退化情况：List&lt;Float&gt; 而不是 List&lt;float[]&gt;
                float[] out = new float[list.size()];
                for (int i = 0; i < list.size(); i++) {
                    out[i] = ((Number) list.get(i)).floatValue();
                }
                return out;
            }
        }
        if (output instanceof Object[] arr) {
            Object row = arr[0];
            if (row instanceof float[] fr) return fr;
            if (row instanceof Object[] inner) {
                float[] out = new float[inner.length];
                for (int i = 0; i < inner.length; i++) {
                    out[i] = ((Number) inner[i]).floatValue();
                }
                return out;
            }
        }
        throw new IllegalStateException("未知的 ONNX 输出类型: " + output.getClass());
    }

    /**
     * [A 头探测] 启动期跑一次 dummy 输入，把每个输出头的 shape / 维度 / 长度打出来。
     * 用来判断：
     * 1) 输出头是 image_embeds（512 投影后） 还是 vision_model（768 投影前）
     * 2) 当前代码 extractFirstRow 路径能不能正确取出
     * <p>
     * 不会修改任何状态，不写库、不入库；只打日志。
     */
    private void probeVisionHeads(OrtSession session) {
        try {
            log.info("[CLIP 头探测] 启动期探测视觉塔所有输出头 ...");
            // 1) 准备 0.5 噪声输入 [1][3][224][224]
            float[][][][] dummy = new float[1][3][IMG_SIZE][IMG_SIZE];
            int plane = IMG_SIZE * IMG_SIZE;
            for (int c = 0; c < 3; c++) {
                float v = (0.5f - MEAN[c]) / STD[c];
                for (int i = 0; i < plane; i++) {
                    dummy[0][c][i / IMG_SIZE][i % IMG_SIZE] = v;
                }
            }
            // 2) 跑
            try (OnnxTensor tensor = OnnxTensor.createTensor(env, dummy)) {
                Map<String, OnnxTensor> inputs = Collections.singletonMap("pixel_values", tensor);
                try (OrtSession.Result result = session.run(inputs)) {
                    // 3) 遍历所有输出头
                    for (Iterator<Map.Entry<String, OnnxValue>> it = result.iterator(); it.hasNext(); ) {
                        Map.Entry<String, OnnxValue> e = it.next();
                        String name = e.getKey();
                        OnnxValue ov = e.getValue();
                        if (!(ov instanceof OnnxTensor ot)) continue;
                        long[] shape = ot.getInfo().getShape();
                        Object val = ot.getValue();
                        int dim = -1;
                        String type = "?";
                        if (val instanceof float[][] arr) {
                            type = "float[][]";
                            dim = arr.length > 0 ? arr[0].length : -1;
                        } else if (val instanceof List<?> list) {
                            type = "List";
                            if (!list.isEmpty()) {
                                Object row = list.get(0);
                                if (row instanceof float[] fr) dim = fr.length;
                                else if (row instanceof Number) dim = list.size();
                                else if (row instanceof List<?> inner) dim = inner.size();
                            }
                        } else if (val instanceof Object[] arr) {
                            type = "Object[]";
                            if (arr.length > 0 && arr[0] instanceof float[] fr) dim = fr.length;
                        }
                        log.info("[CLIP 头探测]   {}  shape={}  type={}  dim={}",
                                name, Arrays.toString(shape), type, dim);
                    }
                    // 4) 给出判定结论
                    OnnxValue imgOv = null;
                    try {
                        imgOv = result.get("image_embeds").get();
                    } catch (Exception ignored) {
                    }
                    if (imgOv instanceof OnnxTensor ot) {
                        Object v = ot.getValue();
                        int d = (v instanceof float[][] a) ? a[0].length
                                : (v instanceof List<?> l && !l.isEmpty() && l.get(0) instanceof float[] fr) ? fr.length
                                  : -1;
                        if (d == 512) {
                            log.info("[CLIP 头探测] ✅  找到 image_embeds[512] —— 当前代码 result.get(0) 拿到的是 [0]号输出头。"
                                    + "若 [0] = image_embeds，512 维投影后特征，OK；若 [0] = logits_per_image (1,768)，那你的代码在错读 logits！");
                        } else if (d == 768) {
                            log.warn("[CLIP 头探测] ⚠️  image_embeds 是 768 维 —— 模型可能是 ViT-L 而不是 ViT-B，需要把 FEATURE_DIM 改成 768。");
                        }
                    } else {
                        log.warn("[CLIP 头探测] ❌  没有 image_embeds 输出头 —— 导出的 ONNX 漏了 visual_projection！"
                                + "result.get(0) 拿到的是 last_hidden_state [1,50,768]，会被当 512 维乱读 -> 检索严重失准。"
                                + "修复：换带 projection 头的 ONNX，或在 Java 里加 768->512 投影层。");
                    }
                    // 5) [维度一致性校验] 用真实推理长度 vs yml 配置的 feature-dim
                    int realDim = -1;
                    for (Iterator<Map.Entry<String, OnnxValue>> it = result.iterator(); it.hasNext(); ) {
                        Map.Entry<String, OnnxValue> e = it.next();
                        OnnxValue ov = e.getValue();
                        if (!(ov instanceof OnnxTensor ot2)) continue;
                        Object val = ot2.getValue();
                        int d = -1;
                        if (val instanceof float[][] arr && arr.length > 0) d = arr[0].length;
                        else if (val instanceof List<?> list && !list.isEmpty() && list.get(0) instanceof float[] fr)
                            d = fr.length;
                        if (d > realDim) realDim = d;
                    }
                    log.info("[CLIP 头探测] yml.feature-dim = {} | 推理输出最大维度 = {}",
                            embeddingProps.getClip().getFeatureDim(), realDim);
                    if (realDim > 0 && realDim != embeddingProps.getClip().getFeatureDim()) {
                        throw new IllegalStateException(String.format(
                                "[CLIP] 维度不一致！application.yml 里 embedding.clip.feature-dim=%d，但模型实际输出维度=%d。%n"
                                        + "[CLIP] Milvus collection 的 dim 字段必须与 feature-dim 一致，否则会 0 召回。%n"
                                        + "[CLIP] 修复方法：%n"
                                        + "  1) 修改 application.yml 的 embedding.clip.feature-dim=%d%n"
                                        + "  2) 删除已有 collection（schema 已锁），重新建表%n"
                                        + "  3) 重新入库所有图片",
                                embeddingProps.getClip().getFeatureDim(), realDim, realDim));
                    }
                    log.info("[CLIP 头探测] ✅ 维度校验通过：feature-dim={} 与推理输出一致",
                            embeddingProps.getClip().getFeatureDim());
                }
            }
        } catch (Exception e) {
            log.error("[CLIP 头探测] 探测失败，不影响主流程", e);
        }
    }

    private static float[] l2Normalize(float[] v) {
        float sum = 0;
        for (float f : v) sum += f * f;
        float norm = (float) Math.sqrt(sum);
        if (norm == 0) return v;
        float[] out = new float[v.length];
        for (int i = 0; i < v.length; i++) out[i] = v[i] / norm;
        return out;
    }

    @Override
    public int getFeatureDim() {
        return embeddingProps.getClip().getFeatureDim();
    }

    /**
     * 打印并清零本次会话的特征提取性能统计。
     * 由调用方（如 MilvusService）在一批完成后调用，避免与进程级计数混淆。
     * <p>
     * 受 {@code embedding.perf-log-enabled} 控制；关闭时直接跳过，perf 内部依然累计耗时。
     */
    public void logAndResetPerf(String tag) {
        perf.logAndReset(tag);
    }
}
