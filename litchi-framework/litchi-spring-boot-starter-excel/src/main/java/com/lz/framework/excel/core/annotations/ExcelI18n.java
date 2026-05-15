package com.lz.framework.excel.core.annotations;

import com.alibaba.excel.annotation.ExcelProperty;

import java.lang.annotation.*;

/**
 * Excel 字段表头国际化
 * <p>
 * 导出 Excel 时，根据 {@link #i18nKey()} 从 i18n_message 表获取对应语言的表头翻译。
 * 如果没有配置，则使用 {@link ExcelProperty} 的value为表头
 * <p>
 * 此注解与字典注解完全独立：
 * <ul>
 *   <li>字段有字典 → 使用 {@link DictFormat} + 本注解</li>
 *   <li>字段无字典只需要国际化 → 只使用本注解</li>
 *   <li>字段无字典也不需要国际化 → 两者都不用</li>
 * </ul>
 *  长相思兮长相忆，短相思兮无穷极
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
