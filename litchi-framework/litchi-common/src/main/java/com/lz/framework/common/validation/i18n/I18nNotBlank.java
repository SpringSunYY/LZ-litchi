package com.lz.framework.common.validation.i18n;

import jakarta.validation.Constraint;
import jakarta.validation.Payload;

import java.lang.annotation.*;

/**
 * 国际化不能为空白字符校验注解
 * <p>
 * 支持从数据库获取国际化消息，实现多语言错误提示
 * <p>
 * 使用示例：
 * <pre>
 * // 完整配置
 * {@code @I18nNotBlank(i18nKey = "validation.field.notBlank", message = "{} 不能为空白")}
 * private String name;
 *
 * // 简化配置
 * {@code @I18nNotBlank(i18nKey = "validation.field.notBlank")}
 * private String name;
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
@Constraint(validatedBy = I18nNotBlankValidator.class)
public @interface I18nNotBlank {

    /**
     * 国际化消息键名
     *
     * @return i18n key
     */
    String i18nKey();

    /**
     * 错误消息模板
     *
     * @return 消息模板
     */
    String message() default "{} 不能为空白";

    /**
     * 校验分组
     */
    Class<?>[] groups() default {};

    /**
     * 负载
     */
    Class<? extends Payload>[] payload() default {};
}
