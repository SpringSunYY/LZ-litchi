package com.lz.framework.common.validation.i18n;

import jakarta.validation.Constraint;
import jakarta.validation.Payload;

import java.lang.annotation.*;

/**
 * 国际化不能为空字符串/集合校验注解
 * <p>
 * 支持从数据库获取国际化消息，实现多语言错误提示
 * <p>
 * 使用示例：
 * <pre>
 * // 完整配置
 * {@code @I18nNotEmpty(i18nKey = "validation.field.notEmpty", message = "{} 不能为空")}
 * private String name;
 *
 * // 简化配置
 * {@code @I18nNotEmpty(i18nKey = "validation.field.notEmpty")}
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
@Constraint(validatedBy = I18nNotEmptyValidator.class)
public @interface I18nNotEmpty {

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
    String message() default "{} 不能为空";

    /**
     * 校验分组
     */
    Class<?>[] groups() default {};

    /**
     * 负载
     */
    Class<? extends Payload>[] payload() default {};
}
