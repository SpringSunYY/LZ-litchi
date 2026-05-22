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
import com.lz.framework.common.enums.InfraModuleConstants;
import com.lz.framework.dict.core.DictFrameworkUtils;
import com.lz.framework.excel.core.annotations.DictFormat;
import com.lz.framework.excel.core.annotations.ExcelColumnSelect;
import com.lz.framework.excel.core.annotations.ExcelDirection;
import com.lz.framework.excel.core.annotations.ExcelType;
import com.lz.framework.i18n.core.I18nUtils;
import lombok.extern.slf4j.Slf4j;

import java.util.List;
import java.util.Objects;

/**
 * Excel 字典数据转换器
 * <p>
 * 导出时将字典值转换为字典标签，导入时将字典标签反向解析为字典值。
 * <p>
 * 支持两种国际化场景：
 * <ul>
 *   <li>当字段标注了 {@link DictFormat#i18n()} = true 时，使用前缀_字典类型_value 组合国际化 key 翻译</li>
 *   <li>当字段标注了 {@link ExcelColumnSelect#i18n()} = true 时，使用前缀_字典类型_value 组合国际化 key 翻译</li>
 * </ul>
 * 国际化 key 示例：dict_system_user_sex_1
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
        String prefix = null;
        boolean i18nEnabled = false;

        // 优先尝试 @ExcelColumnSelect(i18n=true)
        ExcelColumnSelect columnSelect = getColumnSelect(contentProperty);
        if (columnSelect != null && columnSelect.i18n() && StrUtil.isNotEmpty(columnSelect.dictType())) {
            dictType = columnSelect.dictType();
            prefix = columnSelect.prefix();
            i18nEnabled = true;
        }

        // 其次尝试 @DictFormat(i18n=true)
        DictFormat dictFormat = getDictFormat(contentProperty);
        if (dictType == null && dictFormat != null && dictFormat.i18n()) {
            dictType = dictFormat.value();
            prefix = dictFormat.prefix();
            i18nEnabled = true;
        }

        // 国际化场景：尝试用国际化翻译匹配原始 label
        if (i18nEnabled) {
            String matchedLabel = tryMatchLabelByI18n(prefix, dictType, label);
            if (matchedLabel != null) {
                label = matchedLabel;
            } else {
                log.warn("[convertToJavaData] field={}, i18n not matched for label={}, dictType={}", fieldName, label, dictType);
            }
        }

        // 解析为字典值（优先用国际化解析后的 label，兜底用原始 label）
        if (dictType != null) {
            String value = DictFrameworkUtils.parseDictDataValue(dictType, label);
            if (value != null) {
                return Convert.convert(contentProperty.getField().getType(), value);
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
            return new WriteCellData<>(translateLabelByI18n(columnSelect.prefix(), columnSelect.dictType(), value));
        }

        // 其次尝试 @DictFormat(i18n=true)
        DictFormat dictFormat = getDictFormat(contentProperty);
        if (dictFormat != null && dictFormat.i18n()) {
            return new WriteCellData<>(translateLabelByI18n(dictFormat.prefix(), dictFormat.value(), value));
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
     * 构建 i18n key = 前缀_字典类型_value，查询翻译。
     * 如果未查到，则返回原始 label；如果都查不到，返回空字符串。
     */
    private String translateLabelByI18n(String prefix, String dictType, String value) {
        String i18nKey = buildI18nKey(prefix, dictType, value);
        String translated = I18nUtils.getMessage(i18nKey);
        if (StrUtil.isNotEmpty(translated)) {
            return translated;
        }
        String label = DictFrameworkUtils.parseDictDataLabel(dictType, value);
        // 国际化未查到，优先返回字典原始 label，兜底返回原始值（避免 Excel 空白）
        return StrUtil.isNotEmpty(label) ? label : value;
    }

    /**
     * 导入时，尝试用国际化翻译匹配原始 label
     * <p>
     * 1. 先用当前语言的国际化 key 查询翻译，匹配原始 label
     * 2. 如果未匹配到，查询所有语言的翻译，遍历匹配
     * 3. 如果仍未匹配到，返回 null，由后续逻辑处理
     */
    private String tryMatchLabelByI18n(String prefix, String dictType, String importLabel) {
        List<DictDataRespDTO> dictDatas = DictFrameworkUtils.getDictDataList(dictType);
        if (CollUtil.isEmpty(dictDatas)) {
            log.warn("[tryMatchLabelByI18n] dictType={} has no data", dictType);
            return null;
        }

        // 1. 用当前语言的国际化 key 查询翻译，直接匹配 import label
        for (DictDataRespDTO data : dictDatas) {
            String i18nKey = buildI18nKey(prefix, dictType, data.getValue());
            String translated = I18nUtils.getMessage(i18nKey);
            if (importLabel.equals(translated)) {
                return data.getLabel();
            }
        }

        // 2. 查询所有语言的翻译，遍历匹配
        for (DictDataRespDTO data : dictDatas) {
            String i18nKey = buildI18nKey(prefix, dictType, data.getValue());
            List<String> allMessages = I18nUtils.getAllLocaleMessages(i18nKey);
            if (CollUtil.contains(allMessages, importLabel)) {
                return data.getLabel();
            }
        }

        log.warn("[tryMatchLabelByI18n] no match found for importLabel={}, dictType={}", importLabel, dictType);
        return null;
    }

    /**
     * 构建国际化 key
     *
     * @param prefix   前缀，默认 dict
     * @param dictType 字典类型
     * @param value    字典值
     * @return 国际化 key，格式：前缀_字典类型_value
     */
    private String buildI18nKey(String prefix, String dictType, String value) {
        return prefix + InfraModuleConstants.I18N_SEPARATOR + dictType + InfraModuleConstants.I18N_SEPARATOR + value;
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
