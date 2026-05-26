package com.lz.framework.common.validation.i18n;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * 国际化消息插值工具类
 * <p>
 * 支持的占位符格式：
 * <ul>
 *   <li>{0}, {1}, {2}... - 按索引替换参数</li>
 *   <li>{fieldName} - 字段名（需要调用 setFieldName 设置）</li>
 * </ul>
 */
public class I18nMessageInterpolator {

    private static final Pattern INDEX_PATTERN = Pattern.compile("\\{(\\d+)\\}");
    private static final Pattern FIELD_PATTERN = Pattern.compile("\\{fieldName\\}");

    private String fieldName;

    public void setFieldName(String fieldName) {
        this.fieldName = fieldName;
    }

    /**
     * 消息插值处理
     *
     * @param message 原始消息模板
     * @param params 参数数组，用于替换 {0}, {1} 等
     * @return 替换后的消息
     */
    public String interpolate(String message, Object... params) {
        if (message == null) {
            return null;
        }

        String result = message;

        // 替换 {fieldName}
        if (fieldName != null) {
            result = FIELD_PATTERN.matcher(result).replaceAll(fieldName);
        }

        // 替换 {0}, {1}, {2}...
        if (params != null && params.length > 0) {
            Matcher matcher = INDEX_PATTERN.matcher(result);
            StringBuffer sb = new StringBuffer();
            while (matcher.find()) {
                int index = Integer.parseInt(matcher.group(1));
                String replacement = (index < params.length && params[index] != null)
                        ? params[index].toString()
                        : matcher.group(0);
                matcher.appendReplacement(sb, Matcher.quoteReplacement(replacement));
            }
            matcher.appendTail(sb);
            result = sb.toString();
        }

        return result;
    }

    /**
     * 获取国际化消息
     *
     * @param i18nKey i18n key
     * @param defaultMessage 默认消息
     * @param params 参数数组
     * @return 替换后的消息
     */
    public String getMessage(String i18nKey, String defaultMessage, Object... params) {
        String template = com.lz.framework.common.util.i18n.I18nUtils.getMessage(i18nKey, defaultMessage);
        return interpolate(template, params);
    }
}
