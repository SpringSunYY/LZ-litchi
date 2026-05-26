package com.lz.framework.common.validation.i18n;

import com.lz.framework.common.util.i18n.I18nUtils;
import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;

/**
 * I18nLength 注解的校验器
 */
public class I18nLengthValidator implements ConstraintValidator<I18nLength, String> {

    private String i18nKey;
    private String defaultMessage;
    private int min;
    private int max;

    @Override
    public void initialize(I18nLength constraintAnnotation) {
        this.i18nKey = constraintAnnotation.i18nKey();
        this.defaultMessage = constraintAnnotation.message();
        this.min = constraintAnnotation.min();
        this.max = constraintAnnotation.max();
    }

    @Override
    public boolean isValid(String value, ConstraintValidatorContext context) {
        if (value == null) {
            return true;
        }

        int length = value.length();
        if (length < min || length > max) {
            addConstraintViolation(context);
            return false;
        }
        return true;
    }

    protected void addConstraintViolation(ConstraintValidatorContext context) {
        String template = I18nUtils.getMessage(i18nKey, defaultMessage);
        String message = interpolate(template);
        context.disableDefaultConstraintViolation();
        context.buildConstraintViolationWithTemplate(message).addConstraintViolation();
    }

    protected String interpolate(String template) {
        if (template == null) return null;
        String result = template;
        result = result.replace("{min}", String.valueOf(min));
        result = result.replace("{max}", String.valueOf(max));
        return result;
    }
}
