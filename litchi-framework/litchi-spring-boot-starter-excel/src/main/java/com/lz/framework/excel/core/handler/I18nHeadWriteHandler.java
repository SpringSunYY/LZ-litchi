package com.lz.framework.excel.core.handler;

import cn.hutool.core.collection.CollUtil;
import com.alibaba.excel.annotation.ExcelIgnore;
import com.alibaba.excel.annotation.ExcelProperty;
import com.alibaba.excel.annotation.ExcelIgnoreUnannotated;
import com.alibaba.excel.write.handler.WorkbookWriteHandler;
import com.alibaba.excel.write.metadata.holder.WriteWorkbookHolder;
import com.lz.framework.excel.core.annotations.ExcelI18n;
import com.lz.framework.i18n.core.I18nUtils;
import lombok.extern.slf4j.Slf4j;
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
@Slf4j
public class I18nHeadWriteHandler implements WorkbookWriteHandler {

    private final Map<Integer, String> translatedHeadMap = new LinkedHashMap<>();

    public I18nHeadWriteHandler(Class<?> head) {
        log.info("[I18nHeadWriteHandler] 构造函数被调用, head: {}", head.getName());
        buildTranslatedHeadMap(head);
    }

    private void buildTranslatedHeadMap(Class<?> head) {
        log.info("[I18nHeadWriteHandler] buildTranslatedHeadMap 开始, head: {}", head.getName());
        int colIndex = 0;
        boolean ignoreUnannotated = head.isAnnotationPresent(ExcelIgnoreUnannotated.class);
        log.info("[I18nHeadWriteHandler] ignoreUnannotated: {}, declaredFields数量: {}", ignoreUnannotated, head.getDeclaredFields().length);

        for (Field field : head.getDeclaredFields()) {
            log.info("[I18nHeadWriteHandler] 遍历字段: {}, isStatic: {}, isFinal: {}, isTransient: {}",
                    field.getName(),
                    Modifier.isStatic(field.getModifiers()),
                    Modifier.isFinal(field.getModifiers()),
                    Modifier.isTransient(field.getModifiers()));
            if (isStaticFinalOrTransient(field)) {
                log.info("[I18nHeadWriteHandler] 跳过字段: {} (static/final/transient)", field.getName());
                continue;
            }
            if ((ignoreUnannotated && !field.isAnnotationPresent(ExcelProperty.class))
                    || field.isAnnotationPresent(ExcelIgnore.class)) {
                log.info("[I18nHeadWriteHandler] 跳过字段: {} (ignoreUnannotated或ExcelIgnore)", field.getName());
                continue;
            }

            ExcelI18n excelI18n = field.getAnnotation(ExcelI18n.class);
            log.info("[I18nHeadWriteHandler] 字段: {}, ExcelI18n: {}", field.getName(), excelI18n);
            if (excelI18n != null) {
                log.info("[I18nHeadWriteHandler] 调用 I18nUtils.getMessage, key: {}", excelI18n.i18nKey());
                String translated = I18nUtils.getMessage(excelI18n.i18nKey(), 0);
                log.info("[I18nHeadWriteHandler] I18nUtils.getMessage 返回: {}", translated);
                if (translated != null) {
                    translatedHeadMap.put(colIndex, translated);
                    log.info("[I18nHeadWriteHandler] 已加入 translatedHeadMap, colIndex: {}, value: {}", colIndex, translated);
                }
            }

            ExcelProperty excelProperty = field.getAnnotation(ExcelProperty.class);
            if (excelProperty != null && excelProperty.index() != -1) {
                colIndex = excelProperty.index();
            }
            colIndex++;
        }
        log.info("[I18nHeadWriteHandler] buildTranslatedHeadMap 结束, translatedHeadMap大小: {}", translatedHeadMap.size());
    }

    private static boolean isStaticFinalOrTransient(Field field) {
        return (Modifier.isStatic(field.getModifiers()) && Modifier.isFinal(field.getModifiers()))
                || Modifier.isTransient(field.getModifiers());
    }

    @Override
    public void afterWorkbookDispose(WriteWorkbookHolder writeWorkbookHolder) {
        log.info("[I18nHeadWriteHandler] afterWorkbookDispose, translatedHeadMap大小: {}", translatedHeadMap.size());
        if (CollUtil.isEmpty(translatedHeadMap)) {
            return;
        }

        Workbook workbook = writeWorkbookHolder.getWorkbook();
        Iterator<Sheet> sheetIterator = workbook.sheetIterator();
        int sheetIndex = 0;
        while (sheetIterator.hasNext()) {
            Sheet sheet = sheetIterator.next();
            Row headerRow = sheet.getRow(0);
            if (headerRow == null) {
                log.info("[I18nHeadWriteHandler] sheet {} headerRow 为空", sheetIndex);
                sheetIndex++;
                continue;
            }

            for (Map.Entry<Integer, String> entry : translatedHeadMap.entrySet()) {
                Cell cell = headerRow.getCell(entry.getKey());
                if (cell != null) {
                    cell.setCellValue(entry.getValue());
                    log.info("[I18nHeadWriteHandler] sheet {} 列 {} 表头翻译为: {}", sheetIndex, entry.getKey(), entry.getValue());
                } else {
                    log.info("[I18nHeadWriteHandler] sheet {} 列 {} cell 为空", sheetIndex, entry.getKey());
                }
            }
            sheetIndex++;
        }
    }

}
