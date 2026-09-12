package com.lz.framework.excel.core.convert;

import com.alibaba.excel.converters.Converter;
import com.alibaba.excel.converters.WriteConverterContext;
import com.alibaba.excel.enums.CellDataTypeEnum;
import com.alibaba.excel.metadata.data.ImageData;
import com.alibaba.excel.metadata.data.WriteCellData;
import com.lz.framework.common.enums.FileConstants;
import com.lz.framework.excel.core.annotations.ExcelImageProperty;
import com.lz.framework.excel.core.util.FileProcessUtils;
import lombok.extern.slf4j.Slf4j;

import java.io.File;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

/**
 * Excel 图片转换器
 *
 * <p>
 * 支持将文件图片写入 Excel 单元格对应行列中。
 *
 * <p>
 * 支持多种数据类型：
 * <ul>
 *     <li>byte[]</li>
 *     <li>List&lt;byte[]&gt;</li>
 *     <li>String 文件路径</li>
 *     <li>List&lt;String&gt; 文件路径列表</li>
 *     <li>File</li>
 *     <li>InputStream</li>
 * </ul>
 *
 * <p>
 * 防OOM策略：
 * <ul>
 *     <li>byte[]、File、InputStream 直接处理（已在内存或可流式读取）</li>
 *     <li>String / List&lt;String&gt; 路径交给 Handler 流式处理，避免一次性加载所有文件</li>
 * </ul>
 *
 * <p>
 * 列级配置：通过 {@link ExcelImageProperty} 注解可覆盖单 cell 最大字节数。
 * 未配置时使用 {@link FileProcessUtils#MAX_FILE_BYTES} 全局默认。
 *
 * @author 荔枝源码
 */
@Slf4j
public class ImagesConvert implements Converter<Object> {

    @Override
    public Class<?> supportJavaTypeKey() {
        // 返回 null：让 EasyExcel 通过 @ExcelProperty 显式指定本 Converter。
        return null;
    }

    @Override
    public CellDataTypeEnum supportExcelTypeKey() {
        // 图片最终通过 ImageData 写入，这里使用 STRING 作为 Converter 的 Excel 类型。
        return CellDataTypeEnum.STRING;
    }

    /**
     * 将文件数据转换为 Excel 单元格数据。
     *
     * @param context EasyExcel 转换上下文
     * @return Excel 单元格数据
     */
    @Override
    public WriteCellData<?> convertToExcelData(WriteConverterContext<Object> context) throws Exception {
        Object value = context.getValue();
        if (value == null) {
            // null → 空字符串 cell
            return new WriteCellData<>("");
        }

        // 读取当前字段的 @ExcelImageProperty 配置（注解 → maxFileBytes 等参数）
        ExcelImageProperty ann = resolveAnnotation(context);

        try {
            if (value instanceof byte[] bytes) {
                // 单个 byte[]：Convert 直接处理为图片（受 maxFileBytes 限制）
                return processBytes(bytes, ann);
            } else if (value instanceof List<?> list) {
                // List 类型：根据 List 内容类型分支处理
                return processList(list, ann);
            } else if (value instanceof String str) {
                // 单个 String 路径：返回 STRING（path）
                // 【强制 STRING】因为 WriteCellData(String) 构造器只接受 STRING/ERROR
                // Handler 在 afterCellDataConverted 会 setType(EMPTY)，
                // 这样 LongestMatchColumnWidthStyleStrategy 看到 EMPTY 返回 -1 → 跳过列宽自适应 → 保护 @ColumnWidth
                if (str.isEmpty()) {
                    return new WriteCellData<>("");
                }
                return new WriteCellData<>(str);
            } else if (value instanceof File file) {
                // 单个 File：Convert 直接处理为图片
                return processFile(file, ann);
            } else if (value instanceof InputStream is) {
                // 单个 InputStream：Convert 直接处理为图片
                return processInputStream(is, ann);
            } else {
                log.warn("[ImagesConvert] 不支持的文件类型: {}，将输出原始值", value.getClass().getName());
                return new WriteCellData<>(String.valueOf(value));
            }
        } catch (Exception e) {
            log.error("[ImagesConvert] 转换文件数据失败: {}", e.getMessage(), e);
            // 失败：返回空字符串，Handler 看到空就不处理
            return new WriteCellData<>("");
        }
    }

