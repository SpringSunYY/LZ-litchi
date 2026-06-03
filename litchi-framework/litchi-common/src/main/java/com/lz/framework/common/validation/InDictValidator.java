package com.lz.framework.common.validation;

import com.lz.framework.common.util.dict.DictUtils;
import com.lz.framework.common.util.i18n.I18nUtils;
import com.lz.framework.common.util.string.StrUtils;
import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;

/**
 * 字典值校验器
 */
public class InDictValidator implements ConstraintValidator<InDict, Object> {

    private String dictType;
    private String i18nKey;
    private String message;

    @Override
    public void initialize(InDict annotation) {
        this.dictType = annotation.dictType();
        this.i18nKey = annotation.i18nKey();
        this.message = annotation.message();
    }

    @Override
    public boolean isValid(Object value, ConstraintValidatorContext context) {
        // 为空时，默认不校验，即认为通过
        if (value == null) {
            return true;
        }
        // 校验通过
        if (DictUtils.containsValue(dictType, String.valueOf(value))) {
            return true;
        }
        // 校验不通过，自定义提示语句
        context.disableDefaultConstraintViolation();
        context.buildConstraintViolationWithTemplate(
                        StrUtils.format(
                                I18nUtils.getMessage(i18nKey, message),
                                dictType))
                .addConstraintViolation();
        return false;
    }

}
