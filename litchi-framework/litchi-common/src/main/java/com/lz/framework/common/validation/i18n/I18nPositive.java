package com.lz.framework.common.validation.i18n;

import jakarta.validation.Constraint;
import jakarta.validation.Payload;

import java.lang.annotation.*;

/**
 * 国际化正数校验注解
 * <p>
 * 支持从数据库获取国际化消息，实现多语言错误提示
 * <p>
 * 使用示例：
 * <pre>
 * {@code @I18nPositive(i18nKey = "validation.field.positive", message = "{} 必须为正数")}
 * private BigDecimal price;
 *
 * {@code @I18nPositive(i18nKey = "validation.field.positive")}
 * private Integer quantity;
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
@Constraint(validatedBy = I18nPositiveValidator.class)
public @interface I18nPositive {

    /**
     * 国际化消息键名
     *
     * @return i18n key
     */
    String i18nKey();

    /**
     * 是否包含零
     *
     * @return true 表示 > 0, false 表示 >= 0
     */
    boolean strict() default true;

    /**
     * 错误消息模板
     *
     * @return 消息模板
     */
    String message() default "{} 必须为正数";

    /**
     * 校验分组
     */
    Class<?>[] groups() default {};

    /**
     * 负载
     */
    Class<? extends Payload>[] payload() default {};
}
