package com.lz.module.infra.utils;

import cn.hutool.core.util.StrUtil;
import com.lz.framework.common.exception.ErrorCode;
import com.lz.framework.common.exception.ServiceException;
import com.lz.framework.common.util.servlet.ServletUtils;
import com.lz.module.infra.enums.i18n.InfraI18nLocaleTargetEnum;
import com.lz.module.infra.service.i18n.I18nService;
import jakarta.servlet.http.HttpServletRequest;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

import java.util.Locale;

/**
 * 国际化异常抛出工具类
 * <p>
 * 支持根据 Accept-Language 请求头获取对应语言的错误消息并抛出异常
 *
 * @Project: litchi
 * @Author: YY
 * @CreateTime: 2026-04-28  20:34
 * @Version: 1.0
 */
@Slf4j
@Component
public class I18nExceptionUtil {

    private static I18nService i18nService;

    public I18nExceptionUtil(I18nService i18nService) {
        I18nExceptionUtil.i18nService = i18nService;
    }

    /**
     * 根据 ErrorCode 抛出国际化异常
     * 自动从当前请求的 Accept-Language 头获取语言，
     * 优先使用后端(LOCALE_TARGET_1)的消息，找不到则使用通用(LOCALE_TARGET_0)的消息
     *
     * @param errorCode 错误码对象
     * @param params    消息参数，用于替换消息中的占位符 {}
     * @return 抛出的 ServiceException
     */
    public static ServiceException exception(ErrorCode errorCode, Object... params) {
        HttpServletRequest request = ServletUtils.getRequest();

        // 1. 从请求头获取 Accept-Language
        String acceptLanguage = null;
        if (request != null) {
            acceptLanguage = request.getHeader("Accept-Language");
        }
        if (StrUtil.isBlank(acceptLanguage)) {
            acceptLanguage = Locale.getDefault().toLanguageTag();
        }

        // 解析并抛出异常
        return exception0(errorCode, acceptLanguage, params);
    }

    /**
     * 根据 ErrorCode 和语言信息抛出国际化异常
     *
     * @param errorCode      错误码对象
     * @param acceptLanguage Accept-Language 请求头的值
     * @param params         消息参数，用于替换消息中的占位符 {}
     * @return 抛出的 ServiceException
     */
    public static ServiceException exception(ErrorCode errorCode, String acceptLanguage, Object... params) {
        return exception0(errorCode, acceptLanguage, params);
    }

    /**
     * 解析消息并抛出异常
     */
    private static ServiceException exception0(ErrorCode errorCode, String acceptLanguage, Object... params) {
        String message = resolveMessage(errorCode, acceptLanguage, params);
        return new ServiceException(errorCode.getCode(), message);
    }

    /**
     * 解析错误消息，支持国际化
     */
    private static String resolveMessage(ErrorCode errorCode, String acceptLanguage, Object... params) {
        // 1. 如果 ErrorCode 中没有 i18n 键名，直接使用默认消息
        String i18n = errorCode.getI18n();
        if (StrUtil.isBlank(i18n)) {
            return doFormat(errorCode.getCode(), errorCode.getMsg(), params);
        }

        // 2. 从 Accept-Language 中解析出主要语言
        String locale = parsePrimaryLocale(acceptLanguage);

        // 3. 优先获取后端的消息，找不到再获取通用的消息
        String i18nMessage = getI18nMessage(i18n, locale);
        if (i18nMessage == null) {
            i18nMessage = getI18nMessage(i18n, locale);
        }

        // 4. 如果获取到国际化消息，使用它；否则使用默认消息
        String messagePattern = (i18nMessage != null) ? i18nMessage : errorCode.getMsg();
        return doFormat(errorCode.getCode(), messagePattern, params);
    }

    /**
     * 获取国际化消息
     * 优先级：后端(LOCALE_TARGET_1) -> 通用(LOCALE_TARGET_0)
     */
    private static String getI18nMessage(String messageKey, String locale) {
        try {
            // 优先查询后端
            String message = i18nService.getMessageByMessageKey(
                    messageKey,
                    InfraI18nLocaleTargetEnum.LOCALE_TARGET_1.getStatus(),
                    locale);
            if (StrUtil.isNotBlank(message)) {
                return message;
            }
        } catch (Exception e) {
            log.warn("[I18nExceptionUtil] Failed to get i18n message, key: {}, error: {}", messageKey, e.getMessage());
        }
        return null;
    }

    /**
     * 从 Accept-Language 字符串中解析出主要语言标签
     */
    private static String parsePrimaryLocale(String acceptLanguage) {
        if (StrUtil.isBlank(acceptLanguage)) {
            return "zh-CN";
        }

        // 按逗号分割，取第一个（权重最高的语言）
        String[] parts = acceptLanguage.split(",");
        if (parts.length > 0) {
            // 获取第一个部分，去掉权重后缀（如 ;q=0.9）
            String primary = parts[0].trim();
            int semicolonIndex = primary.indexOf(';');
            if (semicolonIndex > 0) {
                primary = primary.substring(0, semicolonIndex).trim();
            }
            return primary;
        }

        return "zh-CN";
    }

    /**
     * 将错误编号对应的消息使用 params 进行格式化
     *
     * @param code           错误编号
     * @param messagePattern 消息模版
     * @param params         参数
     * @return 格式化后的提示
     */
    private static String doFormat(int code, String messagePattern, Object... params) {
        if (params == null || params.length == 0) {
            return messagePattern;
        }
        StringBuilder sbuf = new StringBuilder(messagePattern.length() + 50);
        int i = 0;
        int j;
        int l;
        for (l = 0; l < params.length; l++) {
            j = messagePattern.indexOf("{}", i);
            if (j == -1) {
                log.error("[doFormat][参数过多：错误码({})|错误内容({})|参数({})", code, messagePattern, params);
                if (i == 0) {
                    return messagePattern;
                } else {
                    sbuf.append(messagePattern.substring(i));
                    return sbuf.toString();
                }
            } else {
                sbuf.append(messagePattern, i, j);
                sbuf.append(params[l]);
                i = j + 2;
            }
        }
        if (messagePattern.indexOf("{}", i) != -1) {
            log.error("[doFormat][参数过少：错误码({})|错误内容({})|参数({})", code, messagePattern, params);
        }
        sbuf.append(messagePattern.substring(i));
        return sbuf.toString();
    }
}
