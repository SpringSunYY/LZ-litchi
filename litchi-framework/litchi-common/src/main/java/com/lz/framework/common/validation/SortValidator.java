package com.lz.framework.common.validation;

import cn.hutool.core.util.StrUtil;
import com.lz.framework.common.util.i18n.I18nUtils;
import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;

/**
 * Sort 数组校验器 - 校验每个元素必须是 asc 或 desc
 */
public class SortValidator implements ConstraintValidator<SortValidation, String[]> {

    private String i18nKey;
    private String message;

    @Override
    public void initialize(SortValidation annotation) {
        this.i18nKey = annotation.i18nKey();
        this.message = annotation.message();
    }

    @Override
    public boolean isValid(String[] value, ConstraintValidatorContext context) {
        if (value == null || value.length == 0) {
            return true;
        }

        for (String sort : value) {
            if (sort != null && !sort.isEmpty() && !isValidSort(sort)) {
                context.disableDefaultConstraintViolation();
                context.buildConstraintViolationWithTemplate(I18nUtils.getMessage(i18nKey,message)).addConstraintViolation();
                return false;
            }
        }

        return true;
    }

    private boolean isValidSort(String sort) {
        return "asc".equalsIgnoreCase(sort) || "desc".equalsIgnoreCase(sort);
    }

}
