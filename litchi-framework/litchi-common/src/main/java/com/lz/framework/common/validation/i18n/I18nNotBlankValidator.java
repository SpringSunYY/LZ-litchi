package com.lz.framework.common.validation.i18n;

import cn.hutool.core.util.StrUtil;
import com.lz.framework.common.util.i18n.I18nUtils;
import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;

/**
 * I18nNotBlank 注解的校验器
 */
public class I18nNotBlankValidator implements ConstraintValidator<I18nNotBlank, String> {

    private String i18nKey;
    private String message;

    @Override
    public void initialize(I18nNotBlank constraintAnnotation) {
        this.i18nKey = constraintAnnotation.i18nKey();
        this.message = constraintAnnotation.message();
    }

    @Override
    public boolean isValid(String value, ConstraintValidatorContext context) {
        if (value == null) {
            return true; // null 值由 @NotNull 处理
        }

        if (StrUtil.isBlank(value)) {
            context.disableDefaultConstraintViolation();
            context.buildConstraintViolationWithTemplate(getI18nMessage())
                    .addConstraintViolation();
            return false;
        }
        return true;
    }

    private String getI18nMessage() {
        String message = I18nUtils.getMessage(i18nKey, this.message);
        return message.replace("{}", "");
    }
}
