package com.lz.framework.common.validation;

import jakarta.validation.Constraint;
import jakarta.validation.Payload;

import java.lang.annotation.*;

/**
 * 排序方向校验器 - 校验 sort 数组中每个元素必须是 asc 或 desc
 */
@Target({ElementType.FIELD, ElementType.PARAMETER})
@Retention(RetentionPolicy.RUNTIME)
@Documented
@Constraint(validatedBy = SortValidator.class)
public @interface SortValidation {

    String message() default "排序方向只能是 asc 或 desc";

    Class<?>[] groups() default {};

    Class<? extends Payload>[] payload() default {};

}
