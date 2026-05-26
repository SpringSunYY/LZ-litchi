package com.lz.framework.common.validation;

import com.lz.framework.common.enums.I18nErrorCodeConstants;
import jakarta.validation.Constraint;
import jakarta.validation.Payload;

import java.lang.annotation.*;

/**
 * 排序方向校验器 - 校验 sort 数组中每个元素必须是 asc 或 desc
 * <p>
 * 支持国际化，通过 i18nKey 指定国际化消息键名
 */
@Target({ElementType.FIELD, ElementType.PARAMETER})
@Retention(RetentionPolicy.RUNTIME)
@Documented
@Constraint(validatedBy = SortValidator.class)
public @interface SortValidation {

    /**
     * 国际化消息键名，为空时使用默认 message
     *
     * @return i18n key
     */
    String i18nKey() default I18nErrorCodeConstants.VALIDATION_SORT;

    String message() default "排序方向只能是 asc 或 desc";

    Class<?>[] groups() default {};

    Class<? extends Payload>[] payload() default {};

}
