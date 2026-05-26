package com.lz.framework.common.validation.i18n;

import cn.hutool.core.util.StrUtil;
import com.lz.framework.common.util.i18n.I18nUtils;
import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;

/**
 * I18nNotNull 注解的校验器
 */
public class I18nNotNullValidator implements ConstraintValidator<I18nNotNull, Object> {

    private String i18nKey;
    private String message;

    @Override
    public void initialize(I18nNotNull constraintAnnotation) {
        this.i18nKey = constraintAnnotation.i18nKey();
        this.message = constraintAnnotation.message();
    }

    @Override
    public boolean isValid(Object value, ConstraintValidatorContext context) {
        if (value == null) {
            context.disableDefaultConstraintViolation();
            context.buildConstraintViolationWithTemplate(getI18nMessage())
                    .addConstraintViolation();
            return false;
        }
        return true;
    }

    private String getI18nMessage() {
        if (StrUtil.isBlank(i18nKey)) {
            return message.replace("{}", "");
        }
        String i18nMsg = I18nUtils.getMessage(i18nKey);
        return StrUtil.isNotBlank(i18nMsg) ? i18nMsg : message.replace("{}", "");
    }
}
