package com.lz.framework.excel.core.handler;

import com.alibaba.excel.annotation.ExcelIgnore;
import com.alibaba.excel.annotation.ExcelIgnoreUnannotated;
import com.alibaba.excel.annotation.ExcelProperty;
import com.alibaba.excel.annotation.write.style.ColumnWidth;
import com.alibaba.excel.enums.CellDataTypeEnum;
import com.alibaba.excel.metadata.data.ImageData;
import com.alibaba.excel.metadata.data.WriteCellData;
import com.alibaba.excel.write.handler.CellWriteHandler;
import com.alibaba.excel.write.handler.RowWriteHandler;
import com.alibaba.excel.write.handler.WorkbookWriteHandler;
import com.alibaba.excel.write.handler.context.CellWriteHandlerContext;
import com.alibaba.excel.write.handler.context.RowWriteHandlerContext;
import com.alibaba.excel.write.handler.context.WorkbookWriteHandlerContext;
import com.alibaba.excel.write.metadata.holder.WriteSheetHolder;
import com.lz.framework.common.enums.FileConstants;
import com.lz.framework.excel.core.annotations.ExcelDirection;
import com.lz.framework.excel.core.annotations.ExcelImageProperty;
import com.lz.framework.excel.core.annotations.ExcelType;
import com.lz.framework.excel.core.convert.ImagesConvert;
import com.lz.framework.excel.core.strategy.PoiTempFileStrategy;
import com.lz.framework.excel.core.util.FileProcessUtils;
import lombok.extern.slf4j.Slf4j;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.util.Units;

import javax.imageio.ImageIO;
import javax.imageio.ImageReader;
import javax.imageio.stream.ImageInputStream;
import java.io.ByteArrayInputStream;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.*;

/**
 * Excel 文件（图片）单元格写入处理器。
 *
 * <h3>功能</h3>
 * 让导出 Excel 中的图片按原始宽高比例横向并排显示，并自动调整行高，使图片
 * 在单元格内上下居中、水平方向按配置的边距排列。
 *
 * <h3>三阶段处理（关键设计）</h3>
 * <ol>
 *   <li>{@link #afterCellDataConverted}：缓存路径/已有 byte[]，<b>不在 Handler 缓存 byte[]</b></li>
 *   <li>{@link #afterCellDispose}：拉图（路径场景）→ {@code workbook.addPicture}（byte[] 进入 POI PackagePart，<b>落盘</b>）→ 立即释放 byte[] → Handler 只存 {@code pictureIdx}（int）+ sizes</li>
 *   <li>{@link #afterRowDispose}：遍历本行所有 cell → 算整行最大渲染高 → setHeight → 用 pictureIdx 创建 Picture anchor 关联到 sheet</li>
 * </ol>
 *
 * <h3>byte[] 驻留时间</h3>
 * <p>byte[] 仅在 {@link #afterCellDispose} 调用期间短暂存在（拉图 → addPicture → 立即释放）。
 * POI 落盘模式下，addPicture 后 byte[] 写到 TempFilePackagePart（磁盘）→ 立即可 GC。
 *
 * <h3>OOM 防护 + 居中保证</h3>
 * <ul>
 *   <li><b>byte[] 不重复持有</b>：Handler 只缓存 pictureIdx（int，几字节）+ sizes（int[]，几字节）</li>
 *   <li><b>PackagePart 落盘</b>：{@link PoiTempFileStrategy} 让 POI 把图片数据写到磁盘</li>
 *   <li><b>行高先算后画</b>：{@link #afterRowDispose} 算整行最大 → setHeight → 画图（用真行高算 dy1 居中）</li>
 * </ul>
 *
 * @author 荔枝源码
 */
@Slf4j
public class ImagesSheetWriteHandler implements CellWriteHandler, RowWriteHandler, WorkbookWriteHandler {

    // ====================================================================================
    // 常量
    // ====================================================================================

    /**
     * 默认列宽字符数（POI 单位 = chars × 256）。
     * <p>当 {@code @ColumnWidth} 未设置或读不到时，列宽回退到此值（20 字符 ≈ 默认 Excel 列宽）。
     */
    private static final int FALLBACK_BASE_COLUMN_WIDTH_CHARS = 20;

    /**
     * 图片水平边距（单位：字符宽）。
     * <p>图组左右两侧各留 1 个字符宽度的留白（避免贴边）。
     * <p>最终像素值 = chars × {@link Units#DEFAULT_CHARACTER_WIDTH}。
     */
    private static final float IMAGE_HORIZONTAL_MARGIN_CHARS = 2f;

    /**
     * 图片垂直边距（单位：字符宽）。
     * <p>图组上下两侧各留 1 个字符宽度的留白。
     */
    private static final float IMAGE_VERTICAL_MARGIN_CHARS = 3f;

    /**
     * 多图之间的水平间距（单位：字符宽）。
     * <p>同一 cell 内多张图横向并排时，相邻图之间留 1 个字符宽的间隙。
     */
    private static final float IMAGE_GAP_CHARS = 1f;

    /**
     * 单张图渲染高度上限倍数（相对列宽字符数）。
     * <p>如果按原图比例缩放后图高度超过"列宽字符数 × 3 × 字符宽"，
     * 就等比缩小图片（防止细长图如条形码把行高撑高）。
     * <p>倍数 3 是经验值：普通图片放在 20 字符列中，最长边不超过 60 字符（约 360px）。
     */
    private static final double MAX_IMAGE_RENDER_HEIGHT_MULTIPLE = 3.0;

    /**
     * 默认行高（单位：point）。
     * <p>Excel 默认行高 ≈ 13.5 pt（96 dpi 下 ≈ 18 px）。
     * <p>本字段用于 {@code rowHeightTwips <= 0} 时的兜底。
     */
    private static final float DEFAULT_ROW_HEIGHT_POINTS = 13.5f;

    /**
     * 图片原始尺寸解析失败时的默认宽度（像素）。
     * <p>用于 {@link #readImageSizeFast} 解析失败或 byte[] 为空的兜底。
     */
    private static final int DEFAULT_IMAGE_WIDTH_PIXELS = 200;

    /**
     * 图片原始尺寸解析失败时的默认高度（像素）。
     */
    private static final int DEFAULT_IMAGE_HEIGHT_PIXELS = 200;

    /**
     * POI 行高单位换算：1 px = 15 twips（1 twip = 1/20 point = 1/15 px @ 96dpi）。
     * <p>{@code row.setHeight(short)} 接收 twips；{@code rowHeightPx × TWIPS_PER_PX} 转 twips。
     */
    private static final float TWIPS_PER_PX = 15.0f;

    /**
     * 字号换算：1 pt = 96/72 px（在 96 DPI 下）。
     * <p>{@code pointValue × PX_PER_POINT} 转 px（用于默认行高兜底）。
     */
    private static final float PX_PER_POINT = 96.0f / 72.0f;

    /**
     * 最小行高（twips 单位）。
     * <p>Excel 内部最小行高约 15 twips = 1 px；setHeight 时小于此值会被忽略。
     * <p>本字段用于 {@code setHeight} 兜底（避免 0 行高导致的 Excel 警告）。
     */
    private static final int MIN_ROW_HEIGHT_TWIPS = 15;

    // ====================================================================================
    // 跨阶段缓存
    // ====================================================================================

    /**
     * sheetIdx → colIdx → 该列基础列宽（POI 单位 = 字符数 × 256）
     */
    private final Map<Integer, Map<Integer, Integer>> perSheetOriginalColumnWidthMap = new HashMap<>();

    /**
     * 已处理过的 sheet 索引（幂等保护）
     */
    private final Set<Integer> processedSheetIndexes = new HashSet<>();

    /**
     * 行级 cellKey → 路径字符串（拉图用）。
     */
    private final Map<String, String> pendingRowPathMap = new HashMap<>();

    /**
     * 行级 cellKey → 每张图原始尺寸 [w, h]。
     */
    private final Map<String, List<int[]>> pendingRowCellImageSizesListMap = new HashMap<>();

    /**
     * 行级 cellKey → 已 addPicture 到 POI 的 pictureIdx 列表。
     * <p><b>关键</b>：byte[] 在 addPicture 后立即释放，Handler 只存 idx（int）。
     * <p>在 afterRowDispose 时用 idx + setHeight 后的行高创建 Picture anchor。
     */
    private final Map<String, List<Integer>> pendingRowPictureIdxMap = new HashMap<>();

