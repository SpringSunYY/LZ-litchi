package com.lz.framework.excel.core.annotations;

import java.lang.annotation.*;

/**
 * 字典格式化
 * <p>
 * 导出时将字典值转换为字典标签，导入时将字典标签反向解析为字典值。
 * <p>
 * 此注解独立于国际化：
 * <ul>
 *   <li>需要表头国际化 → 额外添加 {@link ExcelI18n} 注解</li>
 *   <li>不需要国际化 → 只使用本注解</li>
 * </ul>
 *
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
