package com.lz.framework.common.validation.i18n;

import jakarta.validation.Constraint;
import jakarta.validation.Payload;

import java.lang.annotation.*;

/**
 * 国际化数值范围校验注解
 * <p>
 * 支持从数据库获取国际化消息，实现多语言错误提示
 * <p>
 * 使用示例：
 * <pre>
 * {@code @I18nRange(i18nKey = "validation.field.range", min = 0, max = 100, message = "{} 必须在 {min} 到 {max} 之间")}
 * private Integer score;
 *
 * {@code @I18nRange(i18nKey = "validation.field.range", min = 0, max = 999999)}
 * private BigDecimal amount;
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
@Constraint(validatedBy = I18nRangeValidator.class)
public @interface I18nRange {

    /**
     * 国际化消息键名
     *
     * @return i18n key
     */
    String i18nKey();

    /**
     * 最小值
     */
    String min() default "0";

    /**
     * 最大值
     */
    String max() default "9223372036854775807";

    /**
     * 错误消息模板
     * <p>
     * 支持占位符：{min}, {max} 会自动替换为注解的属性值
     *
     * @return 消息模板
     */
    String message() default "{} 必须在 {min} 到 {max} 之间";

    /**
     * 校验分组
     */
    Class<?>[] groups() default {};

    /**
     * 负载
     */
    Class<? extends Payload>[] payload() default {};
}
