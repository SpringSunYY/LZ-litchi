package com.lz.framework.common.validation;

import cn.hutool.core.collection.CollUtil;
import com.lz.framework.common.biz.system.dict.dto.DictDataRespDTO;
import com.lz.framework.common.util.dict.DictUtils;
import com.lz.framework.common.util.i18n.I18nUtils;
import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;

import java.util.Collection;
import java.util.List;

/**
 * 字典值集合校验器 - 校验集合中所有元素都在指定字典范围内
 */
public class InDictCollectionValidator implements ConstraintValidator<InDict, Collection<?>> {

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
    public boolean isValid(Collection<?> list, ConstraintValidatorContext context) {
        if (list == null) {
            return true;
        }
        List<DictDataRespDTO> dictDataList = DictUtils.getDictDataList(dictType);
        if (CollUtil.isEmpty(dictDataList)) {
            return true;
        }
        // 校验通过
        for (Object item : list) {
            if (!DictUtils.containsValue(dictType, String.valueOf(item))) {
                context.disableDefaultConstraintViolation();
                context.buildConstraintViolationWithTemplate(
                        I18nUtils.getMessage(i18nKey, message)
                                .replace("{value}", CollUtil.join(list, ",") + " => " + dictType))
                        .addConstraintViolation();
                return false;
            }
        }
        return true;
    }

}
