package com.lz.framework.common.validation.i18n;

import com.lz.framework.common.util.i18n.I18nUtils;
import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;

import java.math.BigDecimal;

/**
 * I18nNegative 注解的校验器
 */
public class I18nNegativeValidator implements ConstraintValidator<I18nNegative, Object> {

    private String i18nKey;
    private String defaultMessage;
    private boolean strict;

    @Override
    public void initialize(I18nNegative constraintAnnotation) {
        this.i18nKey = constraintAnnotation.i18nKey();
        this.defaultMessage = constraintAnnotation.message();
        this.strict = constraintAnnotation.strict();
    }

    @Override
    public boolean isValid(Object value, ConstraintValidatorContext context) {
        if (value == null) {
            return true;
        }

        BigDecimal numValue = toBigDecimal(value);
        boolean valid = strict ? (numValue.compareTo(BigDecimal.ZERO) < 0)
                               : (numValue.compareTo(BigDecimal.ZERO) <= 0);

        if (!valid) {
            context.disableDefaultConstraintViolation();
            context.buildConstraintViolationWithTemplate(
                    I18nUtils.getMessage(i18nKey, defaultMessage)
            ).addConstraintViolation();
            return false;
        }
        return true;
    }

    private BigDecimal toBigDecimal(Object value) {
        if (value instanceof BigDecimal) {
            return (BigDecimal) value;
        } else if (value instanceof Number) {
            return BigDecimal.valueOf(((Number) value).doubleValue());
        }
        throw new IllegalArgumentException("Cannot convert value to BigDecimal: " + value.getClass());
    }
}
