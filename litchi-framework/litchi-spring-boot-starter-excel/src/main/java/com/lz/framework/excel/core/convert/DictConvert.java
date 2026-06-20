package com.lz.framework.excel.core.convert;

import cn.hutool.core.collection.CollUtil;
import cn.hutool.core.convert.Convert;
import cn.hutool.core.util.StrUtil;
import com.alibaba.excel.converters.Converter;
import com.alibaba.excel.enums.CellDataTypeEnum;
import com.alibaba.excel.metadata.GlobalConfiguration;
import com.alibaba.excel.metadata.data.ReadCellData;
import com.alibaba.excel.metadata.data.WriteCellData;
import com.alibaba.excel.metadata.property.ExcelContentProperty;
import com.google.common.cache.CacheLoader;
import com.google.common.cache.LoadingCache;
import com.lz.framework.common.biz.system.dict.dto.DictDataRespDTO;
import com.lz.framework.common.util.cache.CacheUtils;
import com.lz.framework.common.util.i18n.I18nUtils;
import com.lz.framework.dict.core.DictFrameworkUtils;
import com.lz.framework.excel.core.annotations.DictFormat;
import com.lz.framework.excel.core.annotations.ExcelColumnSelect;
import com.lz.framework.excel.core.annotations.ExcelDirection;
import com.lz.framework.excel.core.annotations.ExcelType;
import lombok.extern.slf4j.Slf4j;

import java.time.Duration;
import java.util.List;
import java.util.Objects;
import java.util.Optional;

/**
 * Excel 字典数据转换器
 * <p>
 * 导出时将字典值转换为字典标签，导入时将字典标签反向解析为字典值。
 * <p>
 * 国际化：当字段标注了 @DictFormat(i18n=true) 或 @ExcelColumnSelect 时，
 * 直接取字典数据中的国际化 key 查询翻译，如果为空则使用原始 label。
 *
 * @author lz
 */
@Slf4j
public class DictConvert implements Converter<Object> {

    /**
     * 静态缓存：dictType + importLabel -> matchedLabel（字典的 label 值）
     */
    private static final LoadingCache<String, Optional<String>> MATCH_CACHE = CacheUtils.buildAsyncReloadingCache(
            Duration.ofMinutes(5L),
            new CacheLoader<String, Optional<String>>() {
                @Override
                public Optional<String> load(String cacheKey) {
                    String[] parts = cacheKey.split("::", 2);
                    String dictType = parts[0];
                    String importLabel = parts[1];
                    return doMatchLabelByI18n(dictType, importLabel);
                }
            });

    /**
     * 静态缓存：dictType + value  -> translatedLabel（国际化翻译后的 label）
     * <p>
     * 用于导出时，将字典 value 翻译为当前语言的 label。
     * 同一个 dictType 的同一个 value，在缓存有效期内只翻译一次。
     */
    private static final LoadingCache<String, String> TRANSLATE_CACHE = CacheUtils.buildAsyncReloadingCache(
            Duration.ofMinutes(5L),
            new CacheLoader<String, String>() {
                @Override
                public String load(String cacheKey) {
                    String[] parts = cacheKey.split("::", 2);
                    String dictType = parts[0];
                    String value = parts[1];
                    return doTranslateLabelByI18n(dictType, value);
                }
            });

    @Override
    public Class<?> supportJavaTypeKey() {
        return null;
    }

    @Override
    public CellDataTypeEnum supportExcelTypeKey() {
        return null;
    }

