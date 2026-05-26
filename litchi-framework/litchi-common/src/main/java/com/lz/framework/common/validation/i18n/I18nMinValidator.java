package com.lz.framework.common.validation.i18n;

import com.lz.framework.common.util.i18n.I18nUtils;
import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;

import java.math.BigDecimal;

/**
 * I18nMin 注解的校验器
 */
public class I18nMinValidator implements ConstraintValidator<I18nMin, Number> {

    private String i18nKey;
    private String defaultMessage;
    private BigDecimal minValue;

    @Override
    public void initialize(I18nMin constraintAnnotation) {
        this.i18nKey = constraintAnnotation.i18nKey();
        this.defaultMessage = constraintAnnotation.message();
        this.minValue = BigDecimal.valueOf(constraintAnnotation.value());
    }

    @Override
    public boolean isValid(Number value, ConstraintValidatorContext context) {
        if (value == null) {
            return true;
        }

        BigDecimal numValue = toBigDecimal(value);
        if (numValue.compareTo(minValue) < 0) {
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
        result = result.replace("{value}", String.valueOf(minValue));
        return result;
    }

    private BigDecimal toBigDecimal(Number value) {
        if (value instanceof BigDecimal) {
            return (BigDecimal) value;
        }
        return BigDecimal.valueOf(value.doubleValue());
    }
}
