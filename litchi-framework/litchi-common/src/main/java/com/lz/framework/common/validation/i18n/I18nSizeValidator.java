package com.lz.framework.common.validation.i18n;

import cn.hutool.core.collection.CollUtil;
import com.lz.framework.common.util.i18n.I18nUtils;
import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;

import java.util.Collection;
import java.util.Map;

/**
 * I18nSize 注解的校验器
 */
public class I18nSizeValidator implements ConstraintValidator<I18nSize, Object> {

    private String i18nKey;
    private String defaultMessage;
    private int min;
    private int max;

    @Override
    public void initialize(I18nSize constraintAnnotation) {
        this.i18nKey = constraintAnnotation.i18nKey();
        this.defaultMessage = constraintAnnotation.message();
        this.min = constraintAnnotation.min();
        this.max = constraintAnnotation.max();
    }

    @Override
    public boolean isValid(Object value, ConstraintValidatorContext context) {
        if (value == null) {
            return true;
        }

        int size = getSize(value);
        if (size < min || size > max) {
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

    private int getSize(Object value) {
        if (value instanceof String) {
            return ((String) value).length();
        } else if (value instanceof Collection) {
            return CollUtil.size((Collection<?>) value);
        } else if (value instanceof Map) {
            return ((Map<?, ?>) value).size();
        } else if (value instanceof Object[]) {
            return ((Object[]) value).length;
        }
        return 0;
    }
}