    /**
     * 导入时将Excel单元格文本（字典标签）反向解析为Java字典值
     * <p>
     * 解析优先级：
     * <ol>
     *   <li>{@code @ExcelColumnSelect(i18n=true)} —— 下拉选项已是翻译文本，直接用标签查字典值</li>
     *   <li>{@code @DictFormat(i18n=true)} —— 通过i18n翻译反向匹配原始label后再查字典值</li>
     *   <li>普通 {@code @DictFormat} —— 直接用标签查字典值</li>
     *   <li>无字典注解 —— 原样返回标签文本</li>
     * </ol>
     *
     * @param readCellData        读取到的单元格数据
     * @param contentProperty     当前字段的属性信息（含注解）
     * @param globalConfiguration EasyExcel全局配置
     * @return 解析后的字典值（自动转换为字段声明类型）；空单元格返回null；
     *         仅导出字段返回原始字符串；匹配失败时按场景降级返回
     */
    @Override
    public Object convertToJavaData(ReadCellData readCellData, ExcelContentProperty contentProperty,
                                    GlobalConfiguration globalConfiguration) {
        // 标记为仅导出的字段不做字典转换，直接返回原始文本
        if (isIgnoreByExcelType(contentProperty, ExcelDirection.ONLY_EXPORT)) {
            return readCellData.getStringValue();
        }

        String label = readCellData.getStringValue();
        CellDataTypeEnum cellType = readCellData.getType();
        // 空单元格处理：真正空单元格返回null，空字符串原样返回
        if (StrUtil.isEmpty(label)) {
            if (cellType == CellDataTypeEnum.EMPTY) {
                return null;
            }
            return label;
        }

        String dictType = null;
        boolean i18nEnabled = false;

        boolean isColumnSelectI18n = false;

        // 优先使用 @ExcelColumnSelect(i18n=true)：下拉选项已是翻译后的 label，直接解析字典值
        ExcelColumnSelect columnSelect = getColumnSelect(contentProperty);
        if (columnSelect != null && columnSelect.i18n() && StrUtil.isNotEmpty(columnSelect.dictType())) {
            dictType = columnSelect.dictType();
            i18nEnabled = true;
            isColumnSelectI18n = true;
        }

        // 其次使用 @DictFormat(i18n=true)：需要通过 i18n 翻译反向匹配字典 label
        DictFormat dictFormat = getDictFormat(contentProperty);
        if (dictType == null && dictFormat != null && dictFormat.i18n()) {
            dictType = dictFormat.value();
            i18nEnabled = true;
        }

        // 国际化场景：用导入的翻译文本反向查找原始字典 label（带缓存）
        if (i18nEnabled) {
            String matchedLabel = tryMatchLabelByI18n(dictType, label);
            if (matchedLabel != null) {
                label = matchedLabel;
            }
        }

        // 用匹配后的 label 查字典值，成功后转换为字段声明类型
        if (dictType != null) {
            String value = DictFrameworkUtils.parseDictDataValue(dictType, label);
            if (value != null) {
                return Convert.convert(contentProperty.getField().getType(), value);
            }
            // @ExcelColumnSelect(i18n=true) 下拉仅含翻译文本，匹配不到时直接转换label为字段类型，不再继续兜底
            if (isColumnSelectI18n) {
                return Convert.convert(contentProperty.getField().getType(), label);
            }
        }

        // 普通 @DictFormat（无国际化）匹配不到时的兜底：保留原始 label
        if (dictFormat != null) {
            return label;
        }

        // 无任何字典注解，原样返回
        return label;
    }

    /**
     * 导出时将Java字典值转换为Excel单元格显示的文本（字典标签）
     * <p>
     * 转换优先级：
     * <ol>
     *   <li>{@code @ExcelColumnSelect(i18n=true)} —— 使用i18n翻译后的标签，保证与下拉选项一致</li>
     *   <li>{@code @DictFormat(i18n=true)} —— 使用i18n翻译后的标签</li>
     *   <li>普通 {@code @DictFormat} —— 直接查字典获取原始标签</li>
     *   <li>无字典注解 —— 直接输出值的字符串形式</li>
     * </ol>
     *
     * @param object              待导出的Java字段值（字典值）
     * @param contentProperty     当前字段的属性信息（含注解）
     * @param globalConfiguration EasyExcel全局配置
     * @return 封装了显示文本的单元格数据；null值返回空字符串；仅导入字段原样输出
     */
    @Override
    public WriteCellData<String> convertToExcelData(Object object, ExcelContentProperty contentProperty,
                                                    GlobalConfiguration globalConfiguration) {
        if (object == null) {
            return new WriteCellData<>("");
        }
        // 标记为仅导入的字段不做字典转换，直接输出原始值
        if (isIgnoreByExcelType(contentProperty, ExcelDirection.ONLY_IMPORT)) {
            return new WriteCellData<>(String.valueOf(object));
        }

        String value = String.valueOf(object);

        // 优先使用 @ExcelColumnSelect(i18n=true)：下拉选项为翻译文本，导出值必须与之匹配
        ExcelColumnSelect columnSelect = getColumnSelect(contentProperty);
        if (columnSelect != null && columnSelect.i18n() && StrUtil.isNotEmpty(columnSelect.dictType())) {
            return new WriteCellData<>(translateLabelByI18n(columnSelect.dictType(), value));
        }

        // 其次使用 @DictFormat(i18n=true)：通过i18n翻译字典标签
        DictFormat dictFormat = getDictFormat(contentProperty);
        if (dictFormat != null && dictFormat.i18n()) {
            return new WriteCellData<>(translateLabelByI18n(dictFormat.value(), value));
        }

        // 普通 @DictFormat（无国际化）：直接查询字典标签
        if (dictFormat != null) {
            String label = DictFrameworkUtils.parseDictDataLabel(dictFormat.value(), value);
            if (label == null) {
                log.error("[convertToExcelData][type({}) 转换不了 label({})]", dictFormat.value(), value);
                return new WriteCellData<>("");
            }
            return new WriteCellData<>(label);
        }

        // 无任何字典注解，直接输出值的字符串形式
        return new WriteCellData<>(value);
    }

