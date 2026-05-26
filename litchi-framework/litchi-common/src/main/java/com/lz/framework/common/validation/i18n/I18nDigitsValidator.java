package com.lz.framework.common.validation.i18n;

import com.lz.framework.common.util.i18n.I18nUtils;
import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;

import java.math.BigDecimal;

/**
 * I18nDigits 注解的校验器
 */
public class I18nDigitsValidator implements ConstraintValidator<I18nDigits, Object> {

    private String i18nKey;
    private String defaultMessage;
    private int integer;
    private int fraction;

    @Override
    public void initialize(I18nDigits constraintAnnotation) {
        this.i18nKey = constraintAnnotation.i18nKey();
        this.defaultMessage = constraintAnnotation.message();
        this.integer = constraintAnnotation.integer();
        this.fraction = constraintAnnotation.fraction();
    }

    @Override
    public boolean isValid(Object value, ConstraintValidatorContext context) {
        if (value == null) {
            return true;
        }

        String stringValue = toStringValue(value);
        if (stringValue == null) {
            return true;
        }

        if (!isValidDigits(stringValue)) {
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
        result = result.replace("{integer}", String.valueOf(integer));
        result = result.replace("{fraction}", String.valueOf(fraction));
        return result;
    }

    private String toStringValue(Object value) {
        if (value instanceof BigDecimal) {
            return ((BigDecimal) value).toPlainString();
        } else if (value instanceof Number) {
            return String.valueOf(value);
        } else if (value instanceof String) {
            return (String) value;
        }
        return null;
    }

    private boolean isValidDigits(String value) {
        String[] parts = value.split("[.,]");
        int integerPart = parts[0].replace("-", "").length();
        int fractionPart = parts.length > 1 ? parts[1].length() : 0;

        return integerPart <= integer && fractionPart <= fraction;
    }
}
