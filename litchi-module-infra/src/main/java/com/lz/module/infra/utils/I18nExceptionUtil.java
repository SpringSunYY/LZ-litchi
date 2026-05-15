package com.lz.module.infra.utils;

import cn.hutool.core.util.StrUtil;
import com.lz.framework.common.exception.ErrorCode;
import com.lz.framework.common.exception.ServiceException;
import com.lz.framework.common.util.servlet.ServletUtils;
import com.lz.module.infra.framework.i18n.config.I18nProperties;
import com.lz.module.infra.service.i18n.I18nService;
import jakarta.servlet.http.HttpServletRequest;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

/**
 * 国际化异常抛出工具类
 * 错明知这是错
 * @author YY
 */
@Slf4j
@Component
public class I18nExceptionUtil {

    private static I18nService i18nService;

    private static I18nProperties i18nProperties;

    public I18nExceptionUtil(I18nService i18nService, I18nProperties i18nProperties) {
        I18nExceptionUtil.i18nService = i18nService;
        I18nExceptionUtil.i18nProperties = i18nProperties;
    }

    public static ServiceException exception(ErrorCode errorCode, Object... params) {
        HttpServletRequest request = ServletUtils.getRequest();

        String acceptLanguage = null;
        if (request != null) {
            acceptLanguage = request.getHeader("Accept-Language");
        }
        if (StrUtil.isBlank(acceptLanguage)) {
            acceptLanguage = i18nProperties.getDefaultLocale();
        }

        return exception0(errorCode, acceptLanguage, params);
    }

    public static ServiceException exception(ErrorCode errorCode, String acceptLanguage, Object... params) {
        return exception0(errorCode, acceptLanguage, params);
    }

    private static ServiceException exception0(ErrorCode errorCode, String acceptLanguage, Object... params) {
        String message = resolveMessage(errorCode, acceptLanguage, params);
        return new ServiceException(errorCode.getCode(), message);
    }

    private static String resolveMessage(ErrorCode errorCode, String acceptLanguage, Object... params) {
        String i18n = errorCode.getI18n();
        if (StrUtil.isBlank(i18n)) {
            return doFormat(errorCode.getCode(), errorCode.getMsg(), params);
        }

        String locale = parsePrimaryLocale(acceptLanguage);

        String i18nMessage = getI18nMessage(i18n, locale);

        String messagePattern = (i18nMessage != null) ? i18nMessage : errorCode.getMsg();
        return doFormat(errorCode.getCode(), messagePattern, params);
    }

    private static String getI18nMessage(String messageKey, String locale) {
        try {
            String message = i18nService.getMessageByMessageKey(
                    messageKey,
                    locale);
            if (StrUtil.isNotBlank(message)) {
                return message;
            }
        } catch (Exception e) {
            // ignore
        }
        return null;
    }

    private static String parsePrimaryLocale(String acceptLanguage) {
        if (StrUtil.isBlank(acceptLanguage)) {
            return i18nProperties.getDefaultLocale();
        }

        String[] parts = acceptLanguage.split(",");
        if (parts.length > 0) {
            String primary = parts[0].trim();
            int semicolonIndex = primary.indexOf(';');
            if (semicolonIndex > 0) {
                primary = primary.substring(0, semicolonIndex).trim();
            }
            return primary;
        }

        return i18nProperties.getDefaultLocale();
    }

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