    /**
     * 导出时，根据字典值查询国际化后的标签（带静态缓存）
     */
    private String translateLabelByI18n(String dictType, String value) {
        String cacheKey = dictType + "::" + value;
        String translated = TRANSLATE_CACHE.getUnchecked(cacheKey);
        if (StrUtil.isNotEmpty(translated)) {
            return translated;
        }
        String label = DictFrameworkUtils.parseDictDataLabel(dictType, value);
        log.warn("[translateLabelByI18n] dictType={}, value={}, fallback label={}", dictType, value, label);
        return StrUtil.isNotEmpty(label) ? label : value;
    }

    /**
     * 导入时，尝试用国际化翻译匹配原始 label（带静态缓存）
     */
    private String tryMatchLabelByI18n(String dictType, String importLabel) {
        String cacheKey = dictType + "::" + importLabel;
        Optional<String> result = MATCH_CACHE.getUnchecked(cacheKey);
        return result.orElse(null);
    }

    /**
     * 导出时，翻译标签的实际逻辑（由 LoadingCache 调用）
     */
    private static String doTranslateLabelByI18n(String dictType, String value) {
        String label = DictFrameworkUtils.parseDictDataLabel(dictType, value);
        if (label == null) {
            return value;
        }
        DictDataRespDTO dictData = findDictData(dictType, value);
        if (dictData != null && StrUtil.isNotEmpty(dictData.getI18n())) {
            String translated = I18nUtils.getMessage(dictData.getI18n());
            if (StrUtil.isNotEmpty(translated)) {
                return translated;
            }
        }
        return label;
    }

    /**
     * 导入时，匹配 label 的实际逻辑（由 LoadingCache 调用）
     */
    private static Optional<String> doMatchLabelByI18n(String dictType, String importLabel) {
        List<DictDataRespDTO> dictDatas = DictFrameworkUtils.getDictDataList(dictType);
        if (CollUtil.isEmpty(dictDatas)) {
            return Optional.empty();
        }

        // 1. 用当前语言的 i18n key 翻译匹配
        for (DictDataRespDTO data : dictDatas) {
            if (StrUtil.isNotEmpty(data.getI18n())) {
                String translated = I18nUtils.getMessage(data.getI18n());
                if (importLabel.equals(translated)) {
                    return Optional.ofNullable(data.getLabel());
                }
            }
        }

        // 2. 查询所有语言的翻译，遍历匹配（处理英文导入但字典是中文的情况）
        for (DictDataRespDTO data : dictDatas) {
            if (StrUtil.isNotEmpty(data.getI18n())) {
                List<String> allMessages = I18nUtils.getAllLocaleMessages(data.getI18n());
                if (CollUtil.contains(allMessages, importLabel)) {
                    return Optional.ofNullable(data.getLabel());
                }
            }
        }

        return Optional.empty();
    }

    /**
     * 根据字典值查找字典数据
     */
    private static DictDataRespDTO findDictData(String dictType, String value) {
        List<DictDataRespDTO> dictDatas = DictFrameworkUtils.getDictDataList(dictType);
        if (CollUtil.isEmpty(dictDatas)) {
            return null;
        }
        for (DictDataRespDTO data : dictDatas) {
            if (Objects.equals(value, data.getValue())) {
                return data;
            }
        }
        return null;
    }

    private static DictFormat getDictFormat(ExcelContentProperty contentProperty) {
        return contentProperty.getField().getAnnotation(DictFormat.class);
    }

    private static ExcelColumnSelect getColumnSelect(ExcelContentProperty contentProperty) {
        return contentProperty.getField().getAnnotation(ExcelColumnSelect.class);
    }

    private static boolean isIgnoreByExcelType(ExcelContentProperty contentProperty, ExcelDirection excludeType) {
        ExcelType excelType = contentProperty.getField().getAnnotation(ExcelType.class);
        if (excelType == null) {
            return false;
        }
        return excelType.value() == excludeType;
    }

    /**
     * 清除缓存（当国际化配置变更时调用）
     */
    public static void clearCache() {
        MATCH_CACHE.invalidateAll();
        TRANSLATE_CACHE.invalidateAll();
    }

}
