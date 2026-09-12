package com.lz.framework.excel.core.annotations;

import java.lang.annotation.*;

/**
 * Excel 图片列参数配置
 *
 * <p>
 * 用于精细化控制 {@link com.lz.framework.excel.core.convert.ImagesConvert} 与
 * {@link com.lz.framework.excel.core.handler.ImagesSheetWriteHandler} 的行为。
 *
 * <p>
 * 默认行为（不写注解）：使用全局默认参数；
 * 写本注解后：仅覆盖本注解里显式设置过的字段（其他字段仍用默认）。
 * <p>
 * <b>判断"未设置"的规则</b>：数值字段使用 -1（int）或 NaN（float/double）；
 * 数值未设置 → 用默认；设置 → 用本注解值。
 *
 * <h3>使用示例</h3>
 * <pre>{@code
 * @ExcelProperty(value = "打印图片", converter = ImagesConvert.class)
 * @ExcelImageProperty(
 *     maxFileSizeMB = 5,
 *     horizontalMarginChars = 2.0f,
 *     maxRenderHeightMultiple = 2.0
 * )
 * private List<File> printImage;
 * }</pre>
 *
 * @author 荔枝源码
 */
@Target({ElementType.FIELD})
@Retention(RetentionPolicy.RUNTIME)
@Inherited
public @interface ExcelImageProperty {

    // ========================================================================
    // Convert 阶段参数
    // ========================================================================

    /**
     * 单个单元格所有图片总大小上限（MB）。
     * <p>超过此上限时，{@code ImagesConvert} 不再写图片，回退为文本路径。
     * <p>对应 {@code FileProcessUtils.MAX_FILE_SIZE}。不设置（默认 -1）→ 用 {@code FileProcessUtils} 的全局默认。
     *
     * @return MB 数；-1 表示未设置（用全局默认）
     */
    int maxFileSizeMB() default -1;

    // ========================================================================
    // Handler 阶段参数（画图布局）
    // ========================================================================

    /**
     * 图片水平边距（单位：字符宽）。
     * <p>图组左右两侧各留 N 个字符宽度的留白（避免贴边）。
     *
     * @return 字符宽数；{@code NaN} 表示未设置
     */
    float horizontalMarginChars() default Float.NaN;

    /**
     * 图片垂直边距（单位：字符宽）。
     * <p>图组上下两侧各留 N 个字符宽度的留白。
     *
     * @return 字符宽数；{@code NaN} 表示未设置
     */
    float verticalMarginChars() default Float.NaN;

    /**
     * 多图之间的水平间距（单位：字符宽）。
     * <p>同一 cell 内多张图横向并排时，相邻图之间留 N 个字符宽的间隙。
     *
     * @return 字符宽数；{@code NaN} 表示未设置
     */
    float imageGapChars() default Float.NaN;

    /**
     * 单张图渲染高度上限倍数（相对列宽字符数）。
     * <p>如果按原图比例缩放后图高度超过 {@code 列宽字符数 × N × 字符宽}，
     * 就等比缩小图片（防止细长图如条形码把行高撑高）。
     *
     * @return 倍数；{@code NaN} 表示未设置
     */
    double maxRenderHeightMultiple() default Double.NaN;

    /**
     * 默认行高（单位：point）。
     * <p>Excel 默认行高 ≈ 13.5 pt。本字段用于行高兜底（{@code rowHeightTwips <= 0} 时）。
     *
     * @return point 数；{@code NaN} 表示未设置
     */
    float defaultRowHeightPoints() default Float.NaN;

    /**
     * 图片原始尺寸解析失败时的默认宽度（像素）。
     *
     * @return 像素数；-1 表示未设置
     */
    int defaultImageWidthPixels() default -1;

    /**
     * 图片原始尺寸解析失败时的默认高度（像素）。
     *
     * @return 像素数；-1 表示未设置
     */
    int defaultImageHeightPixels() default -1;

    /**
     * 兜底列宽字符数（POI 单位 = chars × 256）。
     * <p>用于字段未标 {@code @ColumnWidth} 时。
     *
     * @return 字符数；-1 表示未设置
     */
    int fallbackColumnWidthChars() default -1;
}