    /**
     * 行级 cellKey → Converter 已读出的 byte[] 列表（用于 afterCellDispose 消费）。
     * <p><b>关键</b>：用于"防止重复绘制"。
     * <ul>
     *   <li>afterCellDataConverted 阶段：如果 cellData.imageDataList 非空（Converter 处理 byte[]/File/InputStream/List 等场景），
     *       把 byte[] 复制到本缓存，<b>清空</b> cellData.imageDataList 并 setType(EMPTY)，
     *       这样 EasyExcel/POI 默认 channel 不会自动画图（避免和 Handler 重复绘制）</li>
     *   <li>afterCellDispose 阶段：从本缓存取 byte[]，逐张 addPicture → 立即释放</li>
     *   <li>在 addPicture 完成后清空本缓存的 List<byte[]> 引用</li>
     * </ul>
     */
    private final Map<String, List<byte[]>> pendingRowImageBytesMap = new HashMap<>();

    private final Set<Integer> imageColumnIndexes;

    /**
     * 构造时一次性扫好的图片列列宽（POI 单位 = 字符数 × 256）。
     * <p><b>关键优化</b>：避免运行时反射 {@code @ColumnWidth}。列宽是编译时常量，构造时一次性算好，
     * 后面 Handler 处理每行直接 {@code map.get(colIdx)} 即可，<b>零反射</b>。
     * <p>key = 列索引；value = 列宽（POI 单位）；未标 {@code @ColumnWidth} 时用默认值
     * （{@link #FALLBACK_BASE_COLUMN_WIDTH_CHARS} × 256）。
     */
    private final Map<Integer, Integer> imageColumnWidthMap = new HashMap<>();

    /**
     * 构造时一次性扫好的"列索引 → {@link ExcelImageProperty} 注解"映射。
     * <p>用于 afterCellDispose 阶段 O(1) 拿到当前列的注解，避免运行时反射。
     * <p>值可能是 {@code null}（表示该字段无注解），调用方需用 containsKey 判断。
     */
    private final Map<Integer, ExcelImageProperty> imageColumnAnnotationMap = new HashMap<>();

    // ====================================================================================
    // 构造
    // ====================================================================================

    /**
     * 无参构造（兜底）：不限制任何列，Handler 对所有列生效。
     * <p>推荐使用 {@link #ImagesSheetWriteHandler(Class, ExcelDirection)} 传入 head 类扫描图片列。
     */
    public ImagesSheetWriteHandler() {
        this.imageColumnIndexes = null;
    }

    /**
     * 构造时扫描 head 类，收集标注了 {@code @ExcelProperty(converter = ImagesConvert.class)} 的列索引。
     * <p>只有这些列会在 {@link #afterCellDataConverted} 被接管，避免误处理普通文本字段。
     *
     * @param head      Excel head 类（VO）
     * @param direction 方向：{@code ONLY_EXPORT} 导出（排除 ONLY_IMPORT 字段），
     *                  {@code ONLY_IMPORT} 导入（排除 ONLY_EXPORT 字段）
     */
    public ImagesSheetWriteHandler(Class<?> head, ExcelDirection direction) {
        ScanResult scanResult = scanHead(head, direction);
        this.imageColumnIndexes = scanResult.imageColumnIndexes;
        this.imageColumnWidthMap.putAll(scanResult.imageColumnWidths);
        this.imageColumnAnnotationMap.putAll(scanResult.imageColumnAnnotations);
    }

    /**
     * 扫描 head 类，一次性收集：
     * <ol>
     *   <li>所有标注了 {@link ImagesConvert} 转换器的列索引</li>
     *   <li>每个图片列的列宽（来自 {@code @ColumnWidth}）</li>
     * </ol>
     * <p><b>关键优化</b>：构造时一次性扫好列宽，<b>运行时零反射</b>。
     * 后续 Handler 处理每行直接 {@code map.get(colIdx)}。
     *
     * @param head      Excel head 类
     * @param direction 方向；传 null 时不按方向排除
     * @return 扫描结果
     */
    private static ScanResult scanHead(Class<?> head, ExcelDirection direction) {
        ScanResult result = new ScanResult();
        // 空 head：直接返回空集（无图列可处理）
        if (head == null) {
            return result;
        }
        // 类上是否有 @ExcelIgnoreUnannotated：开启后，未标 @ExcelProperty 的字段会被 EasyExcel 忽略
        boolean ignoreUnannotated = head.isAnnotationPresent(ExcelIgnoreUnannotated.class);
        // 列索引从 0 开始递增（注意：被 @ExcelProperty(index = N) 显式指定时，后续字段仍按声明顺序递增；
        //   只有"被选中的字段"才取显式 index——这与 EasyExcel 内部 headMap 的列号一致）
        int colIndex = 0;
        for (Field field : head.getDeclaredFields()) {
            // ① 跳过常量字段（static final 复合修饰符）：EasyExcel 也不写入
            // ② 跳过 transient：序列化时本来就不写，EasyExcel 也跳过
            if ((Modifier.isStatic(field.getModifiers()) && Modifier.isFinal(field.getModifiers()))
                    || Modifier.isTransient(field.getModifiers())) {
                continue;
            }
            // 跳过显式 @ExcelIgnore 标记的字段
            if (field.isAnnotationPresent(ExcelIgnore.class)) {
                continue;
            }
            // @ExcelIgnoreUnannotated 时，未标 @ExcelProperty 的字段直接跳过（与 EasyExcel 行为对齐）
            boolean hasExcelProperty = field.isAnnotationPresent(ExcelProperty.class);
            if (ignoreUnannotated && !hasExcelProperty) {
                continue;
            }
            // 按方向过滤：ONLY_EXPORT 时排除 ONLY_IMPORT 字段；反之亦然
            // 配合 @ExcelType 注解，让同一个 VO 既能导出也能导入
            if (direction != null) {
                ExcelType excelType = field.getAnnotation(ExcelType.class);
                if (excelType != null) {
                    if (direction == ExcelDirection.ONLY_EXPORT
                            && excelType.value() == ExcelDirection.ONLY_IMPORT) {
                        continue;
                    }
                    if (direction == ExcelDirection.ONLY_IMPORT
                            && excelType.value() == ExcelDirection.ONLY_EXPORT) {
                        continue;
                    }
                }
            }
            // 命中条件：字段标注了 @ExcelProperty 且 converter = ImagesConvert
            // 显式 index 优先，否则按声明顺序的 colIndex
            ExcelProperty excelProperty = field.getAnnotation(ExcelProperty.class);
            if (excelProperty != null && excelProperty.converter() == ImagesConvert.class) {
                int targetCol = excelProperty.index() != -1 ? excelProperty.index() : colIndex;
                result.imageColumnIndexes.add(targetCol);
                // 一次性扫列宽（避免运行时反射）
                Integer width = readColumnWidthFromField(field);
                result.imageColumnWidths.put(targetCol, width);
                // 一次性扫 @ExcelImageProperty 注解（运行时不反射）
                result.imageColumnAnnotations.put(targetCol, field.getAnnotation(ExcelImageProperty.class));
            }
            colIndex++;
        }
        return result;
    }

    /**
     * 从 field 读取 {@code @ColumnWidth} 注解的列宽（POI 单位 = 字符数 × 256）。
     * <p>仅在构造时调一次（一次 handler 实例只跑一次），对运行时性能无影响。
     *
     * @param field head 类中的字段
     * @return POI 列宽单位；未注解时返回 {@link #FALLBACK_BASE_COLUMN_WIDTH_CHARS} × 256
     */
    private static int readColumnWidthFromField(Field field) {
        try {
            ColumnWidth columnWidthAnn = field.getAnnotation(ColumnWidth.class);
            if (columnWidthAnn != null && columnWidthAnn.value() > 0) {
                // POI 单位 = chars × 256
                return columnWidthAnn.value() * 256;
            }
        } catch (Exception ex) {
            log.warn("[ImagesSheetWriteHandler] 读取 @ColumnWidth 失败: {}", ex.getMessage());
        }
        // 没标 @ColumnWidth 或读失败：用默认列宽
        return FALLBACK_BASE_COLUMN_WIDTH_CHARS * 256;
    }

    /**
     * 读取当前列对应的 {@link ExcelImageProperty} 注解（构造时一次性扫好，运行时 O(1) 直接 map.get）。
     *
     * @param columnIndex 列索引
     * @return 注解实例；未标注解 → {@code null}；非图片列（无参构造） → 也返回 {@code null}
     */
    private ExcelImageProperty resolveColumnAnnotation(int columnIndex) {
        return imageColumnAnnotationMap.get(columnIndex);
    }

    /**
     * 计算有效 maxBytes 覆盖值：注解设置 > 全局默认。
     *
     * @param ann 字段注解（可能为 null）
     * @return 覆盖的字节数；{@code null} → 让 {@link FileProcessUtils} 用全局默认
     */
    private static Long effectiveMaxBytesOverride(ExcelImageProperty ann) {
        if (ann != null && ann.maxFileSizeMB() > 0) {
            return (long) ann.maxFileSizeMB() * 1024 * 1024;
        }
        return null;
    }

