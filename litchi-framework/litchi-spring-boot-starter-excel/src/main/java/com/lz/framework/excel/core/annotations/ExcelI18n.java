package com.lz.framework.excel.core.annotations;

import com.alibaba.excel.annotation.ExcelProperty;

import java.lang.annotation.*;

/**
 * Excel 字段表头国际化
 * <p>
 * 导出 Excel 时，根据 {@link #i18nKey()} 从 i18n_message 表获取对应语言的表头翻译。
 * 如果没有配置，则使用 {@link ExcelProperty} 的value为表头
 * <p>
 * @author lz
 */
@Target({ElementType.FIELD})
@Retention(RetentionPolicy.RUNTIME)
public @interface ExcelI18n {

    /**
     * 国际化键名
     * <p>
     * 对应 i18n_message 表中的 message_key 字段。
     * 导出时会根据请求的 Accept-Language 自动翻译为对应语言。
     *
     * @return 国际化键名
     */
    String i18nKey();

}
