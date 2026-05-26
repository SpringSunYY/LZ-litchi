package com.lz.framework.common.validation;

import cn.hutool.core.util.StrUtil;
import com.lz.framework.common.pojo.PageParam;
import com.lz.framework.common.util.i18n.I18nUtils;
import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;

/**
 * SortBy 字段验证器 - 只校验 sort 方向是否合法
 * <p>
 * 注意：不校验 sortBy 字段是否合法，不合法的字段会被自动忽略
 */
public class SortByValidator implements ConstraintValidator<SortByValid, PageParam> {

    private String i18nKey;
    private String message;

    @Override
    public void initialize(SortByValid annotation) {
        this.i18nKey = annotation.i18nKey();
        this.message = annotation.message();
    }

    @Override
    public boolean isValid(PageParam value, ConstraintValidatorContext context) {
        if (value == null) {
            return true;
        }

        String[] sort = value.getSort();
        if (sort == null || sort.length == 0) {
            return true;
        }

        for (String s : sort) {
            if (s != null && !s.isEmpty() && !isValidSort(s)) {
                context.disableDefaultConstraintViolation();
                context.buildConstraintViolationWithTemplate(I18nUtils.getMessage(i18nKey,message))
                        .addConstraintViolation();
                return false;
            }
        }

        return true;
    }

    private boolean isValidSort(String sort) {
        return "asc".equalsIgnoreCase(sort) || "desc".equalsIgnoreCase(sort);
    }

}
