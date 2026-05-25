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
import com.lz.framework.common.biz.system.dict.dto.DictDataRespDTO;
import com.lz.framework.dict.core.DictFrameworkUtils;
import com.lz.framework.excel.core.annotations.DictFormat;
import com.lz.framework.excel.core.annotations.ExcelColumnSelect;
import com.lz.framework.excel.core.annotations.ExcelDirection;
import com.lz.framework.excel.core.annotations.ExcelType;
import com.lz.framework.common.util.i18n.I18nUtils;
import lombok.extern.slf4j.Slf4j;

import java.util.List;

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

    @Override
    public Class<?> supportJavaTypeKey() {
        return null;
    }

    @Override
    public CellDataTypeEnum supportExcelTypeKey() {
        return null;
    }

    @Override
    public Object convertToJavaData(ReadCellData readCellData, ExcelContentProperty contentProperty,
                                    GlobalConfiguration globalConfiguration) {
        if (isIgnoreByExcelType(contentProperty, ExcelDirection.EXPORT)) {
            return readCellData.getStringValue();
        }

        String label = readCellData.getStringValue();
        String fieldName = contentProperty.getField().getName();
        CellDataTypeEnum cellType = readCellData.getType();
        if (StrUtil.isEmpty(label)) {
            if (cellType == CellDataTypeEnum.EMPTY) {
                log.info("[convertToJavaData] field={}, cell is EMPTY, return null", fieldName);
                return null;
            }
            return label;
        }

        String dictType = null;
        boolean i18nEnabled = false;

        // ExcelColumnSelect 下拉场景：不需要兜底解析
        boolean isColumnSelectI18n = false;

        // 优先尝试 @ExcelColumnSelect(i18n=true)
        ExcelColumnSelect columnSelect = getColumnSelect(contentProperty);
        if (columnSelect != null && columnSelect.i18n() && StrUtil.isNotEmpty(columnSelect.dictType())) {
            dictType = columnSelect.dictType();
            i18nEnabled = true;
            isColumnSelectI18n = true;
        }

        // 其次尝试 @DictFormat(i18n=true)
        DictFormat dictFormat = getDictFormat(contentProperty);
        if (dictType == null && dictFormat != null && dictFormat.i18n()) {
            dictType = dictFormat.value();
            i18nEnabled = true;
        }

        // 国际化场景：尝试用国际化翻译匹配原始 label
        if (i18nEnabled) {
            String matchedLabel = tryMatchLabelByI18n(dictType, label);
            if (matchedLabel != null) {
                label = matchedLabel;
            } else {
                log.warn("[convertToJavaData] field={}, i18n not matched for label={}, dictType={}", fieldName, label, dictType);
            }
        }

        // 解析为字典值
        if (dictType != null) {
            String value = DictFrameworkUtils.parseDictDataValue(dictType, label);
            if (value != null) {
                return Convert.convert(contentProperty.getField().getType(), value);
            }
            // @ExcelColumnSelect(i18n=true) 下拉选项里只有翻译后的 label，匹配不到就不要再兜底了
            if (isColumnSelectI18n) {
                return label;
            }
        }

        // 兜底：普通 @DictFormat 解析（无国际化）
        if (dictFormat != null) {
            return label;
        }

        // 无任何字典注解，原样返回
        log.info("[convertToJavaData] field={}, no dict annotation, return as-is: {}", fieldName, label);
        return label;
    }

    @Override
    public WriteCellData<String> convertToExcelData(Object object, ExcelContentProperty contentProperty,
                                                    GlobalConfiguration globalConfiguration) {
        if (object == null) {
            return new WriteCellData<>("");
        }
        if (isIgnoreByExcelType(contentProperty, ExcelDirection.IMPORT)) {
            return new WriteCellData<>(String.valueOf(object));
        }

        String value = String.valueOf(object);

        // 优先尝试 @ExcelColumnSelect(i18n=true)：导出值必须匹配下拉选项
        ExcelColumnSelect columnSelect = getColumnSelect(contentProperty);
        if (columnSelect != null && columnSelect.i18n() && StrUtil.isNotEmpty(columnSelect.dictType())) {
            return new WriteCellData<>(translateLabelByI18n(columnSelect.dictType(), value));
        }

        // 其次尝试 @DictFormat(i18n=true)
        DictFormat dictFormat = getDictFormat(contentProperty);
        if (dictFormat != null && dictFormat.i18n()) {
            return new WriteCellData<>(translateLabelByI18n(dictFormat.value(), value));
        }

        // 兜底：普通 @DictFormat 导出（无国际化）
        if (dictFormat != null) {
            String label = DictFrameworkUtils.parseDictDataLabel(dictFormat.value(), value);
            if (label == null) {
                log.error("[convertToExcelData][type({}) 转换不了 label({})]", dictFormat.value(), value);
                return new WriteCellData<>("");
            }
            return new WriteCellData<>(label);
        }

        return new WriteCellData<>(value);
    }

    /**
     * 导出时，根据字典值查询国际化后的标签
     * <p>
     * 直接取字典数据中的国际化 key 查询翻译，如果为空则使用原始 label。
     */
    private String translateLabelByI18n(String dictType, String value) {
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
     * 导入时，尝试用国际化翻译匹配原始 label
     * <p>
     * 1. 先用当前语言的国际化 key 查询翻译，匹配原始 label
     * 2. 如果未匹配到，查询所有语言的翻译，遍历匹配
     * 3. 如果仍未匹配到，返回 null，由后续逻辑处理
     */
    private String tryMatchLabelByI18n(String dictType, String importLabel) {
        List<DictDataRespDTO> dictDatas = DictFrameworkUtils.getDictDataList(dictType);
        if (CollUtil.isEmpty(dictDatas)) {
            log.warn("[tryMatchLabelByI18n] dictType={} has no data", dictType);
            return null;
        }

        // 1. 用当前语言的国际化 key 查询翻译，直接匹配 import label
        for (DictDataRespDTO data : dictDatas) {
            if (StrUtil.isNotEmpty(data.getI18n())) {
                String translated = I18nUtils.getMessage(data.getI18n());
                if (importLabel.equals(translated)) {
                    return data.getLabel();
                }
            }
        }

        // 2. 查询所有语言的翻译，遍历匹配
        for (DictDataRespDTO data : dictDatas) {
            if (StrUtil.isNotEmpty(data.getI18n())) {
                List<String> allMessages = I18nUtils.getAllLocaleMessages(data.getI18n());
                if (CollUtil.contains(allMessages, importLabel)) {
                    return data.getLabel();
                }
            }
        }

        log.warn("[tryMatchLabelByI18n] no match found for importLabel={}, dictType={}", importLabel, dictType);
        return null;
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
            if (value.equals(data.getValue())) {
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

}
