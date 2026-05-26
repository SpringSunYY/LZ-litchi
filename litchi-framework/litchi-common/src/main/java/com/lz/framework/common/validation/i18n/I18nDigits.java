package com.lz.framework.common.validation.i18n;

import jakarta.validation.Constraint;
import jakarta.validation.Payload;

import java.lang.annotation.*;

/**
 * 国际化数字精度校验注解
 * <p>
 * 支持从数据库获取国际化消息，实现多语言错误提示
 * <p>
 * 使用示例：
 * <pre>
 * {@code @I18nDigits(i18nKey = "validation.field.digits", integer = 5, fraction = 2, message = "{} 整数部分最多 {integer} 位，小数部分最多 {fraction} 位")}
 * private BigDecimal amount;
 *
 * {@code @I18nDigits(i18nKey = "validation.field.digits", integer = 10, fraction = 0)}
 * private Long quantity;
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
@Constraint(validatedBy = I18nDigitsValidator.class)
public @interface I18nDigits {

    /**
     * 国际化消息键名
     *
     * @return i18n key
     */
    String i18nKey();

    /**
     * 整数部分最大位数
     *
     * @return 整数位数
     */
    int integer() default 10;

    /**
     * 小数部分最大位数
     *
     * @return 小数位数
     */
    int fraction() default 0;

    /**
     * 错误消息模板
     * <p>
     * 支持占位符：{integer}, {fraction} 会自动替换为注解的属性值
     *
     * @return 消息模板
     */
    String message() default "{} 整数部分最多 {integer} 位，小数部分最多 {fraction} 位";

    /**
     * 校验分组
     */
    Class<?>[] groups() default {};

    /**
     * 负载
     */
    Class<? extends Payload>[] payload() default {};
}
