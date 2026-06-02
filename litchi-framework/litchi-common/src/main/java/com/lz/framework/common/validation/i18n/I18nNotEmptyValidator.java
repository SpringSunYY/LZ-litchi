package com.lz.framework.common.validation.i18n;

import cn.hutool.core.collection.CollUtil;
import cn.hutool.core.util.StrUtil;
import com.lz.framework.common.util.i18n.I18nUtils;
import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;

import java.util.Collection;
import java.util.Map;

/**
 * I18nNotEmpty 注解的校验器
 */
public class I18nNotEmptyValidator implements ConstraintValidator<I18nNotEmpty, Object> {

    private String i18nKey;
    private String message;

    @Override
    public void initialize(I18nNotEmpty constraintAnnotation) {
        this.i18nKey = constraintAnnotation.i18nKey();
        this.message = constraintAnnotation.message();
    }

    @Override
    public boolean isValid(Object value, ConstraintValidatorContext context) {
        if (value == null) {
            context.disableDefaultConstraintViolation();
            context.buildConstraintViolationWithTemplate(getI18nMessage())
                    .addConstraintViolation();
            return false; // null 表示为空不可为空
        }

        boolean isEmpty = false;
        if (value instanceof String) {
            isEmpty = ((String) value).isEmpty();
        } else if (value instanceof Collection) {
            isEmpty = CollUtil.isEmpty((Collection<?>) value);
        } else if (value instanceof Map) {
            isEmpty = ((Map<?, ?>) value).isEmpty();
        } else if (value instanceof Object[]) {
            isEmpty = ((Object[]) value).length == 0;
        }

        if (isEmpty) {
            context.disableDefaultConstraintViolation();
            context.buildConstraintViolationWithTemplate(getI18nMessage())
                    .addConstraintViolation();
            return false;
        }
        return true;
    }

    private String getI18nMessage() {
        return I18nUtils.getMessage(i18nKey, this.message);
    }
}
