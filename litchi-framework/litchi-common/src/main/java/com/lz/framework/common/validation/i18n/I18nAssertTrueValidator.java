package com.lz.framework.common.validation.i18n;

import com.lz.framework.common.util.i18n.I18nUtils;
import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;

/**
 * I18nAssertTrue 注解的校验器
 */
public class I18nAssertTrueValidator implements ConstraintValidator<I18nAssertTrue, Boolean> {

    private String i18nKey;
    private String defaultMessage;

    @Override
    public void initialize(I18nAssertTrue constraintAnnotation) {
        this.i18nKey = constraintAnnotation.i18nKey();
        this.defaultMessage = constraintAnnotation.message();
    }

    @Override
    public boolean isValid(Boolean value, ConstraintValidatorContext context) {
        if (value == null) {
            return true;
        }

        if (!value) {
            context.disableDefaultConstraintViolation();
            context.buildConstraintViolationWithTemplate(
                    I18nUtils.getMessage(i18nKey, defaultMessage)
            ).addConstraintViolation();
            return false;
        }
        return true;
    }
}