    // =====================================================================
    // @ExcelImageProperty 注解读取器（NaN → 全局默认，否则用注解值）
    // =====================================================================

    /** 水平边距：单位 字符宽 */
    private static float readHorizontalMarginChars(ExcelImageProperty ann) {
        if (ann != null && !Float.isNaN(ann.horizontalMarginChars())) {
            return ann.horizontalMarginChars();
        }
        return IMAGE_HORIZONTAL_MARGIN_CHARS;
    }

    /** 垂直边距：单位 字符宽 */
    private static float readVerticalMarginChars(ExcelImageProperty ann) {
        if (ann != null && !Float.isNaN(ann.verticalMarginChars())) {
            return ann.verticalMarginChars();
        }
        return IMAGE_VERTICAL_MARGIN_CHARS;
    }

    /** 多图间距：单位 字符宽 */
    private static float readImageGapChars(ExcelImageProperty ann) {
        if (ann != null && !Float.isNaN(ann.imageGapChars())) {
            return ann.imageGapChars();
        }
        return IMAGE_GAP_CHARS;
    }

    /** 单图渲染高度上限倍数（相对列宽字符数 × 字符宽） */
    private static double readMaxRenderHeightMultiple(ExcelImageProperty ann) {
        if (ann != null && !Double.isNaN(ann.maxRenderHeightMultiple())) {
            return ann.maxRenderHeightMultiple();
        }
        return MAX_IMAGE_RENDER_HEIGHT_MULTIPLE;
    }

    /**
     * 构造时扫描结果（图片列索引 + 列宽）。
     */
    private static final class ScanResult {
        final Set<Integer> imageColumnIndexes = new HashSet<>();
        final Map<Integer, Integer> imageColumnWidths = new HashMap<>();
        /**
         * 列索引 → 该列字段的 {@link ExcelImageProperty} 注解
         */
        final Map<Integer, ExcelImageProperty> imageColumnAnnotations = new HashMap<>();
    }

    // ====================================================================================
    // 第一步：afterCellDataConverted —— 缓存路径，byte[] 不读
    // ====================================================================================
    /**
     * 在 cell 数据转换完成后（Converter 返回 {@code WriteCellData} 后）回调。
     *
     * <p><b>v3 核心</b>：本阶段只缓存路径字符串，<b>不读取 byte[]</b>。
     * 真正的字节读取发生在 {@link #afterCellDispose} 阶段，byte[] 持有时间被极大压缩。
     *
     * <h4>执行步骤</h4>
     * <ol>
     *   <li>跳过表头 / 非图片列</li>
     *   <li>首次遇到某列时从 {@code @ColumnWidth} 注解读取原始列宽并缓存</li>
     *   <li>从 cellData 提取路径字符串（或标记 Converter 已加载 byte[]）</li>
     *   <li>把 cellData 类型置为 EMPTY，清空 stringValue 和 imageDataList：
     *     <ul>
     *       <li>避免 EasyExcel 默认绘制图片导致重复</li>
     *       <li>让 {@code LongestMatchColumnWidthStyleStrategy} 按 type=EMPTY 跳过本列（{@code dataLength} 返回 -1）</li>
     *     </ul>
     *   </li>
     * </ol>
     */
    @Override
    public void afterCellDataConverted(CellWriteHandlerContext context) {
        // 兜底：context 或 head 为空直接返回
        if (context == null || Boolean.TRUE.equals(context.getHead())) return;
        // cellData 为空（EasyExcel 内部某种异常情况）直接返回
        WriteCellData<?> cellData = context.getFirstCellData();
        if (cellData == null) return;

        // 三个核心索引：行/列/sheet，用于缓存和过滤
        int rowIndex = context.getRowIndex();
        int columnIndex = context.getColumnIndex();
        int sheetIndex = currentSheetIndex(context.getWriteSheetHolder());

        // 列过滤：仅处理图片列，避免误处理普通文本字段（如客户名、字典标签）
        // 注意：imageColumnIndexes 为 null 表示无参构造的"全列接管"模式（兜底）
        if (imageColumnIndexes != null && !imageColumnIndexes.contains(columnIndex)) {
            return;
        }

        try {
            // 【关键修复】之前版本删掉了这段列宽填充，导致 perSheetOriginalColumnWidthMap 永远为空！
            // 每个 sheet 第一次出现时一次性把 imageColumnWidthMap（构造时扫好的）拷贝过去。
            // 之后 afterRowDispose 步骤 1 用 originalColumnWidthPerColumnMap 算单图目标宽时，
            // 拿到的就是 @ColumnWidth 的真实列宽（不是兜底 20 chars）。
            // 否则所有列都会按 20 chars 兜底计算 —— 这是"宽高严重失衡"的根本原因！
            Map<Integer, Integer> originalColumnWidthPerColumnMap =
                    perSheetOriginalColumnWidthMap.computeIfAbsent(sheetIndex, k -> new HashMap<>(imageColumnWidthMap));

            // 提取路径字符串（来自 ImagesConvert.processStringPath） 或
            // 提取已读 byte[] 的 ImageData 列表（来自 ImagesConvert.processBytes 等）
            String pathString = extractPathString(cellData);
            List<? extends ImageData> inCellImages = cellData.getImageDataList();

            // 既没路径也没图，不是图片列 → 直接返回
            if (pathString == null && (inCellImages == null || inCellImages.isEmpty())) {
                // 【关键】Converter 在 List<File>/byte[]/InputStream 超限时返回 STRING("")。
                // 这里把 cellData.setType(EMPTY) —— LongestMatchColumnWidthStyleStrategy 看到 EMPTY 返回 -1，
                // 避免它用空字符串长度把列宽设为 0，破坏 @ColumnWidth。
                // （Converter 在 overLimit 路径已经丢掉了所有图，不需要 Handler 二次处理）
                cellData.setType(CellDataTypeEnum.EMPTY);
                cellData.setStringValue("");
                cellData.setImageDataList(new ArrayList<>());
                return;
            }

            String rowKey = rowIndex + "_" + columnIndex;

            if (pathString != null && !pathString.isEmpty()) {
                // === STRING 路径场景：仅缓存路径字符串 ===
                // 真正的 byte[] 读取放到 afterCellDispose 中，最大化缩短 byte[] 驻留时间
                pendingRowPathMap.put(rowKey, pathString);
                // 【关键】把 cellData.setType(EMPTY) —— LongestMatchColumnWidthStyleStrategy 看到 type=EMPTY 返回 -1 跳过列宽自适应，
                //         否则它会用 path 长度撑大列宽，破坏 @ColumnWidth 注解。
                //         stringValue 保留，Handler 后续能从 cellData.stringValue 拿到 path。
                cellData.setType(CellDataTypeEnum.EMPTY);
                cellData.setStringValue("");
                cellData.setImageDataList(new ArrayList<>());
            } else if (inCellImages != null && !inCellImages.isEmpty()) {
                // === Converter 已读完 byte[] 场景：缓存空路径（用 "" 标记）===
                // afterCellDispose 时看到 pathString == "" 就直接从 pendingRowImageBytesMap 消费
                // （这种情况多见于业务直接传入 File / InputStream）
                pendingRowPathMap.put(rowKey, "");

                // =====================================================================
                // 【关键】把 byte[] 转移到 Handler 自己的缓存 + 清空 cellData.imageDataList，
                //         防止 EasyExcel/POI 默认 channel 把图片自动画一遍，导致和 Handler 重复。
                // 【去重】同一 byte[] 引用可能因 Converter 对 List 元素的误处理出现多次，
                //         必须去重避免同一张图被重复 addPicture。
                //
                // 【修复】此处之前漏了「setType(EMPTY) + 清空 imageDataList」——
                //          EasyExcel 内置的 AddPictureDataHandler 会基于 cellData.imageDataList
                //          用默认规则（原图尺寸、col1=col2, dx1=0, dy1=0）自动绘制一遍，
                //          导致和 Handler 自己的精确绘制重叠 = 图片数量翻倍。
                // =====================================================================
                Set<byte[]> seen = new HashSet<>();
                List<byte[]> imageBytesList = new ArrayList<>(inCellImages.size());
                for (ImageData img : inCellImages) {
                    if (img != null && img.getImage() != null && img.getImage().length > 0) {
                        byte[] imgBytes = img.getImage();
                        if (!seen.contains(imgBytes)) {
                            seen.add(imgBytes);
                            imageBytesList.add(imgBytes);
                        }
                    }
                }
                if (!imageBytesList.isEmpty()) {
                    pendingRowImageBytesMap.put(rowKey, imageBytesList);
                }
                // 关键修复：清空 cellData 上的图片数据 + 设为 EMPTY，
                //   防止 EasyExcel/POI 内置通道自动绘制一次（导致翻倍）。
                cellData.setType(CellDataTypeEnum.EMPTY);
                cellData.setStringValue("");
                cellData.setImageDataList(new ArrayList<>());
            } else {
                // 异常路径：理论上前面已经 return 了，这里再防一次
                return;
            }

        } catch (Exception e) {
            log.error("[ImagesSheetWriteHandler] afterCellDataConverted 失败: {}", e.getMessage(), e);
        }
    }

