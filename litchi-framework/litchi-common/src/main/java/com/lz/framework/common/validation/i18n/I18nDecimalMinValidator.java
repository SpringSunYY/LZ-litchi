package com.lz.framework.common.validation.i18n;

import com.lz.framework.common.util.i18n.I18nUtils;
import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;

import java.math.BigDecimal;

/**
 * I18nDecimalMin 注解的校验器
 */
public class I18nDecimalMinValidator implements ConstraintValidator<I18nDecimalMin, Object> {

    private String i18nKey;
    private String defaultMessage;
    private BigDecimal minValue;
    private boolean inclusive;

    @Override
    public void initialize(I18nDecimalMin constraintAnnotation) {
        this.i18nKey = constraintAnnotation.i18nKey();
        this.defaultMessage = constraintAnnotation.message();
        this.minValue = new BigDecimal(constraintAnnotation.value());
        this.inclusive = constraintAnnotation.inclusive();
    }

    @Override
    public boolean isValid(Object value, ConstraintValidatorContext context) {
        if (value == null) {
            return true;
        }

        BigDecimal numValue = toBigDecimal(value);
        int compare = numValue.compareTo(minValue);

        boolean valid = inclusive ? (compare >= 0) : (compare > 0);
        if (!valid) {
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
        result = result.replace("{value}", minValue.toString());
        return result;
    }

    private BigDecimal toBigDecimal(Object value) {
        if (value instanceof BigDecimal) {
            return (BigDecimal) value;
        } else if (value instanceof Number) {
            return BigDecimal.valueOf(((Number) value).doubleValue());
        } else if (value instanceof String) {
            return new BigDecimal((String) value);
        }
        throw new IllegalArgumentException("Cannot convert value to BigDecimal: " + value.getClass());
    }
}
