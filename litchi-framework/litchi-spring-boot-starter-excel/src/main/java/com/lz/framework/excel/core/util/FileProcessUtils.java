package com.lz.framework.excel.core.util;

import cn.hutool.core.io.FileUtil;
import com.alibaba.excel.metadata.data.ImageData;
import com.lz.framework.common.biz.infra.file.FileCommonApi;
import com.lz.framework.common.enums.FileConstants;
import com.lz.framework.common.util.spring.SpringUtils;
import lombok.extern.slf4j.Slf4j;

import java.io.File;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/**
 * 文件处理工具类
 *
 * <p>提供统一的图片文件读取和转换功能，支持：
 * <ul>
 *     <li>云存储文件（通过 FileCommonApi）</li>
 *     <li>本地文件</li>
 * </ul>
 *
 * @author 荔枝源码
 */
@Slf4j
public class FileProcessUtils {

    /**
     * 当前单元格所有文件最大大小（MB）（默认全局值）。
     */
    public static final int MAX_FILE_SIZE = 10;

    /**
     * 当前单元格所有文件最大字节数（默认全局值，由 {@link #MAX_FILE_SIZE} 推算）。
     */
    public static final long MAX_FILE_BYTES = MAX_FILE_SIZE * 1024 * 1024L;


    /**
     * 获取 FileCommonApi（延迟加载，避免循环依赖）。
     */
    private static FileCommonApi getFileCommonApi() {
        return SpringUtils.getBean(FileCommonApi.class);
    }

    /**
     * 创建 ImageData。
     *
     * @param bytes 图片字节数据
     * @return ImageData
     */
    public static ImageData createImageData(byte[] bytes) {
        ImageData imageData = new ImageData();
        imageData.setImage(bytes);
        imageData.setImageType(detectImageType(bytes));
        return imageData;
    }

    /**
     * 检测图片类型。
     *
     * @param imageData 图片字节数据
     * @return 图片类型
     */
    public static ImageData.ImageType detectImageType(byte[] imageData) {
        if (imageData == null || imageData.length < 4) {
            return ImageData.ImageType.PICTURE_TYPE_JPEG;
        }
        int b0 = imageData[0] & 0xFF;
        int b1 = imageData[1] & 0xFF;
        // PNG: 89 50 4E 47
        if (b0 == 0x89 && b1 == 0x50) {
            return ImageData.ImageType.PICTURE_TYPE_PNG;
        }
        // JPEG: FF D8
        if (b0 == 0xFF && b1 == 0xD8) {
            return ImageData.ImageType.PICTURE_TYPE_JPEG;
        }
        // BMP: 42 4D
        if (b0 == 0x42 && b1 == 0x4D) {
            return ImageData.ImageType.PICTURE_TYPE_DIB;
        }
        // 默认 JPEG
        return ImageData.ImageType.PICTURE_TYPE_JPEG;
    }

