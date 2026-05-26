package com.lz.framework.common.validation.i18n;

import com.lz.framework.common.util.i18n.I18nUtils;
import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;

import java.util.regex.Pattern;

/**
 * I18nEmail 注解的校验器
 */
public class I18nEmailValidator implements ConstraintValidator<I18nEmail, String> {

    private static final Pattern EMAIL_PATTERN = Pattern.compile(
            "^[A-Za-z0-9+_.-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}$"
    );

    private String i18nKey;
    private String defaultMessage;

    @Override
    public void initialize(I18nEmail constraintAnnotation) {
        this.i18nKey = constraintAnnotation.i18nKey();
        this.defaultMessage = constraintAnnotation.message();
    }

    @Override
    public boolean isValid(String value, ConstraintValidatorContext context) {
        if (value == null) {
            return true;
        }

        if (!EMAIL_PATTERN.matcher(value).matches()) {
            context.disableDefaultConstraintViolation();
            context.buildConstraintViolationWithTemplate(
                    I18nUtils.getMessage(i18nKey, defaultMessage)
            ).addConstraintViolation();
            return false;
        }
        return true;
    }
}
