package com.lz.framework.common.validation.i18n;

/**
 * 国际化校验常量
 * <p>
 * 定义常用的校验消息 i18n key，与 infra_i18n_message 表中的 message_key 对应
 *
 * @author lz
 */
public class I18nValidationConstants {

    private I18nValidationConstants() {
    }

    /**
     * 字段校验相关
     */
    public static final String FIELD_REQUIRED = "validation.field.required";
    public static final String FIELD_NOT_EMPTY = "validation.field.notEmpty";
    public static final String FIELD_NOT_BLANK = "validation.field.notBlank";
    public static final String FIELD_INVALID = "validation.field.invalid";
    public static final String FIELD_SIZE = "validation.field.size";
    public static final String FIELD_EMAIL = "validation.field.email";
    public static final String FIELD_MIN = "validation.field.min";
    public static final String FIELD_MAX = "validation.field.max";
    public static final String FIELD_PATTERN = "validation.field.pattern";

    /**
     * 默认兜底消息（中文）
     */
    public static final String DEFAULT_MESSAGE = "{} 不能为空";
}
