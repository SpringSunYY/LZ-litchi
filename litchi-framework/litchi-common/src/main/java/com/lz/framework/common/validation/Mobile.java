package com.lz.framework.common.validation;

import com.lz.framework.common.exception.enums.GlobalErrorCodeConstants;
import jakarta.validation.Constraint;
import jakarta.validation.Payload;
import java.lang.annotation.*;

/**
 * 手机号校验注解
 * <p>
 * 支持国际化，通过 i18nKey 指定国际化消息键名
 * <p>
 * 使用示例：
 * <pre>
 * // 完整配置
 * {@code @Mobile(i18nKey = "validation.mobile", message = "手机号格式不正确")}
 * private String phone;
 *
 * // 简化配置（使用默认消息）
 * {@code @Mobile}
 * private String phone;
 * </pre>
 */
@Target({
        ElementType.METHOD,
        ElementType.FIELD,
        ElementType.ANNOTATION_TYPE,
        ElementType.CONSTRUCTOR,
        ElementType.PARAMETER,
        ElementType.TYPE_USE
})
@Retention(RetentionPolicy.RUNTIME)
@Documented
@Constraint(
        validatedBy = MobileValidator.class
)
public @interface Mobile {

    /**
     * 国际化消息键名，为空时使用默认 message
     *
     * @return i18n key
     */
    String i18nKey() default GlobalErrorCodeConstants.VALIDATION_MOBILE;

    String message() default "手机号格式不正确";

    Class<?>[] groups() default {};

    Class<? extends Payload>[] payload() default {};

}
