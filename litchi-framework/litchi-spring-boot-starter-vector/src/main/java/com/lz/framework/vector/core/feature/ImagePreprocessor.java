package com.lz.framework.vector.core.feature;

import java.awt.*;
import java.awt.image.BufferedImage;

/**
 * 三个视觉 extractor（CLIP / SigLIP / DINOv2）的图片预处理共享 helper。
 * 仅放三个 extractor 真正等价（语义+实现）的图片像素操作；任何带 extractor 状态的
 * 差异（如 centerCrop 视图/物理复制两种语义由调用方按模型兼容性挑选）保留在 caller 内部。
 * <p>
 * 与 {@link FeatureExtractorUtils} 的边界：
 * <ul>
 *   <li>ImagePreprocessor：图片像素级处理（pad / crop / resize / flip）</li>
 *   <li>FeatureExtractorUtils：图片之外的杂项（IO、归一化、路径解析、dummy 填充）</li>
 * </ul>
 */
final class ImagePreprocessor {

    private ImagePreprocessor() {}

    /**
     * pad 黑边到 targetSize × targetSize：resized 居中，超出部分用黑边填充。
     * <p>
     * 仅在 resized 至少一边 < targetSize 时调用；调用方负责保证 resized 的另一边 ≤ targetSize。
     * 输出固定 TYPE_INT_RGB。
     */
    static BufferedImage padToSize(BufferedImage resized, int targetSize) {
        int w = resized.getWidth();
        int h = resized.getHeight();
        BufferedImage out = new BufferedImage(targetSize, targetSize, BufferedImage.TYPE_INT_RGB);
        Graphics2D g = out.createGraphics();
        try {
            g.setColor(Color.BLACK);
            g.fillRect(0, 0, targetSize, targetSize);
            int offX = (targetSize - w) / 2;
            int offY = (targetSize - h) / 2;
            g.drawImage(resized, offX, offY, null);
        } finally {
            g.dispose();
        }
        return out;
    }

    /**
     * center crop（拿子图视图，零拷贝）。
     * <p>
     * 调用方拿到的是父 raster 的视图，<b>必须在后续 NCHW 读取时避免某些 JDK 下
     * Raster.getPixels 越界</b>（Stride != w*h 的子图）。CLIP 当前用这个，
     * 因为它的后续读取用 BufferedImage.getRGB 而非 WritableRaster.getPixels，相对稳。
     */
    static BufferedImage centerCropView(BufferedImage src, int targetSize) {
        int w = src.getWidth();
        int h = src.getHeight();
        if (w == targetSize && h == targetSize) {
            return src;
        }
        int x = (w - targetSize) / 2;
        int y = (h - targetSize) / 2;
        return src.getSubimage(x, y, targetSize, targetSize);
    }

    /**
     * center crop（Graphics2D 物理复制，输出独立 BufferedImage）。
     * <p>
     * 比 {@link #centerCropView} 多一次绘制，但产出的 BufferedImage 是独立的，
     * <b>任何 JDK 下都不会有子图视图的越界问题</b>。SigLIP 当前走这个。
     */
    static BufferedImage centerCropPhysical(BufferedImage src, int targetSize) {
        int w = src.getWidth();
        int h = src.getHeight();
        if (w == targetSize && h == targetSize) {
            return src;
        }
        BufferedImage out = new BufferedImage(targetSize, targetSize, BufferedImage.TYPE_INT_RGB);
        Graphics2D g = out.createGraphics();
        try {
            g.setColor(Color.BLACK);
            g.fillRect(0, 0, targetSize, targetSize);
            int x = (w - targetSize) / 2;
            int y = (h - targetSize) / 2;
            g.drawImage(src, 0, 0, targetSize, targetSize, x, y, x + targetSize, y + targetSize, null);
        } finally {
            g.dispose();
        }
        return out;
    }

    /**
     * 高效 resize：Graphics2D + BILINEAR 插值，输出 TYPE_INT_RGB。
     * 短路：src 已经是目标尺寸直接返回 src（不分配）。
     * <p>
     * 比 Image.getScaledInstance 快几倍（后者内部会构造 1/2、1/4... 多份中间缓冲）。
     */
    static BufferedImage resizeDirect(BufferedImage src, int w, int h) {
        if (src.getWidth() == w && src.getHeight() == h) return src;
        BufferedImage out = new BufferedImage(w, h, BufferedImage.TYPE_INT_RGB);
        Graphics2D g = out.createGraphics();
        try {
            g.setRenderingHint(java.awt.RenderingHints.KEY_INTERPOLATION,
                    java.awt.RenderingHints.VALUE_INTERPOLATION_BILINEAR);
            g.drawImage(src, 0, 0, w, h, null);
        } finally {
            g.dispose();
        }
        return out;
    }

    /**
     * 水平翻转：Graphics2D 的负 dx 翻转技巧，输出与 src 同尺寸同 type。
     * <p>
     * Dino / CLIP / SigLIP 三个 extractor 之前的实现完全等价：一次 Graphics2D drawImage，
     * 输出 type = src.getType()。统一到这里。
     */
    static BufferedImage flipHorizontal(BufferedImage src) {
        int w = src.getWidth();
        int h = src.getHeight();
        BufferedImage out = new BufferedImage(w, h, src.getType());
        Graphics2D g = out.createGraphics();
        try {
            g.drawImage(src, w, 0, -w, h, null);
        } finally {
            g.dispose();
        }
        return out;
    }
}