    /**
     * 处理 byte[] 类型。
     *
     * @param bytes 图片字节数据
     * @param ann   字段注解（控制最大字节数）
     * @return Excel 单元格数据（图片或空字符串）
     */
    private WriteCellData<?> processBytes(byte[] bytes, ExcelImageProperty ann) {
        if (bytes == null || bytes.length == 0) {
            return new WriteCellData<>("");
        }
        // 单图超限检查（避免 Convert 阶段一次性把超大图全加载到 cellData.imageDataList）
        long maxBytes = effectiveMaxBytes(ann);
        if (maxBytes > 0 && bytes.length > maxBytes) {
            log.warn("[ImagesConvert] byte[] 大小 {} MB 超过单图限制 {} MB，回退为空",
                    FileProcessUtils.formatMB(bytes.length), FileProcessUtils.formatMB(maxBytes));
            return new WriteCellData<>("");
        }
        List<ImageData> imageDataList = new ArrayList<>();
        FileProcessUtils.addImageData(bytes, imageDataList);
        return toWriteCellData(imageDataList);
    }

    /**
     * 处理 File 类型。
     *
     * @param file 本地文件
     * @param ann  字段注解（控制最大字节数）
     * @return Excel 单元格数据（图片或空字符串）
     */
    private WriteCellData<?> processFile(File file, ExcelImageProperty ann) {
        if (file == null || !file.exists() || !file.isFile()) {
            return new WriteCellData<>("");
        }
        List<ImageData> imageDataList = new ArrayList<>();
        FileProcessUtils.addImageData(file, imageDataList, effectiveMaxBytes(ann));
        return toWriteCellData(imageDataList);
    }

    /**
     * 处理 InputStream 类型。
     *
     * @param is  输入流
     * @param ann 字段注解（控制最大字节数）
     * @return Excel 单元格数据（图片或空字符串）
     */
    private WriteCellData<?> processInputStream(InputStream is, ExcelImageProperty ann) {
        if (is == null) {
            return new WriteCellData<>("");
        }
        List<ImageData> imageDataList = new ArrayList<>();
        FileProcessUtils.addImageData(is, imageDataList, effectiveMaxBytes(ann));
        return toWriteCellData(imageDataList);
    }

