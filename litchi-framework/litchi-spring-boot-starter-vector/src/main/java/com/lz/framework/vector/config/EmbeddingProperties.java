package com.lz.framework.vector.config;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;

import java.util.Arrays;
import java.util.List;

/**
 * 统一特征提取配置。
 * <p>存放 embedding 相关的可调整参数，在 yml 的 {@code litchi.vector.embedding} 节点下，
 * 结构泛化，支持当前 CLIP，以后加 DINOv2 / SigLIP 等只需：
 * 1. 在此追加公共字段（device、batchSize、featureThreads 等）
 * 2. 在 models 子节点下新建自己的 Properties 类
 * 3. 在对应 Service 中注入使用
 */
@Data
@ConfigurationProperties(prefix = "litchi.vector.embedding")
public class EmbeddingProperties {

    /**
     * 当前激活的特征提取模型：clip / dino / siglip
     */
    private String model = "clip";

    /**
     * 推理设备：cpu / cuda
     */
    private String device = "cpu";

    /**
     * 批量推理时的 batch size
     */
    private int batchSize = 32;

    /**
     * 批量入库时的特征提取并行线程数；建议 <= 对应模型的 session 池大小
     */
    private int featureThreads = 4;

    /**
     * CLIP 模型专用配置
     */
    private ClipProperties clip = new ClipProperties();

    /**
     * DINOv2 模型专用配置
     */
    private DinoProperties dino = new DinoProperties();

    /**
     * SigLIP 2 模型专用配置
     */
    private SiglipProperties siglip = new SiglipProperties();


    /**
     * 批量入库模式开关。ORT Java 1.18 的 IntraOpNum 只能在 session 创建那一刻设，
     * 不能运行时改。所以这里改成"启动期一次性选"：
     * batch-mode = true  → IntraOp=1（批量 16 张图并发时不抢 CPU，最稳）
     * batch-mode = false → IntraOp=cores/6（6 个 session 内多线程榨干 CPU，搜图专用）
     * <p>
     * 单图搜图服务 → 设 batch-mode: false
     * 同时跑批量入库 → 设 batch-mode: true
     */
    private boolean batchMode = true;

    /**
     * 性能日志开关（默认开启）。
     * <p>
     * 控制各 extractor 内部的"性能摘要"日志：
     * - 单图推理耗时
     * - 多尺度并发等待耗时
     * - 批量入库完成后的 prep/run 性能摘要（logAndResetPerf / maybeLogStats）
     * - DINO 五段诊断采样
     * <p>
     * 异常日志（log.error / log.warn 推理失败 / 模型加载失败）<b>不受此开关控制</b>，
     * 异常必须始终打印。
     */
    private boolean perfLogEnabled = true;

    @Data
    public static class ClipProperties {
        /**
         * 视觉塔 ONNX 模型路径（相对于 classpath / 工作目录）
         */
        private String visionModelPath = "models/clip-vit-base-patch32/vision_model.onnx";

        /**
         * 文本塔 ONNX 模型路径
         */
        private String textModelPath = "models/clip-vit-base-patch32/text_model.onnx";

        /**
         * 是否启用视觉塔（用于以图搜图）
         */
        private boolean useVision = true;

        /**
         * 是否启用文本塔（用于文搜图）
         */
        private boolean useText = false;

        /**
         * 视觉塔 OrtSession 池大小：0 = 自动 min(CPU 核数, 8)
         */
        private int sessionPoolSize = 0;

        /**
         * 输出向量维度（必须与 Milvus collection dim 一致，启动期自动校验）
         */
        private int featureDim = 512;

        /**
         * 多尺度推理的短边尺寸列表。空 = [224] 单尺度
         */
        private List<Integer> scales = Arrays.asList(224, 256);

        /**
         * 水平翻转增强：true = 原图+水平翻转各跑一遍多尺度，取平均
         */
        private boolean hflipEnabled = true;
    }

    @Data
    public static class DinoProperties {
        /**
         * ONNX 模型路径（相对于 classpath / 工作目录）
         */
        private String visionModelPath = "models/dinov2-vitb14/dinov2_vitb14.onnx";

        /**
         * 视觉塔 OrtSession 池大小：0 = 自动 min(CPU 核数, 8)
         */
        private int sessionPoolSize = 0;

        /**
         * 输出向量维度（必须与 Milvus collection dim 一致）
         */
        private int featureDim = 768;

        /**
         * 模型输入图片尺寸（短边 resize + center-crop 到的目标尺寸）。
         * 必须与 ONNX 模型训练的分辨率一致：
         * dinov2-vitb14 -> 518
         * dinov2-vitl14 -> 518
         * 默认值 518 仅适用于 ViT-B/14 和 ViT-L/14 的标准导出模型。
         */
        private int inputSize = 518;

        /**
         * 多尺度推理的短边尺寸列表（各元素应能被 patch size 整除）
         */
        private List<Integer> scales = Arrays.asList(518);

        /**
         * 水平翻转增强（不建议开启，DINOv2 对翻转敏感）
         */
        private boolean hflipEnabled = false;
    }

    @Data
    public static class SiglipProperties {
        /**
         * ONNX 模型路径（相对于 classpath / 工作目录）
         */
        private String visionModelPath = "models/siglip2-base-patch16-256/siglip2.onnx";

        /**
         * 视觉塔 OrtSession 池大小：0 = 自动 min(CPU 核数, 8)
         */
        private int sessionPoolSize = 0;

        /**
         * 输出向量维度（必须与 Milvus collection dim 一致）
         */
        private int featureDim = 768;

        /**
         * 模型输入图片尺寸（短边 resize + center-crop 到的目标尺寸）。
         * 必须与 ONNX 模型训练的分辨率一致：
         * siglip2-base-patch16-224 -> 224
         * siglip2-base-patch16-256 -> 256
         * siglip2-base-patch16-384 -> 384
         * 默认值 224 仅适用于 patch16-224 模型。
         * 若不确定，可用模型名中含的数字反推（如 siglip2-base-patch16-256 的输入是 256）。
         */
        private int inputSize = 224;

        /**
         * 多尺度推理的短边尺寸列表（各元素应能被 patch size 整除）
         */
        private List<Integer> scales = Arrays.asList(224, 256);

        /**
         * 水平翻转增强
         */
        private boolean hflipEnabled = false;
    }
}
