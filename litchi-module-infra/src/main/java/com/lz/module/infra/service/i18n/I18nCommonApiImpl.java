package com.lz.module.infra.service.i18n;

import com.lz.framework.common.biz.infra.i18n.I18nCommonApi;
import com.lz.module.infra.dal.dataobject.i18n.I18nMessageDO;
import jakarta.annotation.Resource;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

/**
 * 国际化消息 API 实现类
 *
 * @author YY
 */
@Slf4j
@Service
public class I18nCommonApiImpl implements I18nCommonApi {

    @Resource
    private I18nMessageService i18nMessageService;

    @Override
    public String getMessage(String messageKey, Integer localeTarget, String acceptLanguage) {
        if (messageKey == null || messageKey.isEmpty()) {
            return null;
        }
        String locale = parsePrimaryLocale(acceptLanguage);
        log.info("[I18nCommonApiImpl] getMessage, key: {}, locale: {}", messageKey, locale);
        try {
            I18nMessageDO message = i18nMessageService.getMessageByMessageKey(messageKey, locale);
            log.info("[I18nCommonApiImpl] getMessage result, key: {}, message: {}", messageKey, message != null ? message.getMessage() : null);
            return message != null ? message.getMessage() : null;
        } catch (Exception e) {
            log.warn("[I18nCommonApiImpl] Failed to get i18n message, key: {}, error: {}", messageKey, e.getMessage());
            return null;
        }
    }

    private String parsePrimaryLocale(String acceptLanguage) {
        if (acceptLanguage == null || acceptLanguage.isEmpty()) {
            return "zh-CN";
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
        return "zh-CN";
    }

}
