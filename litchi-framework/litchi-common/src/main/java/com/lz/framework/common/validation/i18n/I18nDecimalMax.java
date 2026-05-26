package com.lz.framework.common.validation.i18n;

import jakarta.validation.Constraint;
import jakarta.validation.Payload;

import java.lang.annotation.*;

/**
 * 国际化最大值校验注解（BigDecimal/String专用）
 * <p>
 * 支持从数据库获取国际化消息，实现多语言错误提示
 * <p>
 * 使用示例：
 * <pre>
 * {@code @I18nDecimalMax(i18nKey = "validation.field.max", value = "999999.99", message = "{} 不能大于 {value}")}
 * private BigDecimal price;
 *
 * {@code @I18nDecimalMax(i18nKey = "validation.field.max", value = "100.00")}
 * private String amount;
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
@Constraint(validatedBy = I18nDecimalMaxValidator.class)
public @interface I18nDecimalMax {

    /**
     * 国际化消息键名
     *
     * @return i18n key
     */
    String i18nKey();

    /**
     * 最大值（字符串形式，支持小数）
     *
     * @return 最大值
     */
    String value();

    /**
     * 是否包含边界值
     *
     * @return true 表示 <= value, false 表示 < value
     */
    boolean inclusive() default true;

    /**
     * 错误消息模板
     * <p>
     * 支持占位符：{value} 会自动替换为注解的 value 属性值
     *
     * @return 消息模板
     */
    String message() default "{} 不能大于 {value}";

    /**
     * 校验分组
     */
    Class<?>[] groups() default {};

    /**
     * 负载
     */
    Class<? extends Payload>[] payload() default {};
}
