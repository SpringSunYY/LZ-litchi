package com.lz.framework.common.validation;

import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;

/**
 * Sort 数组校验器 - 校验每个元素必须是 asc 或 desc
 */
public class SortValidator implements ConstraintValidator<SortValidation, String[]> {

    @Override
    public boolean isValid(String[] value, ConstraintValidatorContext context) {
        if (value == null || value.length == 0) {
            return true;
        }

        for (String sort : value) {
            if (sort != null && !sort.isEmpty() && !isValidSort(sort)) {
                context.disableDefaultConstraintViolation();
                context.buildConstraintViolationWithTemplate("排序方向只能是 asc 或 desc").addConstraintViolation();
                return false;
            }
        }

        return true;
    }

    private boolean isValidSort(String sort) {
        return "asc".equalsIgnoreCase(sort) || "desc".equalsIgnoreCase(sort);
    }

}