    /**
     * 从 cellData 提取 STRING 路径。
     * <p>当前实现：直接读 {@code cellData.getStringValue()}，<b>不依赖 type</b>。
     * 这样 Converter 可以设 {@code type=EMPTY}（让 {@code LongestMatchColumnWidthStyleStrategy} 跳过列宽自适应），
     * 但 Handler 仍能从 {@code stringValue} 拿到原始路径。
     * <p>同时检查 {@code pathString} 以 {@link FileConstants#FILE_PATH_SEPARATOR}（{@code ||}）开头，
     * 避免普通字符串字段（如客户名）被误判成"图片路径"。
     */
    private String extractPathString(WriteCellData<?> cellData) {
        if (cellData == null) {
            return null;
        }
        String value = cellData.getStringValue();
        if (value == null || value.isEmpty()) {
            return null;
        }
        // 只识别包含 FILE_PATH_SEPARATOR（||）的路径字符串（多张图拼接的格式）
        // 单个路径也能识别（Converter 返回 STRING 单路径时）
        if (!value.contains(FileConstants.FILE_PATH_SEPARATOR) && !looksLikeFilePath(value)) {
            return null;
        }
        return value;
    }

    /**
     * 简单判断字符串是否像文件路径（包含盘符、http://、/、\\ 等）。
     * <p>避免把客户名/订单号等普通字符串误判成图片路径。
     */
    private boolean looksLikeFilePath(String s) {
        if (s == null || s.isEmpty()) return false;
        return s.startsWith("http://") || s.startsWith("https://")
                || s.startsWith("/") || s.matches("^[a-zA-Z]:[\\\\/].*")
                || s.startsWith("file:") || s.startsWith("./") || s.startsWith("../");
    }

    // ====================================================================================
    // 第二步：afterCellDispose —— 拉图 → addPicture → 立即置 null → 算 sizes
    //   关键：byte[] 用一次 addPicture 就丢，绝不在 Handler 持有！
    //   落盘模式下，POI write(byte[]) 到 PackagePart 时 byte[] 复制到磁盘 → 原始 byte[] 可 GC
    // ====================================================================================
    /**
     * 在 cell 已经写入到 POI {@code Sheet} 对象之后回调。
     *
     * <p><b>v3 核心</b>：拉取图片字节流 → {@code workbook.addPicture}（POI 落盘模式下数据写到磁盘）→ 立即清除 byte[] 引用 → 缓存 pictureIdx。
     *
     * <h4>执行步骤</h4>
     * <ol>
     *   <li>读取 {@code cellData} 中残留的 byte[]（{@code cellData.imageDataList}）或者根据路径重新拉取</li>
     *   <li>逐张调用 {@code workbook.addPicture(buf, type)}，POI 会把数据写到 PackagePart（落盘模式 = 磁盘临时文件）</li>
     *   <li>立即把 {@code byteBuffers[i]} 置 null，让 GC 能及时回收</li>
     *   <li>缓存 {@code pictureIdx}（int，几字节）和图片原始尺寸到行级缓存</li>
     *   <li>清空 {@code cellData} 上的 byte[] 引用，避免 cellData 在行结束前持有数据</li>
     * </ol>
     *
     * <p>本方法<b>不画图</b>，也不设行高——行级处理在 {@link #afterRowDispose}。
     */
    @Override
    public void afterCellDispose(CellWriteHandlerContext context) {
        // 兜底：context 或 head 为空直接返回
        if (context == null || Boolean.TRUE.equals(context.getHead())) return;

        long t0 = System.nanoTime();
        int rowIndex = context.getRowIndex();
        int columnIndex = context.getColumnIndex();
        // 取当前 sheet（WriteSheetHolder → Sheet）
        Sheet sheet = context.getWriteSheetHolder().getSheet();
        // 兜底：sheet 为空直接返回
        if (sheet == null) return;
        // 取 row + cell：先取行，再取该行某列
        Row row = sheet.getRow(rowIndex);
        Cell cell = row != null ? row.getCell(columnIndex) : null;
        // 兜底：cell 为空（行不存在或该 cell 未创建）直接返回
        if (cell == null) return;

        // rowKey = rowIndex + "_" + columnIndex，与 afterCellDataConverted 写入时的格式一致
        String rowKey = rowIndex + "_" + columnIndex;
        // 从行级缓存取路径字符串（afterCellDataConverted 时写入）
        String pathString = pendingRowPathMap.get(rowKey);
        // pathString == null 说明这个 cell 不是图列（已被早 return）或已被处理过
        if (pathString == null) return;

        // 读取当前列的 @ExcelImageProperty 注解（构造时一次性扫好到 imageColumnAnnotationMap，运行时 O(1) 取）
        ExcelImageProperty columnAnnotation = resolveColumnAnnotation(columnIndex);

        WriteCellData<?> cellData = context.getFirstCellData();
        // 兜底：cellData 为空（EasyExcel 内部异常）时清掉路径缓存，避免悬挂引用
        if (cellData == null) {
            pendingRowPathMap.remove(rowKey);
            return;
        }

        Workbook workbook = sheet.getWorkbook();
        // pictureIdxList：保存每张图在 workbook.pictures 中的索引，画图时用 pictureIdx
        // sizes：保存每张图的原始宽高，afterRowDispose 时用于计算渲染宽高
        List<Integer> pictureIdxList = new ArrayList<>();
        List<int[]> sizes = new ArrayList<>();

        try {
            // 每张图读完立即 addPicture → POI 复制 → 局部变量出作用域即可 GC
            // 一行最多只持有 1 张图的 byte[]（约 1MB）→ 大幅降低峰值
            if (!pathString.isEmpty()) {
                // === STRING 路径场景：流式拉图（每张图回调一次 addPicture）===
                // 调用方可通过 @ExcelImageProperty(maxFileSizeMB = N) 覆盖默认上限
                Long maxBytesOverride = effectiveMaxBytesOverride(columnAnnotation);
                FileProcessUtils.StringPathResult result =
                        FileProcessUtils.processStringPathStream(pathString, rowKey,
                                (idx, buf) -> addPictureAndRecord(workbook, pictureIdxList, sizes, buf),
                                maxBytesOverride);
                if (result.overLimit) {
                    // 该 cell 单 cell 总文件大小超过 MAX_FILE_BYTES：不画图，把 fallbackPath 当文本写入
                    cell.setCellValue(result.fallbackPath);
                    // 【关键】同步把 cellData 改成 STRING，否则 EasyExcel 后续会用 cellData 覆盖 cell
                    // cellData 已经 setType(EMPTY)，写完 cell 后 EasyExcel 会重新读 cellData → 把 STRING 覆盖成 EMPTY
                    cellData.setType(CellDataTypeEnum.STRING);
                    cellData.setStringValue(result.fallbackPath);
                    cellData.setImageDataList(new ArrayList<>());
                    pendingRowPathMap.remove(rowKey);
                    return;
                }
                if (pictureIdxList.isEmpty()) {
                    // 所有图都拉失败（文件不存在 / 权限等）：把原始路径当文本写入
                    cell.setCellValue(pathString);
                    // 【关键】同步把 cellData 改成 STRING
                    cellData.setType(CellDataTypeEnum.STRING);
                    cellData.setStringValue(pathString);
                    cellData.setImageDataList(new ArrayList<>());
                    pendingRowPathMap.remove(rowKey);
                    return;
                }
            } else {
                // === Converter 已读完 byte[] 场景：边遍历边 addPicture ===
                // byte[] 已从 cellData 转移到 Handler 的 pendingRowImageBytesMap（afterCellDataConverted 时复制），
                // 这里直接从 Handler 缓存消费，避免 cellData.imageDataList 上的引用（cellData 会被 POI 持有）
                List<byte[]> cellImgs = pendingRowImageBytesMap.remove(rowKey);
                if (cellImgs != null) {
                    for (byte[] buf : cellImgs) {
                        if (buf != null && buf.length > 0) {
                            addPictureAndRecord(workbook, pictureIdxList, sizes, buf);
                            // buf 是循环变量，下次迭代会被覆盖（局部变量，引用消失即可 GC）
                        }
                    }
                    // 立即清引用：让本行图片 byte[] 不再被 Handler 持有
                    cellImgs.clear();
                }
                if (pictureIdxList.isEmpty()) {
                    pendingRowPathMap.remove(rowKey);
                    return;
                }
            }

            // =====================================================================
            // 第二步：清 cellData 上的 byte[] 引用 + 同步 cellData 状态为 STRING(空)
            // =====================================================================
            // cellData 是 EasyExcel 内部对象，可能在 row 完成前一直被引用。
            // 主动清空 imageDataList 确保 cellData 不再持有 byte[]。
            // 【不要 setType(EMPTY)】—— 保持 STRING 类型，让 LongestMatchColumnWidthStyleStrategy 能正确计算列宽。
            cellData.setImageDataList(new ArrayList<>());
            if (cellData.getType() == CellDataTypeEnum.EMPTY) {
                // 如果之前是 EMPTY（Converter 走 byte[]/File/InputStream 分支时设的），改为 STRING
                cellData.setType(CellDataTypeEnum.STRING);
                cellData.setStringValue("");
            }

            // =====================================================================
            // 第三步：缓存 pictureIdx + sizes（行级缓存，行结束统一清）
            // =====================================================================
            // 注意：本方法只缓存"元数据"（pictureIdx 和 sizes），完全不缓存 byte[]
            pendingRowPictureIdxMap.put(rowKey, pictureIdxList);
            pendingRowCellImageSizesListMap.put(rowKey, sizes);

        } catch (Exception e) {
            log.error("[ImagesSheetWriteHandler] afterCellDispose 失败 [{}]: {}", rowKey, e.getMessage(), e);
        } finally {
            // finally 里再清一次路径缓存，确保异常路径下也能清理（防止 rowCache 泄漏）
            pendingRowPathMap.remove(rowKey);
        }
    }

