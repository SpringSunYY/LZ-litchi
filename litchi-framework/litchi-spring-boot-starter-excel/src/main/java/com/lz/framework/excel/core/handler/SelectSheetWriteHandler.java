package com.lz.framework.excel.core.handler;

import cn.hutool.core.collection.CollUtil;
import cn.hutool.core.lang.Assert;
import cn.hutool.core.util.ObjectUtil;
import cn.hutool.core.util.StrUtil;
import cn.hutool.extra.spring.SpringUtil;
import cn.hutool.poi.excel.ExcelUtil;
import com.alibaba.excel.annotation.ExcelIgnore;
import com.alibaba.excel.annotation.ExcelIgnoreUnannotated;
import com.alibaba.excel.annotation.ExcelProperty;
import com.alibaba.excel.write.handler.SheetWriteHandler;
import com.alibaba.excel.write.metadata.holder.WriteSheetHolder;
import com.alibaba.excel.write.metadata.holder.WriteWorkbookHolder;
import com.lz.framework.common.core.KeyValue;
import com.lz.framework.common.biz.system.dict.dto.DictDataRespDTO;
import com.lz.framework.dict.core.DictFrameworkUtils;
import com.lz.framework.excel.core.annotations.ExcelColumnSelect;
import com.lz.framework.excel.core.annotations.ExcelDirection;
import com.lz.framework.excel.core.annotations.ExcelType;
import com.lz.framework.excel.core.function.ExcelColumnSelectFunction;
import com.lz.framework.i18n.core.I18nUtils;
import lombok.extern.slf4j.Slf4j;
import org.apache.poi.hssf.usermodel.HSSFDataValidation;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.ss.util.CellRangeAddressList;

import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.Comparator;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import static com.lz.framework.common.util.collection.CollectionUtils.convertList;

/**
 * 基于固定 sheet 实现下拉框
 *
 * @author HUIHUI
 */
@Slf4j
public class SelectSheetWriteHandler implements SheetWriteHandler {

    /**
     * 数据起始行从 0 开始
     * <p>
     * 约定：本项目第一行有标题所以从 1 开始如果您的 Excel 有多行标题请自行更改
     */
    public static final int FIRST_ROW = 1;
    /**
     * 下拉列需要创建下拉框的行数，默认两千行如需更多请自行调整
     */
    public static final int LAST_ROW = 2000;

    private static final String DICT_SHEET_NAME = "dict sheet";

    /**
     * key: 列 value: 下拉数据源
     */
    private final Map<Integer, List<String>> selectMap = new HashMap<>();

    public SelectSheetWriteHandler(Class<?> head) {
        int colIndex = 0;
        boolean ignoreUnannotated = head.isAnnotationPresent(ExcelIgnoreUnannotated.class);
        for (Field field : head.getDeclaredFields()) {
            if (isStaticFinalOrTransient(field)) {
                continue;
            }
            if ((ignoreUnannotated && !field.isAnnotationPresent(ExcelProperty.class))
                    || field.isAnnotationPresent(ExcelIgnore.class)) {
                continue;
            }

            if (field.isAnnotationPresent(ExcelColumnSelect.class)) {
                if (isIgnoreByExcelType(field, ExcelDirection.EXPORT)) {
                    colIndex++;
                    continue;
                }
                ExcelProperty excelProperty = field.getAnnotation(ExcelProperty.class);
                if (excelProperty != null && excelProperty.index() != -1) {
                    colIndex = excelProperty.index();
                }
                getSelectDataList(colIndex, field);
            }
            colIndex++;
        }
    }

    /**
     * 判断字段是否是静态的、最终的、 transient 的
     * 原因：EasyExcel 默认是忽略 static final 或 transient 的字段，所以需要判断
     *
     * @param field 字段
     * @return 是否是静态的、最终的、transient 的
     */
    private boolean isStaticFinalOrTransient(Field field) {
        return (Modifier.isStatic(field.getModifiers()) && Modifier.isFinal(field.getModifiers()))
                || Modifier.isTransient(field.getModifiers());
    }

    private static boolean isIgnoreByExcelType(Field field, ExcelDirection excludeType) {
        ExcelType excelType = field.getAnnotation(ExcelType.class);
        if (excelType == null) {
            return false;
        }
        return excelType.value() == excludeType;
    }


