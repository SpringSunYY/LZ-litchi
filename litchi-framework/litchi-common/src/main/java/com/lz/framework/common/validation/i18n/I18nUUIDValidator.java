package com.lz.framework.common.validation.i18n;

import com.lz.framework.common.util.i18n.I18nUtils;
import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;

import java.util.UUID;

/**
 * I18nUUID 注解的校验器
 */
public class I18nUUIDValidator implements ConstraintValidator<I18nUUID, String> {

    private String i18nKey;
    private String defaultMessage;

    @Override
    public void initialize(I18nUUID constraintAnnotation) {
        this.i18nKey = constraintAnnotation.i18nKey();
        this.defaultMessage = constraintAnnotation.message();
    }

    @Override
    public boolean isValid(String value, ConstraintValidatorContext context) {
        if (value == null) {
            return true;
        }

        try {
            UUID.fromString(value);
            return true;
        } catch (IllegalArgumentException e) {
            context.disableDefaultConstraintViolation();
            context.buildConstraintViolationWithTemplate(
                    I18nUtils.getMessage(i18nKey, defaultMessage)
            ).addConstraintViolation();
            return false;
        }
    }
}
