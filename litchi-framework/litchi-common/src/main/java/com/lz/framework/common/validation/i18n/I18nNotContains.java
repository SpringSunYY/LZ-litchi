package com.lz.framework.common.validation.i18n;

import jakarta.validation.Constraint;
import jakarta.validation.Payload;

import java.lang.annotation.*;

/**
 * 国际化不能包含指定内容校验注解
 * <p>
 * 支持从数据库获取国际化消息，实现多语言错误提示
 * <p>
 * 使用示例：
 * <pre>
 * {@code @I18nNotContains(i18nKey = "validation.field.notContains", value = "admin", message = "{} 不能包含 'admin'")}
 * private String username;
 *
 * {@code @I18nNotContains(i18nKey = "validation.field.notContains", value = "script")}
 * private String content;
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
@Constraint(validatedBy = I18nNotContainsValidator.class)
public @interface I18nNotContains {

    /**
     * 国际化消息键名
     *
     * @return i18n key
     */
    String i18nKey();

    /**
     * 不能包含的字符串
     *
     * @return 禁止包含的内容
     */
    String value();

    /**
     * 错误消息模板
     * <p>
     * 支持占位符：{value} 会自动替换为注解的 value 属性值
     *
     * @return 消息模板
     */
    String message() default "{} 不能包含 {value}";

    /**
     * 校验分组
     */
    Class<?>[] groups() default {};

    /**
     * 负载
     */
    Class<? extends Payload>[] payload() default {};
}
