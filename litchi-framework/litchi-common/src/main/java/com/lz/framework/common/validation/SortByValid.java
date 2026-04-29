package com.lz.framework.common.validation;

import jakarta.validation.Constraint;
import jakarta.validation.Payload;

import java.lang.annotation.*;

/**
 * 验证 sortBy 字段必须是标记了 @Sortable 的字段
 */
@Target({ElementType.TYPE})
@Retention(RetentionPolicy.RUNTIME)
@Constraint(validatedBy = SortByValidator.class)
@Documented
public @interface SortByValid {

    String message() default "排序字段不合法";

    Class<?>[] groups() default {};

    Class<? extends Payload>[] payload() default {};
}