    /**
     * 流式处理 String 路径（支持自定义单 cell 最大字节数）。
     *
     * @param path            原始路径（可能含 {@link FileConstants#FILE_PATH_SEPARATOR} 分隔的多张图）
     * @param key             单元格标识（用于日志）
     * @param consumer        每张图的回调：(index, bytes) -> continue?
     * @param maxFileBytesOverride 单 cell 字节上限；{@code null} → 用 {@link #MAX_FILE_BYTES} 全局默认
     * @return 处理结果：overLimit=true 表示总和超限；false 表示正常消费
     */
    public static StringPathResult processStringPathStream(String path, String key,
                                                            java.util.function.BiFunction<Integer, byte[], Boolean> consumer,
                                                            Long maxFileBytesOverride) {
        if (path == null || path.isEmpty()) {
            return StringPathResult.ofEmpty();
        }
        try {
            FileCommonApi fileCommonApi = getFileCommonApi();
            // 按业务要求一次性拿多张
            List<byte[]> contents = fileCommonApi.getFileContents(path);

            // 先算总大小（避免回调里多次累加；仍用 List<byte[]> 一次性遍历完即可）
            long totalSize = contents.stream()
                    .filter(Objects::nonNull)
                    .mapToLong(content -> content.length)
                    .sum();
            // 单 cell 上限：调用方覆盖 > 全局默认
            long effectiveMaxBytes = (maxFileBytesOverride != null && maxFileBytesOverride > 0)
                    ? maxFileBytesOverride : MAX_FILE_BYTES;
            int effectiveMaxMB = (int) Math.max(1L, effectiveMaxBytes / 1024 / 1024);
            if (totalSize > effectiveMaxBytes) {
                log.warn("[FileProcessUtils] 单元格 [{}] 文件总大小 {} MB 超过限制 {} MB，不写入图片",
                        key, formatMB(totalSize), effectiveMaxMB);
                // 超限：拼接完整路径作为 fallback
                List<String> filePaths = fileCommonApi.getFilePaths(path);
                String fallbackPath = (filePaths != null && !filePaths.isEmpty())
                        ? String.join(FileConstants.EXCEL_LINE_SEPARATOR, filePaths)
                        : path;
                return StringPathResult.ofOverLimit(fallbackPath);
            }

            // 流式消费：逐张回调，每张回调返回后立即把 List 中对应位置置 null
            int totalRead = 0;
            for (int i = 0; i < contents.size(); i++) {
                byte[] content = contents.get(i);
                // null 或空 → 跳过（continue 保持索引递增给回调）
                if (content == null || content.length == 0) {
                    continue;
                }
                // 回调：Handler 里 addPicture → POI 复制 → 回调返回后 byte[] 局部变量出作用域
                Boolean continueNext = consumer.apply(i, content);
                if (continueNext == null || !continueNext) {
                    // 回调要求停止
                    break;
                }
                totalRead++;
                // 立即清引用：让 List<byte[]> 不再持有此 byte[]，byte[] 立即可 GC
                contents.set(i, null);
            }
            if (totalRead == 0) {
                return StringPathResult.ofEmpty();
            }
            return new StringPathResult(false, null, null);
        } catch (Exception e) {
            log.error("[FileProcessUtils] 流式读取文件失败 [{}]: {}", path, e.getMessage(), e);
            return StringPathResult.ofEmpty();
        }
    }

    /**
     * 格式化文件大小。
     *
     * @param bytes 字节数
     * @return 格式化后的字符串
     */
    public static String formatMB(long bytes) {
        return String.format("%.2f", bytes / 1024.0 / 1024.0);
    }

    // ====================================================================================
    // Convert 阶段：byte[] / File / InputStream 处理方法
    // ====================================================================================

    /**
     * 读取本地文件为 byte[]。
     */
    public static byte[] readFileBytes(File file) {
        if (file == null || !file.exists() || !file.isFile()) {
            return null;
        }
        try {
            return FileUtil.readBytes(file);
        } catch (Exception e) {
            log.error("[FileProcessUtils] 读取文件失败 [{}]: {}", file.getAbsolutePath(), e.getMessage());
            return null;
        }
    }


    /**
     * 从 byte[] 添加到 ImageData 列表。
     *
     * @return true 添加成功，false 失败
     */
    public static boolean addImageData(byte[] bytes, List<ImageData> imageDataList) {
        if (bytes == null || bytes.length == 0 || imageDataList == null) {
            return false;
        }
        imageDataList.add(createImageData(bytes));
        return true;
    }

    /**
     * 从 File 添加到 ImageData 列表（带大小限制）。
     *
     * @param file              本地文件
     * @param imageDataList     输出列表
     * @param maxBytesOverride  单图字节上限；{@code <= 0} 表示无限制
     * @return true 添加成功，false 失败（含超限）
     */
    public static boolean addImageData(File file, List<ImageData> imageDataList, long maxBytesOverride) {
        if (file == null || !file.exists() || !file.isFile() || imageDataList == null) {
            return false;
        }
        if (maxBytesOverride > 0 && file.length() > maxBytesOverride) {
            log.warn("[FileProcessUtils] File [{}] 大小 {} MB 超过限制 {} MB，跳过",
                    file.getAbsolutePath(), formatMB(file.length()), formatMB(maxBytesOverride));
            return false;
        }
        byte[] bytes = readFileBytes(file);
        return addImageData(bytes, imageDataList);
    }