    /**
     * 处理 List。
     * <p>List 中可能包含：
     * <ul>
     *     <li>byte[] / File / InputStream ─ Convert 直接处理</li>
     *     <li>String 路径 ─ 合并为 FILE_PATH_SEPARATOR（||）分隔的字符串，交给 Handler 处理</li>
     * </ul>
     *
     * <p><b>总和检查</b>：本方法统一按"读完 byte[] 后累加字节数"判断总和是否超限，
     * 任何类型（byte[] / File / InputStream）都走同一逻辑 —— 避免
     * "byte[] 累计检查了、File/InputStream 不检查"导致的"有些图有、有些图没有"问题。
     *
     * @param list 文件列表
     * @param ann  字段注解（控制最大字节数）
     * @return Excel 单元格数据
     */
    private WriteCellData<?> processList(List<?> list, ExcelImageProperty ann) {
        if (list == null || list.isEmpty()) {
            return new WriteCellData<>("");
        }

        // 收集可由 Convert 直接处理的图片数据
        List<ImageData> imageDataList = new ArrayList<>();
        // 收集 String 路径（合并后交给 Handler 处理）
        List<String> stringPaths = new ArrayList<>();
        // 累计字节数（用于总和检查）
        long totalBytes = 0;
        long maxBytes = effectiveMaxBytes(ann);
        boolean overLimit = false; // 标记是否"中途总和超限"

        for (Object item : list) {
            if (item == null) {
                continue;
            }
            // ========== 取出本项的 byte[]（不读全图，先估算/读出长度再判断） ==========
            byte[] bytes = null;
            if (item instanceof byte[] b) {
                bytes = b;
            } else if (item instanceof File file) {
                // File：用 file.length() 快速判断，避开 OOM
                if (!file.exists() || !file.isFile()) {
                    log.warn("[ImagesConvert] List<File> 中文件不存在或不是文件: {}", file);
                    continue;
                }
                // 单图超限 → 跳过
                if (maxBytes > 0 && file.length() > maxBytes) {
                    log.warn("[ImagesConvert] List<File> 中某文件 {} MB 超单图限制 {} MB，跳过",
                            file.getName(), FileProcessUtils.formatMB(maxBytes));
                    continue;
                }
            } else if (item instanceof InputStream is) {
                // InputStream 无法预估长度，统一走受限读取
                // 【总和检查】这里主动检查"剩余空间"
                // 因为 readInputStreamWithGlobalLimit 内部超 limit 时只 return null、不累加，
                // 会导致后续项绕开总和检查继续加载。
                if (maxBytes > 0) {
                    long remaining = maxBytes - totalBytes;
                    if (remaining <= 0) {
                        // 剩余空间已用尽 → 触发 overLimit，整 cell 不写图
                        log.warn("[ImagesConvert] List InputStream 剩余空间已用尽（{} MB / 上限 {} MB），停止累加",
                                FileProcessUtils.formatMB(totalBytes),
                                FileProcessUtils.formatMB(maxBytes));
                        overLimit = true;
                        break;
                    }
                }
                // 单图超限 / 总和超限都在 addImageData(InputStream, ...) 内部判断
            } else if (item instanceof String path) {
                stringPaths.add(path);
                continue;
            } else {
                log.warn("[ImagesConvert] List 中遇到不支持的类型: {}", item.getClass().getName());
                continue;
            }

            // ========== 总和检查（统一逻辑） ==========
            // 单图超限（仅对 byte[] / File 已知长度的项有意义；InputStream 走受限读取自带）
            if (maxBytes > 0) {
                long itemSize = (bytes != null) ? bytes.length
                        : ((item instanceof File) ? ((File) item).length() : 0L);
                if (itemSize > 0 && itemSize > maxBytes) {
                    log.warn("[ImagesConvert] List 中某项 {} MB 超单图限制 {} MB，跳过",
                            FileProcessUtils.formatMB(itemSize), FileProcessUtils.formatMB(maxBytes));
                    continue;
                }
                // 总累计超限（剩余空间 < 本项大小）→ 跳出循环
                if (itemSize > 0 && totalBytes + itemSize > maxBytes) {
                    log.warn("[ImagesConvert] List 累计 {} MB + 本项 {} MB 超过总和限制 {} MB，停止累加（已加载 {} 张）",
                            FileProcessUtils.formatMB(totalBytes),
                            FileProcessUtils.formatMB(itemSize),
                            FileProcessUtils.formatMB(maxBytes),
                            imageDataList.size());
                    overLimit = true;
                    break;
                }
            }

            // ========== 真正加载 byte[] 并加入 ImageData ==========
            if (bytes != null) {
                FileProcessUtils.addImageData(bytes, imageDataList);
                totalBytes += bytes.length;
            } else if (item instanceof File file) {
                // 读 byte[]（file.length 已过单图检查；这里不做二次超限，因为本项大小 file.length() 已知）
                byte[] fb = FileProcessUtils.readFileBytes(file);
                if (fb != null && fb.length > 0) {
                    FileProcessUtils.addImageData(fb, imageDataList);
                    totalBytes += fb.length;
                }
            } else if (item instanceof InputStream is) {
                // 受限读取：单图 + 总和都受限
                byte[] ib = FileProcessUtils.readInputStreamWithGlobalLimit(is, maxBytes, totalBytes);
                if (ib != null && ib.length > 0) {
                    FileProcessUtils.addImageData(ib, imageDataList);
                    totalBytes += ib.length;
                    // 【总和检查】InputStream 读完后再校验：如果加载后总和 > maxBytes，
                    // 触发 overLimit，整 cell 不写图。
                    if (maxBytes > 0 && totalBytes > maxBytes) {
                        log.warn("[ImagesConvert] List InputStream 加载后总和 {} MB 超 {} MB，停止累加（已加载 {} 张）",
                                FileProcessUtils.formatMB(totalBytes),
                                FileProcessUtils.formatMB(maxBytes),
                                imageDataList.size());
                        overLimit = true;
                        break;
                    }
                }
            }
        }

        // 超限标记：整 cell 都不写图（保持和单 cell 字节上限的语义一致）
        if (overLimit) {
            log.warn("[ImagesConvert] List 总和超限（{} MB，已加载 {} 张），整 cell 不写图",
                    FileProcessUtils.formatMB(totalBytes), imageDataList.size());
            // 【关键】整 cell 留空 —— 超限后整 cell 不显示（不写 fallback 路径）。
            // 之前版本对 List<File> 拼接 fallback 路径，但本地路径在生产环境没意义（用户需远程路径）；
            // 用户确认超限后整 cell 不显示是最清晰的语义。
            return new WriteCellData<>("");
        }

        // 有 Convert 直接处理的图片数据：直接返回 type=EMPTY + imageDataList 的 cellData
        if (!imageDataList.isEmpty()) {
            WriteCellData<List<ImageData>> cellData = new WriteCellData<>();
            cellData.setType(CellDataTypeEnum.EMPTY);
            cellData.setImageDataList(imageDataList);
            return cellData;
        }

        // 纯 String 路径列表：用 FILE_PATH_SEPARATOR（||）合并，返回 STRING 让 Handler 处理
        if (!stringPaths.isEmpty()) {
            String merged = String.join(FileConstants.FILE_PATH_SEPARATOR, stringPaths);
            return new WriteCellData<>(merged);
        }

        // 空列表或全是无效数据：返回空字符串，Handler 跳过
        return new WriteCellData<>("");
    }

