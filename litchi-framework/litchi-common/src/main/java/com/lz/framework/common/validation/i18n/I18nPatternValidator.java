package com.lz.framework.common.validation.i18n;

import com.lz.framework.common.util.i18n.I18nUtils;
import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * I18nPattern 注解的校验器
 */
public class I18nPatternValidator implements ConstraintValidator<I18nPattern, String> {

    private String i18nKey;
    private String defaultMessage;
    private Pattern pattern;

    @Override
    public void initialize(I18nPattern constraintAnnotation) {
        this.i18nKey = constraintAnnotation.i18nKey();
        this.defaultMessage = constraintAnnotation.message();

        int flags = parseFlags(constraintAnnotation.flags());
        this.pattern = Pattern.compile(constraintAnnotation.regexp(), flags);
    }

    private int parseFlags(String[] flagNames) {
        int flags = 0;
        for (String flagName : flagNames) {
            try {
                try {
                    flags |= Pattern.class.getField(flagName).getInt(null);
                } catch (IllegalAccessException e) {
                    throw new RuntimeException(e);
                }
            } catch (IllegalArgumentException | NoSuchFieldException | SecurityException e) {
                // 忽略未知标志
            }
        }
        return flags;
    }

    @Override
    public boolean isValid(String value, ConstraintValidatorContext context) {
        if (value == null) {
            return true;
        }

        Matcher matcher = pattern.matcher(value);
        if (!matcher.matches()) {
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
        result = result.replace("{regexp}", pattern.pattern());
        return result;
    }
}