    /**
     * 单张图的 addPicture + 尺寸解析 + 索引记录（v4 流式核心）。
     * <p>每次调用：
     * <ol>
     *   <li>{@code workbook.addPicture(buf, type)}：POI 复制 byte[] 到 PackagePart</li>
     *   <li>读图片尺寸（仅 header，几 ms）</li>
     *   <li>把 pictureIdx 和 sizes 加到行级缓存</li>
     * </ol>
     * <p>调用返回后，{@code buf} 局部变量出作用域即可被 GC。
     *
     * @param workbook       POI Workbook
     * @param pictureIdxList 行级 pictureIdx 累积
     * @param sizes          行级图片尺寸累积
     * @param buf            单张图的 byte[]
     * @return true=成功消费，false=失败（让消费方继续下一张）
     */
    private boolean addPictureAndRecord(Workbook workbook,
                                         List<Integer> pictureIdxList,
                                         List<int[]> sizes,
                                         byte[] buf) {
        if (buf == null || buf.length == 0) {
            // 空数据让消费方 continue，但契约里 false 是"停止"——所以这里返回 true 让调用方继续
            // 业务上 buf 为空不太可能（FileProcessUtils 已经过滤了空数据）
            return true;
        }
        try {
            // 检测类型 → POI 类型常量
            ImageData.ImageType type = FileProcessUtils.detectImageType(buf);
            int pictureType = toPoiPictureType(type);
            // 落盘模式：addPicture 会把 byte[] 复制到 PackagePart（磁盘），原始 buf 可 GC
            // 内存模式：byte[] 复制到 XSSFPictureData._data，原始 buf 可 GC
            int pictureIdx = workbook.addPicture(buf, pictureType);
            pictureIdxList.add(pictureIdx);
            sizes.add(readImageSizeFast(buf, type));
            // buf 是方法参数，调用结束后即出方法作用域，可 GC
            return true;
        } catch (Exception e) {
            log.error("[ImagesSheetWriteHandler] addPicture 失败: {}", e.getMessage());
            return false;
        }
    }

    /**
     * 读取图片真实宽高（像素）。仅解析 header，不加载全图。
     * <p>接收 byte[] 而不是 ImageData——避免持有 ImageData 引用（ImageData 内部 byte[] 字段）。
     */
    private int[] readImageSizeFast(byte[] buf, ImageData.ImageType type) {
        // 空数据：兜底 200x200
        if (buf == null || buf.length == 0) {
            return new int[]{DEFAULT_IMAGE_WIDTH_PIXELS, DEFAULT_IMAGE_HEIGHT_PIXELS};
        }
        // 用 ImageIO 的 ImageInputStream 解析图片 header：
        //   - 仅解析 header，不加载全图 → 速度极快（几 ms）
        //   - 比 BufferedImage 读取省内存（不缓存像素）
        //   - try-with-resources 自动关流
        try (ImageInputStream iis = ImageIO.createImageInputStream(new ByteArrayInputStream(buf))) {
            if (iis != null) {
                Iterator<ImageReader> readers = ImageIO.getImageReaders(iis);
                if (readers.hasNext()) {
                    ImageReader reader = readers.next();
                    try {
                        reader.setInput(iis);
                        int w = reader.getWidth(0);
                        int h = reader.getHeight(0);
                        if (w > 0 && h > 0) return new int[]{w, h};
                    } finally {
                        reader.dispose();  // 必须 dispose，否则 ImageReader 会泄漏 native 资源
                    }
                }
            }
        } catch (Exception ignored) {
            log.warn("[ImagesSheetWriteHandler] 无法解析图片尺寸，使用默认 200x200");
        }
        return new int[]{DEFAULT_IMAGE_WIDTH_PIXELS, DEFAULT_IMAGE_HEIGHT_PIXELS};
    }

