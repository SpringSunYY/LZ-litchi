package com.lz.framework.common.validation;

import cn.hutool.core.util.StrUtil;
import com.lz.framework.common.core.ArrayValuable;
import com.lz.framework.common.util.i18n.I18nUtils;
import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/**
 * 枚举值校验器
 */
public class InEnumValidator implements ConstraintValidator<InEnum, Object> {

    private List<?> values;
    private String i18nKey;
    private String message;

    @Override
    public void initialize(InEnum annotation) {
        ArrayValuable<?>[] values = annotation.value().getEnumConstants();
        if (values.length == 0) {
            this.values = Collections.emptyList();
        } else {
            this.values = Arrays.asList(values[0].array());
        }
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
        if (values.contains(value)) {
            return true;
        }
        // 校验不通过，自定义提示语句
        context.disableDefaultConstraintViolation(); // 禁用默认的 message 的值
        context.buildConstraintViolationWithTemplate(I18nUtils.getMessage(i18nKey,message)
                .replace("{value}", values.toString())).addConstraintViolation(); // 重新添加错误提示语句
        return false;
    }

}
