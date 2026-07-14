package com.lz.framework.vector.core.feature;

import ai.onnxruntime.OrtException;
import ai.onnxruntime.OrtSession;
import org.slf4j.Logger;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

/**
 * 三个视觉 extractor（CLIP / SigLIP / DINOv2）共享的、与具体模型无关的小工具方法。
 * <p>
 * 抽取原则：<b>只放逻辑完全等价的方法</b>（如 toRgb / l2Normalize / parseScales）。
 * 任何与具体 extractor 状态绑定的差异化逻辑（如 Dino 的 diag 诊断通道、CLIP 的特殊
 * resize 插值、SigLIP 的会话池类型）<b>不抽</b>，保留在各 extractor 内部维护。
 * 只需要抽取与集体模型算法不相关的，算法不抽取，每个模型不一样，防止调试时改动一处代码其他模型逻辑也改变了
 * <p>
 * 与 {@link ImagePreprocessor} 的区别：
 * <ul>
 *   <li>ImagePreprocessor：图片像素级处理（pad / crop / resize）</li>
 *   <li>FeatureExtractorUtils：图片之外的杂项（IO、归一化、路径解析、模型校验）</li>
 * </ul>
 */
final class FeatureExtractorUtils {

    private FeatureExtractorUtils() {
    }


    /**
     * 解析模型路径：yml 写啥就是啥，按优先级尝试四种来源。
     * 1) 绝对路径且存在 → 直接用
     * 2) classpath 相对路径（resources/ 下随 JAR 分发）
     * 3) 工作目录相对路径
     * 4) 都不存在 → 返回原路径，由调用方决定抛错文案
     *
     * @param configPath yml 里的路径
     * @param tower      "视觉塔" / "文本塔" / "DINOv2" 等，仅用于日志
     * @param modelTag   日志前缀，如 [DINO] / [CLIP] / [SigLIP]
     */
    static Path resolveModelPath(String configPath, String tower, String modelTag, Class<?> cls) {
        if (configPath == null || configPath.isEmpty()) {
            throw new IllegalArgumentException("[" + modelTag + "] " + tower + "模型路径未配置");
        }
        Path p = Paths.get(configPath);

        if (p.isAbsolute() && Files.exists(p)) {
            return p;
        }

        try {
            String normalized = configPath.replace('\\', '/');
            var url = cls.getClassLoader().getResource(normalized);
            if (url != null) {
                return Paths.get(url.toURI());
            }
        } catch (Exception ignored) {
        }

        if (Files.exists(p)) {
            return p.toAbsolutePath();
        }

        return p.isAbsolute() ? p : p.toAbsolutePath();
    }

    /**
     * 校验模型文件存在；不存在抛带具体路径的 IOException。
     * 通用部分（路径检查 + 文件未找到提示）。<b>不抽</b> yml 字段名 / 下载链接这种 extractor-specific 提示，
     * 由各 extractor 在 catch 块自己再包一层。
     */
    static void ensureModelFileExists(Path p) throws IOException {
        if (!Files.exists(p)) {
            throw new IOException("模型文件找不到: " + p.toAbsolutePath());
        }
    }


    /**
     * 三个视觉 extractor（CLIP / SigLIP / DINOv2）共用的 ONNX SessionOptions 构造。
     * <p>
     * 抽取范围（<b>与具体模型无关的等价部分</b>）：
     * <ol>
     *   <li>intraOp 计算公式：{@code max(scales * 2, cpuCores / sessionPoolSize)}，batch-mode 时固定为 1</li>
     *   <li>{@code setOptimizationLevel(ALL_OPT)} + {@code setIntraOpNumThreads} + {@code setInterOpNumThreads}</li>
     *   <li>启动期 batch-mode / cpuCores / pool 日志</li>
     * </ol>
     * <b>不抽的部分</b>（保留在 caller）：
     * <ul>
     *   <li>SigLIP 独有的 {@code setExecutionMode(SEQUENTIAL)}</li>
     *   <li>任何模型特定的 OptLevel / memory arena / cuda 设置</li>
     * </ul>
     *
     * @param log             extractor 自己的 slf4j logger（保证日志源仍是各 extractor 类）
     * @param modelTag        日志前缀，如 "DINO" / "CLIP" / "SigLIP"
     * @param batchMode       {@code embedding.batch-mode}，true 时 intraOp=1
     * @param scaleCount      yml 里 scales 数量（用于 {@code scales * 2} 上限）
     * @param sessionPoolSize session 池容量，用于 cpuCores / pool 的分流
     */
    static OrtSession.SessionOptions buildOrtSessionOptions(Logger log, String modelTag,
                                                            boolean batchMode,
                                                            int scaleCount,
                                                            int sessionPoolSize) {
        OrtSession.SessionOptions opts = new OrtSession.SessionOptions();
        int intraOp;
        int cpuCores = Runtime.getRuntime().availableProcessors();
        if (batchMode) {
            // 批量入库模式：IntraOp=1，让 session 走单线程、不抢 CPU；
            // N 张图并发时整体 CPU 占用可控，每个 session 排队等待本身不会变慢。
            intraOp = 1;
            log.info("[{} 启动] batch-mode=true → IntraOp=1（批量友好，避免抢 CPU）", modelTag);
        } else {
            // 单图搜图模式：让 session 内部多线程榨干 CPU。
            // 关键：不能超过"session 池同时全借出时的总线程数 ≤ CPU 物理核数"。
            // 否则上下文切换和锁竞争反而拖慢每张图。
            int idealIntra = Math.max(1, cpuCores / Math.max(1, sessionPoolSize));
            // 还要兼容"pool < CPU" 的情况（少数高性能场景，每个 session 多核）
            // 可以使用多个线程，因为只是查询一张图
            intraOp = Math.max(scaleCount * 2, idealIntra);
            log.info("[{} 启动] batch-mode=false → IntraOp={}（cpuCores={}，pool={}）",
                    modelTag, intraOp, cpuCores, sessionPoolSize);
        }
        try {
            opts.setOptimizationLevel(OrtSession.SessionOptions.OptLevel.ALL_OPT);
            opts.setIntraOpNumThreads(intraOp);
            // InterOp>1 在 ViT 链上收益 < 2%，但线程切换成本反而增加；统一跟随 intra。
            // [精度优化] InterOp 固定为 1：ViT forward 是严格顺序的 transformer 链（layer N 必须等 layer N-1 完成），
            // interOp > 1 不会带来收益（NNgraph 没有可并行的子图切分），反而增加线程切换和锁竞争。
            opts.setInterOpNumThreads(intraOp);
        } catch (OrtException e) {
            throw new RuntimeException(e);
        }
        return opts;
    }
}
