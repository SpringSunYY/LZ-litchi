package com.lz.framework.excel.core.convert;

import cn.hutool.core.convert.Convert;
import com.lz.framework.dict.core.DictFrameworkUtils;
import com.lz.framework.excel.core.annotations.DictFormat;
import com.lz.framework.excel.core.annotations.ExcelDirection;
import com.lz.framework.excel.core.annotations.ExcelType;
import com.alibaba.excel.converters.Converter;
import com.alibaba.excel.enums.CellDataTypeEnum;
import com.alibaba.excel.metadata.GlobalConfiguration;
import com.alibaba.excel.metadata.data.ReadCellData;
import com.alibaba.excel.metadata.data.WriteCellData;
import com.alibaba.excel.metadata.property.ExcelContentProperty;
import lombok.extern.slf4j.Slf4j;

/**
 * Excel 字典数据转换器
 * <p>
 * 导出时将字典值转换为字典标签，导入时将字典标签反向解析为字典值。
 *
 * @author lz
 */
@Slf4j
public class DictConvert implements Converter<Object> {

    @Override
    public Class<?> supportJavaTypeKey() {
        throw new UnsupportedOperationException("暂不支持，也不需要");
    }

    @Override
    public CellDataTypeEnum supportExcelTypeKey() {
        throw new UnsupportedOperationException("暂不支持，也不需要");
    }

    @Override
    public Object convertToJavaData(ReadCellData readCellData, ExcelContentProperty contentProperty,
                                    GlobalConfiguration globalConfiguration) {
        if (isIgnoreByExcelType(contentProperty, ExcelDirection.EXPORT)) {
            return readCellData.getStringValue();
        }
        DictFormat dictFormat = getDictFormat(contentProperty);
        if (dictFormat == null) {
            return readCellData.getStringValue();
        }
        String label = readCellData.getStringValue();
        String value = DictFrameworkUtils.parseDictDataValue(dictFormat.value(), label);
        if (value == null) {
            log.error("[convertToJavaData][type({}) 解析不掉 label({})]", dictFormat.value(), label);
            return null;
        }
        Class<?> fieldClazz = contentProperty.getField().getType();
        return Convert.convert(fieldClazz, value);
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

        DictFormat dictFormat = getDictFormat(contentProperty);
        if (dictFormat == null) {
            return new WriteCellData<>(String.valueOf(object));
        }

        String value = String.valueOf(object);
        String label = DictFrameworkUtils.parseDictDataLabel(dictFormat.value(), value);
        if (label == null) {
            log.error("[convertToExcelData][type({}) 转换不了 label({})]", dictFormat.value(), value);
            return new WriteCellData<>("");
        }
        return new WriteCellData<>(label);
    }

    private static DictFormat getDictFormat(ExcelContentProperty contentProperty) {
        return contentProperty.getField().getAnnotation(DictFormat.class);
    }

    private static boolean isIgnoreByExcelType(ExcelContentProperty contentProperty, ExcelDirection excludeType) {
        ExcelType excelType = contentProperty.getField().getAnnotation(ExcelType.class);
        if (excelType == null) {
            return false;
        }
        return excelType.value() == excludeType;
    }

}
