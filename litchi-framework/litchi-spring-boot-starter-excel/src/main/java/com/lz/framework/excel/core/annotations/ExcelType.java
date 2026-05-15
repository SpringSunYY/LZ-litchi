package com.lz.framework.excel.core.annotations;

import java.lang.annotation.*;

/**
 * Excel 字段类型
 * <p>
 * 用于指定字段在导出/导入时的可见性和可用性。
 * <ul>
 *   <li>ALL：导出 + 导入（默认）</li>
 *   <li>EXPORT：仅导出</li>
 *   <li>IMPORT：仅导入</li>
 * </ul>
 * <p>
 * 此注解可与 {@link ExcelI18n}、{@link DictFormat}、{@link ExcelColumnSelect} 配合使用，
 * 控制哪些字段在导入或导出时生效。
 *
 * @author lz
 */
@Target({ElementType.FIELD})
@Retention(RetentionPolicy.RUNTIME)
public @interface ExcelType {

    /**
     * 字段类型
     *
     * @return 字段类型
     */
    ExcelDirection value() default ExcelDirection.ALL;

}
