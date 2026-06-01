package com.lz.framework.common.validation.i18n;

import jakarta.validation.Constraint;
import jakarta.validation.Payload;

import java.lang.annotation.*;

/**
 * 国际化不能为空校验注解
 * <p>
 * 支持从数据库获取国际化消息，实现多语言错误提示
 * <p>
 * 使用示例：
 * <pre>
 * // 完整配置
 * {@code @I18nNotNull(i18nKey = "validation.field.required", message = "{} 不能为空")}
 * private String name;
 *
 * // 简化配置，使用默认值
 * {@code @I18nNotNull(i18nKey = "validation.field.required")}
 * private String name;
 * </pre>
 *
 * @author lz
 */
@Target({
        ElementType.FIELD,
        ElementType.PARAMETER,
        ElementType.TYPE_USE
})
@Retention(RetentionPolicy.RUNTIME)
@Documented
@Constraint(validatedBy = I18nNotNullValidator.class)
public @interface I18nNotNull {

    /**
     * 国际化消息键名
     * <p>
     * 对应 infra_i18n_message 表中的 message_key 字段
     *
     * @return i18n key
     */
    String i18nKey();

    /**
     * 错误消息模板
     * <p>
     * 支持 {} 占位符，{} 会被替换为字段名
     * <p>
     * 示例：
     * <ul>
     *   <li>"{} 不能为空" → "名字 不能为空"</li>
     *   <li>"请填写 {}" → "请填写 名字"</li>
     * </ul>
     *
     * @return 消息模板
     */
    String message() default "{} 不能为空";

    /**
     * 校验分组
     *
     * @return 分组数组
     */
    Class<?>[] groups() default {};

    /**
     * 负载
     *
     * @return Payload 数组
     */
    Class<? extends Payload>[] payload() default {};
}
