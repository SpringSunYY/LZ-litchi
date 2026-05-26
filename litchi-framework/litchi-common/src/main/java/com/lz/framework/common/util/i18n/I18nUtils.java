package com.lz.framework.common.util.i18n;

import cn.hutool.core.util.StrUtil;
import com.lz.framework.common.biz.infra.i18n.I18nCommonApi;
import com.lz.framework.common.enums.InfraModuleConstants;
import com.lz.framework.common.util.servlet.ServletUtils;
import jakarta.servlet.http.HttpServletRequest;
import lombok.extern.slf4j.Slf4j;

import java.util.List;
import java.util.Locale;

/**
 * 国际化工具类
 * <p>
 * 提供统一的国际化消息获取能力，支持从请求上下文自动获取语言设置
 *
 * @author YY
 */
@Slf4j
public class I18nUtils {

    private static I18nCommonApi i18nCommonApi;

    public static void init(I18nCommonApi i18nCommonApi) {
        I18nUtils.i18nCommonApi = i18nCommonApi;
        log.info("[init][初始化 I18nUtils 成功]");
    }

    /**
     * 根据消息键名获取翻译（从请求上下文获取语言）
     *
     * @param messageKey 消息键名
     * @return 翻译后的文本，未找到返回 null
     */
    public static String getMessage(String messageKey) {
        return getMessageByLanguage(messageKey, getAcceptLanguage());
    }

    /**
     * 根据消息键名获取翻译，如果未找到则返回默认消息
     *
     * @param messageKey     消息键名
     * @param defaultMessage 默认消息
     * @return 翻译后的文本，未找到返回默认消息
     */
    public static String getMessage(String messageKey, String defaultMessage, String acceptLanguage) {
        String i18nMsg = getMessageByLanguage(messageKey, acceptLanguage);
        return StrUtil.isNotBlank(i18nMsg) ? i18nMsg : defaultMessage;
    }

    /**
     * 根据消息键名获取翻译，如果未找到使用默认语言
     */
    public static String getMessage(String messageKey, String defaultMessage) {
        return getMessage(messageKey, defaultMessage, getAcceptLanguage());
    }

    /**
     * 根据消息键名获取翻译
     *
     * @param messageKey     消息键名
     * @param acceptLanguage Accept-Language
     * @return 翻译后的文本，未找到返回 null
     */
    public static String getMessageByLanguage(String messageKey, String acceptLanguage) {
        if (i18nCommonApi == null) {
            return null;
        }
        if (StrUtil.isBlank(messageKey)) {
            return null;
        }
        try {
            String locale = parsePrimaryLocale(acceptLanguage);
            return i18nCommonApi.getMessage(messageKey, locale);
        } catch (Exception e) {
            log.warn("[I18nUtils] 获取国际化消息失败, key: {}, locale: {}", messageKey, acceptLanguage, e);
            return null;
        }
    }

    /**
     * 根据消息键名获取所有语言的翻译
     *
     * @param messageKey 消息键名
     * @return 所有语言的翻译列表
     */
    public static List<String> getAllLocaleMessages(String messageKey) {
        if (i18nCommonApi == null) {
            log.warn("[I18nUtils] i18nCommonApi is null, key: {}", messageKey);
            return List.of();
        }
        return i18nCommonApi.getAllLocaleMessages(messageKey);
    }

    /**
     * 获取 Accept-Language 请求头
     *
     * @return Accept-Language，如果无法获取则返回系统默认语言
     */
    public static String getAcceptLanguage() {
        try {
            HttpServletRequest request = ServletUtils.getRequest();
            if (request != null) {
                String acceptLanguage = request.getHeader("Accept-Language");
                return StrUtil.isBlank(acceptLanguage) ? Locale.getDefault().toLanguageTag() : acceptLanguage;
            }
        } catch (Exception ignored) {
        }
        return i18nCommonApi.getBackDefaultLanguageLocale();
    }

    /**
     * 解析主语言
     * <p>
     * 将 Accept-Language 头解析为 locale 字符串
     * 例如："zh-CN,zh;q=0.9,en;q=0.8" → "zh-CN"
     *
     * @param acceptLanguage Accept-Language 头
     * @return 主语言标签
     */
    public static String parsePrimaryLocale(String acceptLanguage) {
        if (StrUtil.isBlank(acceptLanguage)) {
            return i18nCommonApi.getDefaultLanguageLocale(InfraModuleConstants.DEFAULT_LOCALE_TARGET);
        }

        String[] parts = acceptLanguage.split(",");
        if (parts.length > 0) {
            String primary = parts[0].trim();
            int semicolonIndex = primary.indexOf(';');
            if (semicolonIndex > 0) {
                primary = primary.substring(0, semicolonIndex).trim();
            }
            return primary.replace('_', '-');
        }

        return i18nCommonApi.getDefaultLanguageLocale(InfraModuleConstants.DEFAULT_LOCALE_TARGET);
    }
}
