package com.lz.framework.i18n.core;

import cn.hutool.core.util.StrUtil;
import com.lz.framework.common.biz.infra.i18n.I18nCommonApi;
import com.lz.framework.common.util.servlet.ServletUtils;
import jakarta.servlet.http.HttpServletRequest;
import lombok.SneakyThrows;
import lombok.extern.slf4j.Slf4j;

import java.util.List;
import java.util.Locale;

/**
 * Excel 国际化工具类
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

    @SneakyThrows
    public static String getMessage(String messageKey) {
        if (i18nCommonApi == null) {
            return null;
        }
        String acceptLanguage = getAcceptLanguage();
        return i18nCommonApi.getMessage(messageKey, acceptLanguage);
    }

    @SneakyThrows
    public static List<String> getAllLocaleMessages(String messageKey) {
        if (i18nCommonApi == null) {
            log.warn("[I18nUtils] i18nCommonApi is null, key: {}", messageKey);
            return List.of();
        }
        return i18nCommonApi.getAllLocaleMessages(messageKey);
    }

    private static String getAcceptLanguage() {
        HttpServletRequest request = ServletUtils.getRequest();
        if (request == null) {
            return Locale.getDefault().toLanguageTag();
        }
        String acceptLanguage = request.getHeader("Accept-Language");
        return StrUtil.isBlank(acceptLanguage) ? Locale.getDefault().toLanguageTag() : acceptLanguage;
    }

}
