package com.lz.framework.common.validation;

import cn.hutool.core.util.StrUtil;
import com.lz.framework.common.util.i18n.I18nUtils;
import com.lz.framework.common.util.validation.ValidationUtils;

import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;

/**
 * 手机号校验器
 */
public class MobileValidator implements ConstraintValidator<Mobile, String> {

    private String i18nKey;
    private String message;

    @Override
    public void initialize(Mobile annotation) {
        this.i18nKey = annotation.i18nKey();
        this.message = annotation.message();
    }

    @Override
    public boolean isValid(String value, ConstraintValidatorContext context) {
        // 如果手机号为空，默认不校验，即校验通过
        if (StrUtil.isEmpty(value)) {
            return true;
        }
        // 校验手机
        boolean valid = ValidationUtils.isMobile(value);
        if (!valid) {
            context.disableDefaultConstraintViolation();
            context.buildConstraintViolationWithTemplate(I18nUtils.getMessage(i18nKey,message))
                    .addConstraintViolation();
        }
        return valid;
    }

}
