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

}
