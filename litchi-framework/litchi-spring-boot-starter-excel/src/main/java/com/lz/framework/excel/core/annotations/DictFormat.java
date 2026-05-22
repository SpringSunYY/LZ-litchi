package com.lz.framework.excel.core.annotations;

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
 * 导出时直接取字典数据的国际化 key 查询翻译，如果为空则使用原始 label；
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
     * 直接取字典数据中的国际化 key 查询翻译，如果为空则使用原始 label。
     *
     * @return 是否开启国际化
     */
    boolean i18n() default false;

}
