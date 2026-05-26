package com.lz.framework.common.validation.i18n;

import jakarta.validation.Constraint;
import jakarta.validation.Payload;

import java.lang.annotation.*;

/**
 * 国际化过去时间校验注解
 * <p>
 * 支持从数据库获取国际化消息，实现多语言错误提示
 * <p>
 * 使用示例：
 * <pre>
 * {@code @I18nPast(i18nKey = "validation.field.past", message = "{} 必须是过去的时间")}
 * private LocalDateTime birthDate;
 *
 * {@code @I18nPast(i18nKey = "validation.field.past")}
 * private Date createdAt;
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
@Constraint(validatedBy = I18nPastValidator.class)
public @interface I18nPast {

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
    String message() default "{} 必须是过去的时间";

    /**
     * 校验分组
     */
    Class<?>[] groups() default {};

    /**
     * 负载
     */
    Class<? extends Payload>[] payload() default {};
}
