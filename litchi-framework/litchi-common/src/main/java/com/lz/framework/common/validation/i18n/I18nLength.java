package com.lz.framework.common.validation.i18n;

import jakarta.validation.Constraint;
import jakarta.validation.Payload;

import java.lang.annotation.*;

/**
 * 国际化字符串长度校验注解
 * <p>
 * 支持从数据库获取国际化消息，实现多语言错误提示
 * <p>
 * 使用示例：
 * <pre>
 * {@code @I18nLength(i18nKey = "validation.field.length", min = 2, max = 50, message = "{} 长度必须在 {min} 到 {max} 个字符之间")}
 * private String name;
 *
 * {@code @I18nLength(i18nKey = "validation.field.length", min = 6, max = 20)}
 * private String password;
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
@Constraint(validatedBy = I18nLengthValidator.class)
public @interface I18nLength {

    /**
     * 国际化消息键名
     *
     * @return i18n key
     */
    String i18nKey();

    /**
     * 最小长度
     */
    int min() default 0;

    /**
     * 最大长度
     */
    int max() default Integer.MAX_VALUE;

    /**
     * 错误消息模板
     * <p>
     * 支持占位符：{min}, {max} 会自动替换为注解的属性值
     *
     * @return 消息模板
     */
    String message() default "{} 长度必须在 {min} 到 {max} 个字符之间";

    /**
     * 校验分组
     */
    Class<?>[] groups() default {};

    /**
     * 负载
     */
    Class<? extends Payload>[] payload() default {};
}