    // ====================================================================================
    // 第三步：afterRowDispose —— 算行高 → 画图 → 清缓存
    // ====================================================================================
    /**
     * 一行数据全部 cell 处理完后回调。
     *
     * <p><b>v3 关键</b>：本阶段做两件事——
     * <ol>
     *   <li>算整行所有 cell 的最大渲染高 → {@code row.setHeight()}（用真行高画图才能 dy1 居中）</li>
     *   <li>遍历本行所有 cell，调用 {@link #drawImagesInCell} 用 pictureIdx 创建 Picture anchor 关联到 sheet</li>
     * </ol>
     *
     * <p>列宽还原逻辑：<b>仅首次出现某 sheet 时</b>调用 {@code sheet.setColumnWidth} 还原原始列宽
     * （LongestMatchColumnWidthStyleStrategy 在处理过程中可能把列宽撑大，需要还原）。
     *
     * <p>最后清理该行的所有缓存。
     */
    @Override
    public void afterRowDispose(RowWriteHandlerContext context) {
        // 兜底：context 或 head 为空直接返回
        if (context == null || Boolean.TRUE.equals(context.getHead())) return;
        Row row = context.getRow();
        if (row == null) return;

        int rowIndex = context.getRowIndex();
        int sheetIndex = currentSheetIndex(context.getWriteSheetHolder());
        Map<Integer, Integer> originalColumnWidthPerColumnMap = perSheetOriginalColumnWidthMap.get(sheetIndex);

        // =====================================================================
        // 列宽还原（仅首次）
        // =====================================================================
        // LongestMatchColumnWidthStyleStrategy 在处理过程中会把图片列的列宽撑大（用 stringValue.getBytes().length）
        // 我们在 afterCellDataConverted 已经把 stringValue 清空了，所以它会跳过图列
        // 但首行 Head 可能被撑大（按表头名长度），这里仅在每个 sheet 首次出现时一次性还原成 @ColumnWidth
        // processedSheetIndexes.add() 返回 true = 该 sheet 是首次出现
        if (originalColumnWidthPerColumnMap != null && processedSheetIndexes.add(sheetIndex)) {
            long t = System.nanoTime();
            Sheet sheet = row.getSheet();
            for (Map.Entry<Integer, Integer> cwEntry : originalColumnWidthPerColumnMap.entrySet()) {
                int columnIndex = cwEntry.getKey();
                int origWidthUnits = cwEntry.getValue();
                if (origWidthUnits > 0) {
                    sheet.setColumnWidth(columnIndex, origWidthUnits);
                }
            }
        }

        // =====================================================================
        // 收集该行所有 cellKey
        // =====================================================================
        // rowKey 格式："rowIdx_colIdx"，用 startsWith(rowPrefix) 过滤出本行的所有图 cell
        String rowPrefix = rowIndex + "_";
        List<String> rowCellKeys = new ArrayList<>();
        for (String key : pendingRowPictureIdxMap.keySet()) {
            if (key.startsWith(rowPrefix)) rowCellKeys.add(key);
        }
        if (rowCellKeys.isEmpty()) {
            // 该行没有任何图 cell（可能是空行或非图列）→ 直接清缓存
            clearRowCache(rowPrefix);
            return;
        }

        // =====================================================================
        // 步骤 1：算每 cell 的渲染宽高（每个 cell 独立按自己的列宽 + 注解算，不再统一）
        // =====================================================================
        // rowMaxRenderHPx：本行所有 cell 中最高的渲染高 + 自身的 verticalMargin
        // cellRenderWidthsPxMap/HeightsPxMap：每 cell 的渲染宽高，用于画图时的 anchor
        // cellColIndexMap：rowKey → 列索引
        float rowMaxRenderHPx = 0f;
        Map<String, float[]> cellRenderWidthsPxMap = new HashMap<>();
        Map<String, float[]> cellRenderHeightsPxMap = new HashMap<>();
        Map<String, Integer> cellColIndexMap = new HashMap<>();
        // 每 cell 的 verticalMargin（= 注解值或全局默认），用于行高计算
        Map<String, Float> cellVerticalMarginPxMap = new HashMap<>();

        for (String rowKey : rowCellKeys) {
            // rowKey = "rowIdx_colIdx"，下划线分割
            int sepIdx = rowKey.indexOf('_');
            int columnIndex = Integer.parseInt(rowKey.substring(sepIdx + 1));
            cellColIndexMap.put(rowKey, columnIndex);

            List<int[]> sizes = pendingRowCellImageSizesListMap.get(rowKey);
            if (sizes == null || sizes.isEmpty()) continue;
            int n = sizes.size();

            // 取本列基础列宽（@ColumnWidth 缓存），回退到默认值
            Integer base2 = originalColumnWidthPerColumnMap != null
                    ? originalColumnWidthPerColumnMap.get(columnIndex) : null;
            int baseWidthUnits2 = (base2 != null) ? base2 : FALLBACK_BASE_COLUMN_WIDTH_CHARS * 256;
            int baseColWidthChars = baseWidthUnits2 / 256;
            float baseColWidthPx = baseWidthUnits2 / 256f * Units.DEFAULT_CHARACTER_WIDTH;

            // @ExcelImageProperty 注解参数（之前完全忽略注解！）
            // 注解未设（NaN）→ 用全局默认；注解设了 → 用注解值。
            ExcelImageProperty ann = resolveColumnAnnotation(columnIndex);

            float horizontalMarginChars = readHorizontalMarginChars(ann);
            float verticalMarginChars = readVerticalMarginChars(ann);
            float imageGapChars = readImageGapChars(ann);
            double maxRenderHeightMultiple = readMaxRenderHeightMultiple(ann);

            float horizontalMarginPx = horizontalMarginChars * Units.DEFAULT_CHARACTER_WIDTH;
            float verticalMarginPx = verticalMarginChars * Units.DEFAULT_CHARACTER_WIDTH;
            float gapPx = imageGapChars * Units.DEFAULT_CHARACTER_WIDTH;

            // 内容区 = 列宽 - 左右 margin
            float baseContentAreaPx = baseColWidthPx - 2f * horizontalMarginPx;
            if (baseContentAreaPx < 1f) baseContentAreaPx = 1f;
            // 单图目标宽 = (内容区 - (n-1) × gap) / n
            float singleSlotTargetPx = (baseContentAreaPx - (n - 1) * gapPx) / Math.max(n, 1);
            if (singleSlotTargetPx < 1f) singleSlotTargetPx = 1f;

            // 单图渲染高度上限 = 列宽字符数 × 注解倍数 × 字符宽
            float maxRenderHPx = (float) (baseColWidthChars
                    * maxRenderHeightMultiple * Units.DEFAULT_CHARACTER_WIDTH);

            float[] renderWidthsPx = new float[n];
            float[] renderHeightsPx = new float[n];
            float cellMaxH = 0f;
            for (int i = 0; i < n; i++) {
                int origW = DEFAULT_IMAGE_WIDTH_PIXELS;
                int origH = DEFAULT_IMAGE_HEIGHT_PIXELS;
                if (i < sizes.size()) {
                    origW = sizes.get(i)[0];
                    origH = sizes.get(i)[1];
                }
                if (origW <= 0) origW = 1;
                if (origH <= 0) origH = 1;
                float ratio = (float) origH / origW;
                // 单图目标渲染宽：如果原图比目标位还小，按原图宽渲染（不放大）；
                // 如果原图比目标位大，等比缩小到刚好填满 singleSlotTargetPx。
                float renderW;
                if ((float) origW <= singleSlotTargetPx) {
                    renderW = (float) origW; // 不放大
                } else {
                    renderW = singleSlotTargetPx;
                }
                // 按原图比例算渲染高
                float renderH = renderW * ratio;
                // 超高：等比缩小
                if (renderH > maxRenderHPx) {
                    float scale = maxRenderHPx / renderH;
                    renderH = maxRenderHPx;
                    renderW = renderW * scale;
                }
                renderWidthsPx[i] = renderW;
                renderHeightsPx[i] = renderH;
                // 取本 cell 最高图（含 verticalMargin 后用于行高）
                if (renderH > cellMaxH) cellMaxH = renderH;
            }
            cellRenderWidthsPxMap.put(rowKey, renderWidthsPx);
            cellRenderHeightsPxMap.put(rowKey, renderHeightsPx);
            cellVerticalMarginPxMap.put(rowKey, verticalMarginPx);

            // 本 cell 占用行高 = 该 cell 最高图 + 该 cell 的 verticalMargin × 2
            float cellRowHeightPx = cellMaxH + 2f * verticalMarginPx;
            if (cellRowHeightPx > rowMaxRenderHPx) rowMaxRenderHPx = cellRowHeightPx;
        }

        // =====================================================================
        // 步骤 2：写行高
        // =====================================================================
        // 注意：rowMaxRenderHPx 在步骤 1 已经包含了 max(cellMaxH + 2 * cellVerticalMarginPx)，
        //       所以这里不再额外加 verticalMargin（否则会双重计算，且会用错的默认值）。
        int rowHeightTwips = MIN_ROW_HEIGHT_TWIPS;
        if (rowMaxRenderHPx > 0f) {
            int newRowHeightTwips = Math.round(rowMaxRenderHPx * TWIPS_PER_PX);
            // 兜底：避免 0 行高导致的 Excel 警告
            if (newRowHeightTwips < MIN_ROW_HEIGHT_TWIPS) newRowHeightTwips = MIN_ROW_HEIGHT_TWIPS;
            rowHeightTwips = newRowHeightTwips;
            row.setHeight((short) newRowHeightTwips);
        }
        // =====================================================================
        // 步骤 3：遍历本行所有 cell 画图（用真行高 + 真列宽）
        // =====================================================================
        Workbook workbook = row.getSheet().getWorkbook();
        Sheet sheet = row.getSheet();

        // 遍历本行所有图 cell，逐个画图
        for (String rowKey : rowCellKeys) {
            // 从缓存取列索引（步骤 1 已一次性解析过）
            Integer columnIndex = cellColIndexMap.get(rowKey);
            if (columnIndex == null) continue;

            // 从缓存取 pictureIdx 列表（addPicture 后的 workbook 图索引）
            List<Integer> pictureIdxList = pendingRowPictureIdxMap.get(rowKey);
            if (pictureIdxList == null || pictureIdxList.isEmpty()) continue;

            // 取本 cell（行已存在 row，但 cell 可能没创建）
            Cell cell = row.getCell(columnIndex);
            if (cell == null) continue;

            // 取本 cell 算好的渲染宽高（步骤 1 已算）
            float[] renderWidthsPx = cellRenderWidthsPxMap.get(rowKey);
            float[] renderHeightsPx = cellRenderHeightsPxMap.get(rowKey);
            if (renderWidthsPx == null || renderHeightsPx == null) continue;

            // 取本列原始列宽（字符数）→ 用于 drawImagesInCell 内的 px 换算
            Integer origBase = originalColumnWidthPerColumnMap != null
                    ? originalColumnWidthPerColumnMap.get(columnIndex) : null;
            int originalColWidthChars = (origBase != null) ? origBase / 256 : FALLBACK_BASE_COLUMN_WIDTH_CHARS;

            try {
                // 画图：用 pictureIdx + 渲染宽高 + 真行高 + 真列宽 → 创建 anchor → createPicture
                drawImagesInCell(workbook, sheet, cell, pictureIdxList,
                        renderWidthsPx, renderHeightsPx, columnIndex, rowHeightTwips, originalColWidthChars);
            } catch (Exception e) {
                // 单 cell 画图失败不影响其他 cell（try/catch 在循环内）
                log.error("[ImagesSheetWriteHandler] afterRowDispose 画图失败 [{}]: {}",
                        rowKey, e.getMessage(), e);
            }
        }

        // =====================================================================
        // 步骤 3.5：最后强制再设置一次行高
        // =====================================================================
        // 行高计算好后，先设 setHeight() → 画图 → 然后立即再设一次。
        // 原因：本行 afterRowDispose 之后，Excel 可能因为本行其他 cell 的文本 wrap
        //       再次调高行高；而 DONT_MOVE_AND_RESIZE 锚点不会跟随行高变化，
        //       因此 rowHeightTwips 需要提前确定且不再被修改。
        //       这里"再设一次"是兜底：如果该行实际设过的行高大于 rowHeightTwips，仍保留较大值（避免裁掉其他内容）
        if (rowMaxRenderHPx > 0f) {
            // 只在该行确实有图片 cell 时才"覆盖"行高；否则保留文字自适应的行高
            // 这里只设 rowMaxRenderHPx 算出来的 twips，不去主动改更大
            row.setHeight((short) rowHeightTwips);
        }

        // =====================================================================
        // 步骤 4：清理该行行级缓存
        // =====================================================================
        // 该行的所有图片都已画完，缓存（pathString/sizes/pictureIdx）可以释放
        // 三个缓存都是 per-row 的（key 前缀 rowIdx_），一次性清理
        clearRowCache(rowPrefix);
    }

