package com.lz.framework.common.validation;

import cn.hutool.core.text.CharSequenceUtil;
import cn.hutool.core.util.StrUtil;
import cn.hutool.core.util.PhoneUtil;
import com.lz.framework.common.util.i18n.I18nUtils;

import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;

/**
 * 固定电话校验器
 */
public class TelephoneValidator implements ConstraintValidator<Telephone, String> {

    private String i18nKey;
    private String message;

    @Override
    public void initialize(Telephone annotation) {
        this.i18nKey = annotation.i18nKey();
        this.message = annotation.message();
    }

    @Override
    public boolean isValid(String value, ConstraintValidatorContext context) {
        // 如果电话为空，默认不校验，即校验通过
        if (CharSequenceUtil.isEmpty(value)) {
            return true;
        }
        // 校验电话
        boolean valid = PhoneUtil.isTel(value) || PhoneUtil.isPhone(value);
        if (!valid) {
            context.disableDefaultConstraintViolation();
            context.buildConstraintViolationWithTemplate(I18nUtils.getMessage(i18nKey,message))
                    .addConstraintViolation();
        }
        return valid;
    }

}
