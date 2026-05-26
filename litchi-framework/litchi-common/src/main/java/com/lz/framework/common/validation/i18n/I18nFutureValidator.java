package com.lz.framework.common.validation.i18n;

import com.lz.framework.common.util.i18n.I18nUtils;
import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;

import java.time.*;

/**
 * I18nFuture 注解的校验器
 */
public class I18nFutureValidator implements ConstraintValidator<I18nFuture, Object> {

    private String i18nKey;
    private String defaultMessage;

    @Override
    public void initialize(I18nFuture constraintAnnotation) {
        this.i18nKey = constraintAnnotation.i18nKey();
        this.defaultMessage = constraintAnnotation.message();
    }

    @Override
    public boolean isValid(Object value, ConstraintValidatorContext context) {
        if (value == null) {
            return true;
        }

        Instant now = Instant.now();
        Instant valueInstant = toInstant(value);

        if (valueInstant != null && !valueInstant.isAfter(now)) {
            context.disableDefaultConstraintViolation();
            context.buildConstraintViolationWithTemplate(
                    I18nUtils.getMessage(i18nKey, defaultMessage)
            ).addConstraintViolation();
            return false;
        }
        return true;
    }

    private Instant toInstant(Object value) {
        if (value instanceof Instant) {
            return (Instant) value;
        } else if (value instanceof LocalDateTime) {
            return ((LocalDateTime) value).atZone(ZoneId.systemDefault()).toInstant();
        } else if (value instanceof LocalDate) {
            return ((LocalDate) value).atStartOfDay(ZoneId.systemDefault()).toInstant();
        } else if (value instanceof ZonedDateTime) {
            return ((ZonedDateTime) value).toInstant();
        } else if (value instanceof java.sql.Date) {
            return ((java.sql.Date) value).toInstant();
        } else if (value instanceof java.util.Date) {
            return ((java.util.Date) value).toInstant();
        } else if (value instanceof Long) {
            return Instant.ofEpochMilli((Long) value);
        }
        return null;
    }
}