    /**
     * 按 row 前缀清理行级缓存（路径、尺寸、pictureIdx、byte[]）。
     *
     * @param rowPrefix 行 key 前缀（{@code rowIndex + "_"}）
     */
    private void clearRowCache(String rowPrefix) {
        // 4 个 Map 都是 per-row 的（key = "rowIdx_colIdx"），用 startsWith 过滤后 removeIf 一次性清
        // 这样做的好处：
        //   - O(n) 总扫描，n 是当前缓存总行数（不是 100w 行全表）
        //   - 避免逐个 remove 的 hash 散列开销
        //   - removeIf 是 Map.EntrySet 的默认实现，JDK 8+ 高效
        pendingRowPathMap.entrySet().removeIf(e -> e.getKey().startsWith(rowPrefix));
        pendingRowCellImageSizesListMap.entrySet().removeIf(e -> e.getKey().startsWith(rowPrefix));
        pendingRowPictureIdxMap.entrySet().removeIf(e -> e.getKey().startsWith(rowPrefix));
        pendingRowImageBytesMap.entrySet().removeIf(e -> e.getKey().startsWith(rowPrefix));
    }

    // ====================================================================================
    // 第四步：afterWorkbookDispose —— 清缓存
    //   PackagePart 清理由业务侧（ExcelUtils）调 PoiTempFileStrategy 完成。
    // ====================================================================================
    /**
     * 整个 workbook 处理完后回调。
     *
     * <p>清理 Handler 内部的所有缓存：
     * <ul>
     *   <li>{@code perSheetOriginalColumnWidthMap}</li>
     *   <li>{@code processedSheetIndexes}</li>
     *   <li>{@code pendingRowPathMap}</li>
     *   <li>{@code pendingRowCellImageSizesListMap}</li>
     *   <li>{@code pendingRowPictureIdxMap}</li>
     *   <li>{@code pendingRowImageBytesMap}</li>
     * </ul>
     *
     * <p>POI 临时文件清理由业务侧（{@code ExcelUtils.write} 的 finally 块）调
     * {@link PoiTempFileStrategy#releaseTempDir(String)} 完成，本方法不处理。
     */
    @Override
    public void afterWorkbookDispose(WorkbookWriteHandlerContext context) {
        try {
            // 清所有缓存（防止 Handler 实例被复用时残留上次数据）
            perSheetOriginalColumnWidthMap.clear();
            processedSheetIndexes.clear();
            pendingRowPathMap.clear();
            pendingRowCellImageSizesListMap.clear();
            pendingRowPictureIdxMap.clear();
            pendingRowImageBytesMap.clear();
        } catch (Exception e) {
            log.error("[ImagesSheetWriteHandler] 清理缓存失败: {}", e.getMessage(), e);
        }
    }

    // ====================================================================================
    // 核心绘图（仅用 pictureIdx，不再持有 byte[]）
    // ====================================================================================