    /**
     * 将 imageDataList 转换为 WriteCellData。
     *
     * @param imageDataList 图片数据列表
     * @return 有图片数据时返回 EMPTY+ImageData 单元格；否则返回空字符串单元格
     */
    private WriteCellData<?> toWriteCellData(List<ImageData> imageDataList) {
        if (imageDataList == null || imageDataList.isEmpty()) {
            return new WriteCellData<>("");
        }
        WriteCellData<List<ImageData>> cellData = new WriteCellData<>();
        cellData.setType(CellDataTypeEnum.EMPTY);
        cellData.setImageDataList(imageDataList);
        return cellData;
    }

    /**
     * 计算有效最大字节数：注解配置 > 全局默认。
     *
     * @param ann 字段注解（可能为 null）
     * @return 最大字节数；<=0 表示"不限制"
     */
    private static long effectiveMaxBytes(ExcelImageProperty ann) {
        if (ann != null && ann.maxFileSizeMB() > 0) {
            return (long) ann.maxFileSizeMB() * 1024 * 1024;
        }
        return FileProcessUtils.MAX_FILE_BYTES;
    }

    // ========================================================================
    // 注解解析缓存（class 全限定名 + fieldName → @ExcelImageProperty）
    // ========================================================================

    /**
     * 注解缓存：{@code className + "#" + fieldName} → {@link ExcelImageProperty}（可能为 null）。
     * <p>每次运行第一次访问某个字段时反射一次，之后读缓存。
     * <p>用 {@link ConcurrentHashMap#containsKey(Object)} 区分"未查过"和"查过但无注解"，避免重复反射。
     */
    private static final ConcurrentHashMap<String, ExcelImageProperty> ANN_CACHE = new ConcurrentHashMap<>();

    /**
     * 从 Converter context 解析当前字段的 {@link ExcelImageProperty} 注解。
     * <p>通过 {@link WriteConverterContext#getContentProperty()}.getField() 拿字段 → 反射注解。
     * <p>第一次访问某字段时反射一次，结果缓存到 {@link #ANN_CACHE}（class + fieldName 维度）。
     */
    private static ExcelImageProperty resolveAnnotation(WriteConverterContext<?> context) {
        if (context == null || context.getContentProperty() == null) {
            return null;
        }
        Field field = context.getContentProperty().getField();
        if (field == null) {
            return null;
        }
        String key = field.getDeclaringClass().getName() + "#" + field.getName();
        if (ANN_CACHE.containsKey(key)) {
            return ANN_CACHE.get(key); // 可能为 null（已确认无注解）
        }
        // 第一次访问该字段：反射读注解
        ExcelImageProperty ann = field.getAnnotation(ExcelImageProperty.class);
        ANN_CACHE.put(key, ann);
        return ann;
    }
}


