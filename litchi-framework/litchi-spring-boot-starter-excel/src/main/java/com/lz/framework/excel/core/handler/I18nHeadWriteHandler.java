package com.lz.framework.excel.core.handler;

import cn.hutool.core.collection.CollUtil;
import cn.hutool.core.util.StrUtil;
import com.alibaba.excel.annotation.ExcelIgnore;
import com.alibaba.excel.annotation.ExcelIgnoreUnannotated;
import com.alibaba.excel.annotation.ExcelProperty;
import com.alibaba.excel.write.handler.RowWriteHandler;
import com.alibaba.excel.write.metadata.holder.WriteSheetHolder;
import com.alibaba.excel.write.metadata.holder.WriteTableHolder;
import com.lz.framework.excel.core.annotations.ExcelDirection;
import com.lz.framework.excel.core.annotations.ExcelI18n;
import com.lz.framework.excel.core.annotations.ExcelType;
import com.lz.framework.common.util.i18n.I18nUtils;
import lombok.extern.slf4j.Slf4j;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;

import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.LinkedHashMap;
import java.util.Map;

/**
 * Excel 表头国际化处理器（写入 header 行时直接替换表头文字）
 *
 * @author lz
 */
@Slf4j
public class I18nHeadWriteHandler implements RowWriteHandler {

    /**
     * 列索引 -> 翻译后的值
     */
    private final Map<Integer, String> i18nHeadMap = new LinkedHashMap<>();

    public I18nHeadWriteHandler(Class<?> head) {
        this(head, ExcelDirection.ONLY_EXPORT);
    }

    public I18nHeadWriteHandler(Class<?> head, ExcelDirection direction) {
        buildI18nHeadMap(head, direction);
    }

    /**
     * 扫描指定VO类的所有字段，构建列索引到i18n翻译表头的映射
     * <p>
     * 列索引计算规则：
     * <ul>
     *   <li>若{@link ExcelProperty#index()}显式指定了非-1的值，使用该值作为列索引</li>
     *   <li>否则使用自动递增的{@code colIndex}</li>
     * </ul>
     *
     * @param head      待扫描的Excel VO类
     * @param direction 当前Excel操作方向，用于排除相反方向的字段
     */
    private void buildI18nHeadMap(Class<?> head, ExcelDirection direction) {
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
            // 跳过排除方向的字段（列排除由 ExcelUtils.excludeColumnFiledNames 处理，这里仅影响 i18n 表头构建）
            if (shouldExcludeByDirection(field, direction)) {
                colIndex++;
                continue;
            }

            ExcelI18n excelI18n = field.getAnnotation(ExcelI18n.class);
            ExcelProperty excelProperty = field.getAnnotation(ExcelProperty.class);

            // 确定当前字段的列索引：优先使用@ExcelProperty显式指定值，否则使用自动递增序号
            int explicitIndex = excelProperty != null ? excelProperty.index() : -1;
            int fieldColIndex = explicitIndex != -1 ? explicitIndex : colIndex;

            // 仅当存在@ExcelI18n注解且翻译文本非空时记录映射
            if (excelI18n != null) {
                String translated = I18nUtils.getMessage(excelI18n.i18nKey());
                if (StrUtil.isNotEmpty(translated)) {
                    i18nHeadMap.put(fieldColIndex, translated);
                }
            }

            colIndex = fieldColIndex + 1;
        }
    }


    /**
     * 判断字段是否为静态常量或transient字段，这些字段不参与Excel序列化
     *
     * @param field 待检查的字段对象
     * @return 若字段为static final修饰的编译期常量，或为transient修饰的字段，返回true；
     *         否则返回false
     */
    private static boolean isStaticFinalOrTransient(Field field) {
        return (Modifier.isStatic(field.getModifiers()) && Modifier.isFinal(field.getModifiers()))
                || Modifier.isTransient(field.getModifiers());
    }

    /**
     * 判断字段是否应该被排除（列方向）
     *
     * @param field      待检查的字段对象
     * @param direction  当前Excel操作方向
     * @return 若字段被排除，返回true；否则返回false
     */
    private static boolean shouldExcludeByDirection(Field field, ExcelDirection direction) {
        ExcelType excelType = field.getAnnotation(ExcelType.class);
        if (excelType == null) {
            return false;
        }
        if (direction == ExcelDirection.ONLY_EXPORT) {
            return excelType.value() == ExcelDirection.ONLY_IMPORT;
        } else if (direction == ExcelDirection.ONLY_IMPORT) {
            return excelType.value() == ExcelDirection.ONLY_EXPORT;
        }
        return false;
    }

    @Override
    public void afterRowDispose(WriteSheetHolder writeSheetHolder, WriteTableHolder writeTableHolder,
                               Row row, Integer relativeRowIndex, Boolean isHead) {
        // 只处理 header 行
        if (isHead == null || !isHead) {
            return;
        }
        if (CollUtil.isEmpty(i18nHeadMap)) {
            return;
        }

        for (Map.Entry<Integer, String> entry : i18nHeadMap.entrySet()) {
            Cell cell = row.getCell(entry.getKey());
            if (cell != null) {
                cell.setCellValue(entry.getValue());
            }
        }
    }
}
