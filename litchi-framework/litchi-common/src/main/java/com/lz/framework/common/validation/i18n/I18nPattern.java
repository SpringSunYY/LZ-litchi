package com.lz.framework.common.validation.i18n;

import jakarta.validation.Constraint;
import jakarta.validation.Payload;

import java.lang.annotation.*;

/**
 * 国际化正则表达式校验注解
 * <p>
 * 支持从数据库获取国际化消息，实现多语言错误提示
 * <p>
 * 使用示例：
 * <pre>
 * {@code @I18nPattern(i18nKey = "validation.field.pattern", regexp = "^[a-zA-Z0-9]+$", message = "{} 只能包含字母和数字")}
 * private String username;
 *
 * {@code @I18nPattern(i18nKey = "validation.field.phone", regexp = "^1[3-9]\\d{9}$")}
 * private String phone;
 * </pre>
 *
 * @author lz
 */
@Target({
        ElementType.FIELD,
        ElementType.PARAMETER,
        ElementType.TYPE_USE
})
@Retention(RetentionPolicy.RUNTIME)
@Documented
@Constraint(validatedBy = I18nPatternValidator.class)
public @interface I18nPattern {

    /**
     * 国际化消息键名
     *
     * @return i18n key
     */
    String i18nKey();

    /**
     * 正则表达式
     *
     * @return 正则表达式
     */
    String regexp();

    /**
     * 正则标志（多个标志用逗号分隔）
     * <p>
     * 可选值：CASE_INSENSITIVE, MULTILINE, DOTALL, UNICODE_CASE, CANON_EQ, UNIX_LINES, LITERAL, UNICODE_CHARACTER_CLASS, COMMENTS
     *
     * @return Flags
     */
    String[] flags() default {};

    /**
     * 错误消息模板
     * <p>
     * 支持占位符：{regexp} 会自动替换为注解的 regexp 属性值
     *
     * @return 消息模板
     */
    String message() default "{} 格式不正确，需要匹配 {regexp}";

    /**
     * 校验分组
     */
    Class<?>[] groups() default {};

    /**
     * 负载
     */
    Class<? extends Payload>[] payload() default {};
}
