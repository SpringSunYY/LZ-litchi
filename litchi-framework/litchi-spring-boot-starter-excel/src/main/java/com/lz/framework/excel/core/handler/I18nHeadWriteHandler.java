package com.lz.framework.excel.core.handler;

import cn.hutool.core.collection.CollUtil;
import com.alibaba.excel.annotation.ExcelIgnore;
import com.alibaba.excel.annotation.ExcelProperty;
import com.alibaba.excel.annotation.ExcelIgnoreUnannotated;
import com.alibaba.excel.write.handler.WorkbookWriteHandler;
import com.alibaba.excel.write.metadata.holder.WriteWorkbookHolder;
import com.lz.framework.excel.core.annotations.ExcelI18n;
import com.lz.framework.excel.core.annotations.ExcelDirection;
import com.lz.framework.excel.core.annotations.ExcelType;
import com.lz.framework.i18n.core.I18nUtils;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;

import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/**
 * Excel 表头国际化处理器
 *
 * @author YY
 */
public class I18nHeadWriteHandler implements WorkbookWriteHandler {

    private final Map<Integer, String> translatedHeadMap = new LinkedHashMap<>();

    public I18nHeadWriteHandler(Class<?> head) {
        buildTranslatedHeadMap(head);
    }

    private void buildTranslatedHeadMap(Class<?> head) {
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

            if (isIgnoreByExcelType(field, ExcelDirection.IMPORT)) {
                continue;
            }

            ExcelI18n excelI18n = field.getAnnotation(ExcelI18n.class);
            if (excelI18n != null) {
                String translated = I18nUtils.getMessage(excelI18n.i18nKey(), 0);
                if (translated != null) {
                    translatedHeadMap.put(colIndex, translated);
                }
            }

            ExcelProperty excelProperty = field.getAnnotation(ExcelProperty.class);
            if (excelProperty != null && excelProperty.index() != -1) {
                colIndex = excelProperty.index();
            }
            colIndex++;
        }
    }

    private static boolean isStaticFinalOrTransient(Field field) {
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

    @Override
    public void afterWorkbookDispose(WriteWorkbookHolder writeWorkbookHolder) {
        if (CollUtil.isEmpty(translatedHeadMap)) {
            return;
        }

        Workbook workbook = writeWorkbookHolder.getWorkbook();
        Iterator<Sheet> sheetIterator = workbook.sheetIterator();
        while (sheetIterator.hasNext()) {
            Sheet sheet = sheetIterator.next();
            Row headerRow = sheet.getRow(0);
            if (headerRow == null) {
                continue;
            }

            for (Map.Entry<Integer, String> entry : translatedHeadMap.entrySet()) {
                Cell cell = headerRow.getCell(entry.getKey());
                if (cell != null) {
                    cell.setCellValue(entry.getValue());
                }
            }
        }
    }

}