    /**
     * 获得下拉数据，并添加到 {@link #selectMap} 中
     *
     * @param colIndex 列索引
     * @param field    字段
     */
    private void getSelectDataList(int colIndex, Field field) {
        ExcelColumnSelect columnSelect = field.getAnnotation(ExcelColumnSelect.class);
        String dictType = columnSelect.dictType();
        String functionName = columnSelect.functionName();
        boolean i18n = columnSelect.i18n();

        Assert.isTrue(ObjectUtil.isNotEmpty(dictType) || ObjectUtil.isNotEmpty(functionName),
                "Field({}) 的 @ExcelColumnSelect 注解，dictType 和 functionName 不能同时为空", field.getName());

        // 情况一：使用 dictType 获得下拉数据
        if (StrUtil.isNotEmpty(dictType)) {
            List<String> labels;
            if (i18n) {
                labels = translateDropdownLabels(columnSelect);
            } else {
                labels = DictFrameworkUtils.getDictDataLabelList(dictType);
            }
            selectMap.put(colIndex, labels);
            return;
        }

        // 情况二：使用 functionName 获得下拉数据
        Map<String, ExcelColumnSelectFunction> functionMap = SpringUtil.getApplicationContext().getBeansOfType(ExcelColumnSelectFunction.class);
        ExcelColumnSelectFunction function = CollUtil.findOne(functionMap.values(), item -> item.getName().equals(functionName));
        Assert.notNull(function, "未找到对应的 function({})", functionName);
        selectMap.put(colIndex, function.getOptions());
    }

    /**
     * 翻译下拉选项的 label（用于导出时显示当前语言的翻译）
     * <p>
     * 遍历字典数据，构建国际化 key（格式：前缀_字典类型_value），
     * 查询翻译后返回。如果未查到翻译，则使用原始 label。
     *
     * @param columnSelect 列选择注解
     * @return 翻译后的 label 列表
     */
    private List<String> translateDropdownLabels(ExcelColumnSelect columnSelect) {
        String dictType = columnSelect.dictType();
        String prefix = columnSelect.prefix();

        List<DictDataRespDTO> dictDatas = DictFrameworkUtils.getDictDataList(dictType);
        if (CollUtil.isEmpty(dictDatas)) {
            return Collections.emptyList();
        }

        return dictDatas.stream()
                .map(data -> {
                    String i18nKey = prefix + "_" + dictType + "_" + data.getValue();
                    String translated = I18nUtils.getMessage(i18nKey);
                    return StrUtil.isNotEmpty(translated) ? translated : data.getLabel();
                })
                .collect(Collectors.toList());
    }

    @Override
    public void afterSheetCreate(WriteWorkbookHolder writeWorkbookHolder, WriteSheetHolder writeSheetHolder) {
        if (CollUtil.isEmpty(selectMap)) {
            log.warn("[afterSheetCreate] selectMap is empty");
            return;
        }

        // 1. 获取相应操作对象
        DataValidationHelper helper = writeSheetHolder.getSheet().getDataValidationHelper();
        Workbook workbook = writeWorkbookHolder.getWorkbook();
        List<KeyValue<Integer, List<String>>> keyValues = convertList(selectMap.entrySet(), entry -> new KeyValue<>(entry.getKey(), entry.getValue()));
        keyValues.sort(Comparator.comparing(item -> item.getValue().size()));

        // 2. 创建数据字典的 sheet 页
        Sheet dictSheet = workbook.createSheet(DICT_SHEET_NAME);

        for (KeyValue<Integer, List<String>> keyValue : keyValues) {
            int colIndex = keyValue.getKey();
            List<String> options = keyValue.getValue();

            int rowLength = options.size();
            for (int i = 0; i < rowLength; i++) {
                Row row = dictSheet.getRow(i);
                if (row == null) {
                    row = dictSheet.createRow(i);
                }
                row.createCell(colIndex).setCellValue(options.get(i));
            }

            setColumnSelect(writeSheetHolder, workbook, helper, keyValue);
        }
    }

    /**
     * 设置单元格下拉选择
     */
    private static void setColumnSelect(WriteSheetHolder writeSheetHolder, Workbook workbook, DataValidationHelper helper,
                                        KeyValue<Integer, List<String>> keyValue) {
        int colIndex = keyValue.getKey();
        int optionCount = keyValue.getValue().size();

        // 1. 创建名称
        Name name = workbook.createName();
        String excelColumn = ExcelUtil.indexToColName(colIndex);
        String nameName = "dict" + colIndex;
        // sheet 名称包含空格时需要用单引号包裹
        String refers = "'" + DICT_SHEET_NAME + "'!$" + excelColumn + "$1:$" + excelColumn + "$" + optionCount;

        name.setNameName(nameName);
        name.setRefersToFormula(refers);

        // 2. 创建验证约束
        DataValidationConstraint constraint = helper.createFormulaListConstraint(nameName);
        CellRangeAddressList rangeAddressList = new CellRangeAddressList(FIRST_ROW, LAST_ROW, colIndex, colIndex);
        DataValidation validation = helper.createValidation(constraint, rangeAddressList);

        if (validation instanceof HSSFDataValidation) {
            validation.setSuppressDropDownArrow(false);
        } else {
            validation.setSuppressDropDownArrow(true);
            validation.setShowErrorBox(true);
        }
        validation.setErrorStyle(DataValidation.ErrorStyle.STOP);
        validation.createErrorBox("提示", "此值不存在于下拉选择中！");

        writeSheetHolder.getSheet().addValidationData(validation);
    }

}