    /**
     * 从 InputStream 添加到 ImageData 列表（带大小限制）。
     * <p>读流时累计字节数，超过限制立即停止读取（避免 OOM）。
     *
     * @param is                输入流
     * @param imageDataList     输出列表
     * @param maxBytesOverride  字节上限；{@code <= 0} 表示无限制
     * @return true 添加成功，false 失败（含超限）
     */
    public static boolean addImageData(InputStream is, List<ImageData> imageDataList, long maxBytesOverride) {
        if (is == null || imageDataList == null) {
            return false;
        }
        byte[] bytes = readInputStreamWithLimit(is, maxBytesOverride);
        if (bytes == null || bytes.length == 0) {
            return false;
        }
        return addImageData(bytes, imageDataList);
    }

    /**
     * 读 InputStream 为 byte[]，带字节上限。
     *
     * @param maxBytes 上限（bytes）；{@code <= 0} 表示不限制
     * @return 字节数组；超限时返回 {@code null}
     */
    private static byte[] readInputStreamWithLimit(InputStream is, long maxBytes) {
        return readInputStreamWithGlobalLimit(is, maxBytes, 0L);
    }

    /**
     * 读 InputStream 为 byte[]，同时受"单图上限"和"全局已累计字节数"控制。
     * <p>用于 Converter 在 List 场景下做总和检查：每次读图时知道已经累计了多少字节，
     * 避免一边读一边累加超限。
     *
     * @param is          输入流
     * @param singleLimit 单图上限（bytes）；{@code <= 0} 表示不限制单图
     * @param alreadyRead 已经累计的字节数（来自 List 中前面加载的项）
     * @return 字节数组；超限时返回 {@code null}
     */
    public static byte[] readInputStreamWithGlobalLimit(InputStream is, long singleLimit, long alreadyRead) {
        if (is == null) {
            return null;
        }
        try {
            if (singleLimit <= 0) {
                return is.readAllBytes();
            }
            // 受限读取：累计到 singleLimit 立即停（同时受 alreadyRead 控制 → 总和上限）
            long effectiveLimit = singleLimit - alreadyRead;
            if (effectiveLimit <= 0) {
                log.warn("[FileProcessUtils] InputStream：已累计 {} MB 已达上限 {} MB，跳过",
                        formatMB(alreadyRead), formatMB(singleLimit));
                return null;
            }
            java.io.ByteArrayOutputStream baos = new java.io.ByteArrayOutputStream();
            byte[] buf = new byte[8192];
            long total = 0;
            int n;
            while ((n = is.read(buf)) != -1) {
                total += n;
                if (total > effectiveLimit) {
                    log.warn("[FileProcessUtils] InputStream 本图超 {} MB（已累计 {} MB，上限 {} MB），停止",
                            formatMB(total), formatMB(alreadyRead), formatMB(singleLimit));
                    return null;
                }
                baos.write(buf, 0, n);
            }
            return baos.toByteArray();
        } catch (Exception e) {
            log.error("[FileProcessUtils] 读取 InputStream 失败: {}", e.getMessage());
            return null;
        } finally {
            try {
                is.close();
            } catch (Exception ignored) {
            }
        }
    }

    /**
     * 处理 String 路径，返回结果封装。
     */
    public static class StringPathResult {
        /**
         * 是否总大小超限
         */
        public final boolean overLimit;
        /**
         * 图片数据列表（未超限时填充）
         */
        public final List<ImageData> imageDataList;
        /**
         * 拼接后的路径字符串（超限时填充）
         */
        public final String fallbackPath;

        private StringPathResult(boolean overLimit, List<ImageData> imageDataList, String fallbackPath) {
            this.overLimit = overLimit;
            this.imageDataList = imageDataList;
            this.fallbackPath = fallbackPath;
        }

        public static StringPathResult ofOverLimit(String fallbackPath) {
            return new StringPathResult(true, null, fallbackPath);
        }

        public static StringPathResult ofEmpty() {
            return new StringPathResult(false, new ArrayList<>(), null);
        }
    }

}
