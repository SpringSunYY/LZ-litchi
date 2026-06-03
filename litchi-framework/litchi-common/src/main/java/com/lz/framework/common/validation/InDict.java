package com.lz.framework.common.validation;

import com.lz.framework.common.exception.enums.GlobalErrorCodeConstants;
import jakarta.validation.Constraint;
import jakarta.validation.Payload;

import java.lang.annotation.*;

/**
 * 字典值校验注解
 * <p>
 * 根据字典类型校验字段值是否在字典数据范围内
 * <p>
 * 使用示例：
 * <pre>
 * // 根据字典类型校验
 * {@code @InDict(dictType = "sys_user_status")}
 * private Integer status;
 *
 * // 自定义消息
 * {@code @InDict(dictType = "sys_user_status", message = "状态值不在字典范围内")}
 * private Integer status;
 * </pre>
 */
@Target({
        ElementType.METHOD,
        ElementType.FIELD,
        ElementType.ANNOTATION_TYPE,
        ElementType.CONSTRUCTOR,
        ElementType.PARAMETER,
        ElementType.TYPE_USE
})
@Retention(RetentionPolicy.RUNTIME)
@Documented
@Constraint(
        validatedBy = {InDictValidator.class, InDictCollectionValidator.class}
)
public @interface InDict {

    /**
     * 国际化消息键名，为空时使用默认 message
     *
     * @return i18n key
     */
    String i18nKey() default GlobalErrorCodeConstants.VALIDATION_IN_DICT;

    /**
     * 字典类型
     *
     * @return 字典类型
     */
    String dictType();

    String message() default "必须在指定范围 {value}";

    Class<?>[] groups() default {};

    Class<? extends Payload>[] payload() default {};

}