    /**
     * 在指定单元格内绘制多张图片（横向并排）。
     *
     * <h3>绘制算法（基于 POI 官方 getPreferredSize 算法）</h3>
     *
     * <h4>OOXML 关键事实</h4>
     * <ul>
     *   <li>{@code colOff/rowOff} 用 EMU（English Metric Unit），1 inch = 914400 EMU = 96 px → <b>1 px = 9525 EMU</b></li>
     *   <li>colOff 是相对 col 的<b>物理左上角</b>（不是相对 cell 内容区），没有 cell padding</li>
     *   <li>对 TwoCellAnchor，Excel 在打开文件时会按 (to.colOff - from.colOff + Σ中间列宽) 计算图片实际宽度</li>
     * </ul>
     *
     * <h4>POI 标准反算算法（来自 SXSSFPicture.getPreferredSize）</h4>
     * <pre>
     *   // 水平反算（从 col1 开始，accumW 是累计像素）
     *   float w = 0;
     *   int col2 = col1 - 1;
     *   while (w <= scaledWidth) {
     *       w += getColumnWidthInPixels(++col2);
     *   }
     *   // 跳出时 w > scaledWidth
     *   double cw = getColumnWidthInPixels(col2);   //  当前 col2 的列宽
     *   double deltaW = w - scaledWidth;            // 超出 scaledWidth 的部分
     *   dx2 = EMU * (cw - deltaW);                  //  在 col2 内从右往左的距离
     * </pre>
     *
     * <h4>支持 dx1 &gt; 0 的扩展（参考 XSSFPicture.getPreferredSize）</h4>
     * <pre>
     *   // 如果 dx1 > 0，先算 from 所在 col 还剩多少宽度（要 /9525 转像素）
     *   float dx1Px = anchor.getDx1() / EMU_PER_PIXEL;
     *   if (dx1Px > 0) {
     *       w += getColumnWidthInPixels(col2) - dx1Px;   // 当前 col 剩余
     *       col2++;
     *   }
     *   // 然后正常累加
     * </pre>
     */
    private void drawImagesInCell(Workbook workbook, Sheet sheet, Cell cell,
                                  List<Integer> pictureIdxList,
                                  float[] renderWidthsPx, float[] renderHeightsPx,
                                  int columnIndex, int rowHeightTwips,
                                  int originalColWidthChars) {
        if (pictureIdxList == null || pictureIdxList.isEmpty()) return;
        int n = pictureIdxList.size();

        // 列宽像素值（基于 @ColumnWidth 计算）；兜底到默认值
        float colWidthPx = excelCharsToPx(originalColWidthChars);
        if (colWidthPx <= 1f) colWidthPx = FALLBACK_BASE_COLUMN_WIDTH_CHARS * Units.DEFAULT_CHARACTER_WIDTH;

        // 行高像素值：
        //   - rowHeightTwips 是 POI 行高单位（1 twip = 1/15 px），来自 setHeight()
        //   - 兜底到默认 13.5pt × 96/72 ≈ 18 px
        float rowHeightPx = (rowHeightTwips > 0)
                ? (float) (rowHeightTwips / 15.0)
                : (DEFAULT_ROW_HEIGHT_POINTS * PX_PER_POINT);

        // 三个布局参数（以字符宽度为单位转 px）
        // 画图时也读注解（之前一直走默认 1 char margin / 1 char gap）
        ExcelImageProperty ann = resolveColumnAnnotation(columnIndex);
        float horizontalMarginPx = readHorizontalMarginChars(ann) * Units.DEFAULT_CHARACTER_WIDTH;
        float verticalMarginPx = readVerticalMarginChars(ann) * Units.DEFAULT_CHARACTER_WIDTH;
        float gapPx = readImageGapChars(ann) * Units.DEFAULT_CHARACTER_WIDTH;

        // 内容可用区：扣除左右/上下 margin
        float usableWPx = colWidthPx - 2f * horizontalMarginPx;
        float usableHPx = rowHeightPx - 2f * verticalMarginPx;

        // =====================================================================
        // 第一步：累计图组总宽 + 整体超容缩放
        // =====================================================================
        // 即使 renderWidthsPx 在 afterRowDispose 步骤 1 已经算过一次单图宽，
        // 累计后还可能超过 usableWPx（因为单图宽是基于 singleSlotTargetPx 算的，
        //   medium 图多张并排时仍可能超出内容区），所以这里再做一次整体缩放兜底。
        float groupW = 0f;
        for (int i = 0; i < n; i++) {
            groupW += renderWidthsPx[i];
            if (i < n - 1) groupW += gapPx;
        }
        if (groupW > usableWPx + 0.01f) {
            // 超容：等比缩小到刚好填满可用区
            float scale = usableWPx / groupW;
            for (int i = 0; i < n; i++) {
                renderWidthsPx[i] *= scale;
                renderHeightsPx[i] *= scale;
            }
            groupW = usableWPx;
        }
        // 水平居中偏移（图组总宽 < 可用区时，居中；不放大）
        float centeringPx = Math.max(0f, (usableWPx - groupW) / 2f);

        // =====================================================================
        // 第二步：算 dx1 和 dy1（绝对像素值）
        // =====================================================================
        // dx1：图片左上角相对 col 左边的偏移（px）
        // dy1：图片左上角相对 row 上边的偏移（px）
        //   → dy1 中点 = (行高 - 图组最高) / 2 → 上下居中
        //   → 必须在行高确定后算（这就是 afterRowDispose 先 setHeight 再画图的原因）
        float dx1Px = horizontalMarginPx + centeringPx;
        float groupMaxH = 0f;
        for (float h : renderHeightsPx) if (h > groupMaxH) groupMaxH = h;
        float dy1Px = verticalMarginPx + Math.max(0f, (usableHPx - groupMaxH) / 2f);

        // 取 Drawing：sheet 有 drawing 复用，没有就创建一个（每个 sheet 一个 drawing 容器）
        Drawing<?> drawing = sheet.getDrawingPatriarch();
        if (drawing == null) drawing = sheet.createDrawingPatriarch();
        CreationHelper helper = workbook.getCreationHelper();
        // EMU_PER_PIXEL = 9525：1 px = 9525 EMU（OOXML 标准）
        double emuPerPixel = Units.EMU_PER_PIXEL;

        // accXPx：当前累计 X 偏移（每张图从左到右累加）
        float accXPx = dx1Px;

        // =====================================================================
        // 第三步：每张图建 anchor 并 createPicture
        // =====================================================================
        // TwoCellAnchor（col1,row1,dx1,dy1）→ (col2,row2,dx2,dy2)
        //   - 同一 cell 多图：col1=col2=columnIndex，dx1=accXPx，dx2=accXPx + renderW
        //   - 最后一张图：col2=columnIndex+1（占位到下一列），dx2=-horizontalMargin（右侧留白）
        //     这样 Excel 打开时会按"下一列左边界 - 右侧留白"自动算图片宽度，
        //     行高变了图片自动等比缩放（用 MOVE_AND_RESIZE 锚点类型）。
        for (int i = 0; i < n; i++) {
            float renderW = renderWidthsPx[i];
            float renderH = renderHeightsPx[i];
            int pictureIdx = pictureIdxList.get(i);

            try {
                ClientAnchor anchor = helper.createClientAnchor();
                int fromRow = cell.getRowIndex();

                // dx1/dy1：当前图左上角的绝对像素偏移（px → EMU）
                float fromDx1Px = accXPx;
                int fromDx1Emu = (int) Math.round(fromDx1Px * emuPerPixel);
                int fromDy1Emu = (int) Math.round(dy1Px * emuPerPixel);
                // dy2：当前图右下角的 Y（dy1 + renderH）
                float toDy2Px = dy1Px + renderH;

                // 设置 anchor 6 个分量
                anchor.setCol1(columnIndex);
                anchor.setRow1(fromRow);
                anchor.setDx1(fromDx1Emu);
                anchor.setDy1(fromDy1Emu);
                // row2 == row1：图片垂直方向只占这一行（行高变化时图片随行高变化）
                anchor.setRow2(fromRow);
                if (i == n - 1) {
                    // 最后一张图：跨到下一列 + 右侧留白（让 Excel 自动算宽度）
                    anchor.setCol2(columnIndex + 1);
                    anchor.setDx2(-(int) Math.round(horizontalMarginPx * emuPerPixel));
                } else {
                    // 中间图：仍在同一列，dx2 = accXPx + renderW
                    anchor.setCol2(columnIndex);
                    anchor.setDx2((int) Math.round((fromDx1Px + renderW) * emuPerPixel));
                }
                anchor.setDy2((int) Math.round(toDy2Px * emuPerPixel));
                // 锚点类型：DONT_MOVE_AND_RESIZE
                //   - 行高/列宽变化时图片不跟随变（保持像素精准定位）
                //   - 不被其他列的文本 wrap 撑高行高所拉伸
                anchor.setAnchorType(ClientAnchor.AnchorType.DONT_MOVE_AND_RESIZE);

                // 用 pictureIdx 创建 Picture（POI 内部从 workbook.pictures 取图）
                drawing.createPicture(anchor, pictureIdx);

                accXPx += renderW + gapPx;
            } catch (Exception ex) {
                // 单张图失败不影响后续图（继续累加 accXPx 保持对齐）
                log.error("[FileCellWriteHandler] 绘制第 {} 张图片失败: {}", i, ex.getMessage());
                accXPx += renderW + gapPx;
            }
        }

        // 设置 cell 文本样式（虽然 cell 已被清空，但 cellStyle 影响 Excel 显示）
        // 水平和垂直都居中，配合图片绘制位置
        CellStyle cellStyle = workbook.createCellStyle();
        cellStyle.setAlignment(HorizontalAlignment.CENTER);
        cellStyle.setVerticalAlignment(VerticalAlignment.CENTER);
        cell.setCellStyle(cellStyle);
    }

    // ====================================================================================
    // 工具
    // ====================================================================================

    /**
     * 从 {@link WriteSheetHolder} 安全取 sheet 索引，避免空指针。
     *
     * @param holder sheet 持有器
     * @return sheet 编号（sheetNo），holder 为空或 sheetNo 为空时返回 0
     */
    private int currentSheetIndex(WriteSheetHolder holder) {
        // 兜底：holder 为 null 或 sheetNo 为 null（理论上不会，但防止 NPE）
        // 返回 0 表示第 0 个 sheet，与 EasyExcel 默认行为一致
        if (holder == null || holder.getSheetNo() == null) return 0;
        return holder.getSheetNo();
    }

    /**
     * 把 {@link ImageData.ImageType} 转换为 POI 的 {@code Workbook.PICTURE_TYPE_*} 常量。
     *
     * @param imageType 图片类型（可为 null）
     * @return POI 图片类型常量；未知或 null 一律返回 PNG
     */
    private int toPoiPictureType(ImageData.ImageType imageType) {
        // 空类型兜底为 PNG（PNG 兼容性好，无损）
        if (imageType == null) return Workbook.PICTURE_TYPE_PNG;
        // EasyExcel 的 ImageData.ImageType 枚举 → POI 的 Workbook.PICTURE_TYPE_* 常量
        //   PICTURE_TYPE_PNG = Workbook.PICTURE_TYPE_PNG
        //   PICTURE_TYPE_JPEG = Workbook.PICTURE_TYPE_JPEG（实际是 JPEG 类型）
        //   PICTURE_TYPE_DIB = Device Independent Bitmap（位图）
        switch (imageType) {
            case PICTURE_TYPE_PNG:
                return Workbook.PICTURE_TYPE_PNG;
            case PICTURE_TYPE_JPEG:
                return Workbook.PICTURE_TYPE_JPEG;
            case PICTURE_TYPE_DIB:
                return Workbook.PICTURE_TYPE_DIB;
            default:
                // 未知类型（GIF、BMP、WebP 等）兜底为 PNG
                // 注：POI 实际只支持 PNG/JPEG/DIB 等少数类型，其他类型会写入但打开可能有问题
                return Workbook.PICTURE_TYPE_PNG;
        }
    }

    /**
     * 把 Excel 列宽字符数换算成像素（POI 默认字符最大宽度像素值）。
     * <p>公式来自 {@code SheetUtil.getColumnWidthInPixels}：
     * <pre>
     *   px = floor((256 * chars + floor(128 / maxDigitWidth)) / 256 * maxDigitWidth)
     * </pre>
     *
     * @param chars Excel 列宽字符数
     * @return 像素宽度
     */
    private static float excelCharsToPx(float chars) {
        // Units.DEFAULT_CHARACTER_WIDTH 是 Excel "最大字符宽度"对应的像素值（通常 = 7 px）
        final float maxDigitWidth = Units.DEFAULT_CHARACTER_WIDTH;
        // 公式来自 POI 源码 SheetUtil.getColumnWidthInPixels：
        //   1. (256 * chars + floor(128/maxDigitWidth)) / 256  → 实际字符数（含四舍五入调整）
        //   2. * maxDigitWidth  → 像素值
        //   3. floor 去掉小数部分
        // 注：这是 POI 自己算的"最大字符宽度"像素值，不是 Excel 真实显示宽度（Excel 实际是按 0-9 平均宽度算）
        //     但用于布局计算已经够准确
        float num = (256f * chars + (float) Math.floor(128.0 / maxDigitWidth)) / 256f;
        return (float) Math.floor(num * maxDigitWidth);
    }
}
