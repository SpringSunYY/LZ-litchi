package com.lz.framework.excel.core.annotations;

import com.lz.framework.common.enums.InfraModuleConstants;

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
     * 开启后，下拉选项的 label 将作为国际化 key 进行翻译，
     * 组合规则：前缀_字典类型_value（示例：dict_system_user_sex_1）
     * 如果未查到对应翻译，则使用原始 label。
     *
     * @return 是否开启国际化
     */
    boolean i18n() default false;

    /**
     * 国际化 key 的前缀，默认 "dict"
     * <p>
     * 与 {@link #i18n()} 配合使用，最终 key = 前缀_字典类型_value
     *
     * @return 国际化 key 前缀
     */
    String prefix() default InfraModuleConstants.I18N_DICT_PREFIX;

}
