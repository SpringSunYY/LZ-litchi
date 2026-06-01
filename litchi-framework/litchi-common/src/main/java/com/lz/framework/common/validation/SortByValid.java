package com.lz.framework.common.validation;

import com.lz.framework.common.exception.enums.GlobalErrorCodeConstants;
import jakarta.validation.Constraint;
import jakarta.validation.Payload;

import java.lang.annotation.*;

/**
 * 验证 sortBy 字段必须是标记了 @Sortable 的字段
 * <p>
 * 支持国际化，通过 i18nKey 指定国际化消息键名
 */
@Target({ElementType.TYPE})
@Retention(RetentionPolicy.RUNTIME)
@Constraint(validatedBy = SortByValidator.class)
@Documented
public @interface SortByValid {

    /**
     * 国际化消息键名，为空时使用默认 message
     *
     * @return i18n key
     */
    String i18nKey() default GlobalErrorCodeConstants.VALIDATION_SORT_BY;

    String message() default "排序字段不合法";

    Class<?>[] groups() default {};

    Class<? extends Payload>[] payload() default {};
}
