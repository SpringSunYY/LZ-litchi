package com.lz.framework.excel.core.annotations;

import java.lang.annotation.*;

/**
 * 给 Excel 列添加下拉选择数据
 *
 * 其中 {@link #dictType()} 和 {@link #functionName()} 二选一
 *
 * @author HUIHUI
 */
@Target({ElementType.FIELD})
@Retention(RetentionPolicy.RUNTIME)
@Inherited
public @interface ExcelColumnSelect {

    /**
     * @return 字典类型
     */
    String dictType() default "";

    /**
     * @return 获取下拉数据源的方法名称
     */
    String functionName() default "";

    /**
     * 是否开启国际化，默认 false
     * <p>
     * 开启后，下拉选项的 label 将使用字典数据中的国际化 key 查询翻译，
     * 如果国际化 key 为空则使用原始 label。
     *
     * @return 是否开启国际化
     */
    boolean i18n() default false;

}
