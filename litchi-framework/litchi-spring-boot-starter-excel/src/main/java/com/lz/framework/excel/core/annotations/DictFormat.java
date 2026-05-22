package com.lz.framework.excel.core.annotations;

import com.lz.framework.common.enums.InfraModuleConstants;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * 字典格式化
 * <p>
 * 导出时将字典值转换为字典标签，导入时将字典标签反向解析为字典值。
 * <p>
 * 支持国际化，开启后：
 * 导出时根据 {@link #i18n()} 和 {@link #prefix()} 组合国际化 key（格式：前缀_字典类型_value）查询翻译；
 * 导入时尝试用任意语言的国际化翻译匹配 label，再解析为字典值。
 * <p>
 * @author lz
 */
@Target({ElementType.FIELD})
@Retention(RetentionPolicy.RUNTIME)
public @interface DictFormat {

    /**
     * 字典类型
     * <p>
     * 例如：system_user_sex、system_common_status 等
     *
     * @return 字典类型
     */
    String value();

    /**
     * 是否开启国际化，默认 false
     * <p>
     * 开启后，导出时将字典值翻译为当前语言的 label，
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
