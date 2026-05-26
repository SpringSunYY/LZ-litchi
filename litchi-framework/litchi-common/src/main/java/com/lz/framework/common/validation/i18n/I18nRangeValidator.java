package com.lz.framework.common.validation.i18n;

import com.lz.framework.common.util.i18n.I18nUtils;
import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;

import java.math.BigDecimal;

/**
 * I18nRange 注解的校验器
 */
public class I18nRangeValidator implements ConstraintValidator<I18nRange, Object> {

    private String i18nKey;
    private String defaultMessage;
    private BigDecimal minValue;
    private BigDecimal maxValue;

    @Override
    public void initialize(I18nRange constraintAnnotation) {
        this.i18nKey = constraintAnnotation.i18nKey();
        this.defaultMessage = constraintAnnotation.message();
        this.minValue = new BigDecimal(constraintAnnotation.min());
        this.maxValue = new BigDecimal(constraintAnnotation.max());
    }

    @Override
    public boolean isValid(Object value, ConstraintValidatorContext context) {
        if (value == null) {
            return true;
        }

        BigDecimal numValue = toBigDecimal(value);
        if (numValue == null) {
            return true;
        }

        if (numValue.compareTo(minValue) < 0 || numValue.compareTo(maxValue) > 0) {
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
        result = result.replace("{min}", minValue.toString());
        result = result.replace("{max}", maxValue.toString());
        return result;
    }

    private BigDecimal toBigDecimal(Object value) {
        if (value instanceof BigDecimal) {
            return (BigDecimal) value;
        } else if (value instanceof Number) {
            return BigDecimal.valueOf(((Number) value).doubleValue());
        } else if (value instanceof String) {
            try {
                return new BigDecimal((String) value);
            } catch (NumberFormatException e) {
                return null;
            }
        }
        return null;
    }
}
