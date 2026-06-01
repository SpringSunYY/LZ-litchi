package com.lz.framework.common.validation;

import com.lz.framework.common.core.ArrayValuable;
import com.lz.framework.common.exception.enums.GlobalErrorCodeConstants;
import jakarta.validation.Constraint;
import jakarta.validation.Payload;

import java.lang.annotation.*;

/**
 * 枚举值校验注解
 * <p>
 * 支持国际化，通过 i18nKey 指定国际化消息键名
 * <p>
 * 使用示例：
 * <pre>
 * // 完整配置
 * {@code @InEnum(value = StatusEnum.class, i18nKey = "validation.status", message = "必须在指定范围")}
 * private Integer status;
 *
 * // 简化配置（使用默认消息）
 * {@code @InEnum(value = StatusEnum.class)}
 * private Integer status;
 * </pre>
 *
 * @param <T> 枚举类型，必须实现 ArrayValuable 接口
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
        validatedBy = {InEnumValidator.class, InEnumCollectionValidator.class}
)
public @interface InEnum {

    /**
     * 国际化消息键名，为空时使用默认 message
     *
     * @return i18n key
     */
    String i18nKey() default GlobalErrorCodeConstants.VALIDATION_IN_ENUM;

    /**
     * @return 实现 ArrayValuable 接口的类
     */
    Class<? extends ArrayValuable<?>> value();

    String message() default "必须在指定范围 {value}";

    Class<?>[] groups() default {};

    Class<? extends Payload>[] payload() default {};

}
