package com.lz.framework.common.validation.i18n;

import com.lz.framework.common.util.i18n.I18nUtils;
import jakarta.validation.ConstraintValidatorContext;

import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * 国际化校验器基类
 * <p>
 * 支持 Hibernate Validator 官方风格的占位符替换：
 * <ul>
 *   <li>{属性名} - 自动映射注解属性值</li>
 *   <li>{0}, {1}, {2}... - 索引占位符</li>
 * </ul>
 *
 * @param <A> 注解类型
 * @param <T> 待校验值类型
 */
public abstract class I18nConstraintValidator<A extends Annotation, T> {

    private static final Pattern NAMED_PLACEHOLDER = Pattern.compile("\\{(\\w+)\\}");
    private static final Pattern INDEX_PLACEHOLDER = Pattern.compile("\\{(\\d+)\\}");

    protected A annotation;
    protected String i18nKey;
    protected String defaultMessage;

    /**
     * 初始化校验器
     *
     * @param constraintAnnotation 校验注解
     */
    public void initialize(A constraintAnnotation) {
        this.annotation = constraintAnnotation;
        this.i18nKey = getI18nKey(constraintAnnotation);
        this.defaultMessage = getDefaultMessage(constraintAnnotation);
    }

    /**
     * 获取 i18nKey，子类实现
     */
    protected abstract String getI18nKey(A constraintAnnotation);

    /**
     * 获取默认消息，子类实现
     */
    protected String getDefaultMessage(A constraintAnnotation) {
        try {
            Field field = constraintAnnotation.annotationType().getDeclaredField("message");
            field.setAccessible(true);
            return (String) field.get(constraintAnnotation);
        } catch (Exception e) {
            return "{} 校验失败";
        }
    }

    /**
     * 获取国际化消息，自动替换占位符
     *
     * @param params 索引参数（可选）
     * @return 处理后的消息
     */
    protected String getMessage(Object... params) {
        String template = I18nUtils.getMessage(i18nKey, defaultMessage);
        return interpolate(template, params);
    }

    /**
     * 构建校验违规消息
     *
     * @param context 校验上下文
     * @param params 索引参数（可选）
     */
    protected void addConstraintViolation(ConstraintValidatorContext context, Object... params) {
        context.disableDefaultConstraintViolation();
        context.buildConstraintViolationWithTemplate(getMessage(params))
                .addConstraintViolation();
    }

    /**
     * 消息插值
     * <p>
     * 支持两种占位符：
     * <ul>
     *   <li>{属性名} - 从注解属性自动提取值替换</li>
     *   <li>{0}, {1}... - 从 params 数组按索引替换</li>
     * </ul>
     *
     * @param template 消息模板
     * @param params 索引参数
     * @return 替换后的消息
     */
    protected String interpolate(String template, Object... params) {
        if (template == null) {
            return null;
        }

        String result = template;

        // 第一步：替换 {属性名} 占位符（从注解属性获取值）
        result = replaceAnnotationPlaceholders(result);

        // 第二步：替换 {0}, {1} 等索引占位符
        result = replaceIndexPlaceholders(result, params);

        return result;
    }

    /**
     * 替换注解属性占位符 {属性名}
     */
    private String replaceAnnotationPlaceholders(String template) {
        if (annotation == null) {
            return template;
        }

        String result = template;
        Matcher matcher = NAMED_PLACEHOLDER.matcher(template);

        StringBuffer sb = new StringBuffer();
        while (matcher.find()) {
            String propertyName = matcher.group(1);

            // 跳过 message 和 groups, payload 等非值属性
            if ("message".equals(propertyName) || "groups".equals(propertyName)
                    || "payload".equals(propertyName) || "i18nKey".equals(propertyName)) {
                continue;
            }

            try {
                Field field = annotation.annotationType().getDeclaredField(propertyName);
                field.setAccessible(true);
                Object value = field.get(annotation);
                String replacement = value != null ? String.valueOf(value) : "";
                matcher.appendReplacement(sb, Matcher.quoteReplacement(replacement));
            } catch (Exception e) {
                // 属性不存在，跳过
            }
        }
        matcher.appendTail(sb);
        return sb.toString();
    }

    /**
     * 替换索引占位符 {0}, {1}, {2}...
     */
    private String replaceIndexPlaceholders(String template, Object... params) {
        if (params == null || params.length == 0) {
            return template;
        }

        String result = template;
        Matcher matcher = INDEX_PLACEHOLDER.matcher(template);

        StringBuffer sb = new StringBuffer();
        while (matcher.find()) {
            int index = Integer.parseInt(matcher.group(1));
            String replacement = (index >= 0 && index < params.length && params[index] != null)
                    ? String.valueOf(params[index])
                    : matcher.group(0);
            matcher.appendReplacement(sb, Matcher.quoteReplacement(replacement));
        }
        matcher.appendTail(sb);
        return sb.toString();
    }
}
