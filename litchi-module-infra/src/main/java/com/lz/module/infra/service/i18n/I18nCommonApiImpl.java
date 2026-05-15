package com.lz.module.infra.service.i18n;

import com.lz.framework.common.biz.infra.i18n.I18nCommonApi;
import com.lz.module.infra.dal.dataobject.i18n.I18nMessageDO;
import com.lz.module.infra.framework.i18n.config.I18nProperties;
import jakarta.annotation.Resource;
import org.springframework.stereotype.Service;

/**
 * 国际化消息 API 实现类
 *
 * @author YY
 */
@Service
public class I18nCommonApiImpl implements I18nCommonApi {

    @Resource
    private I18nMessageService i18nMessageService;

    @Resource
    private I18nProperties i18nProperties;

    @Override
    public String getMessage(String messageKey, Integer localeTarget, String acceptLanguage) {
        if (messageKey == null || messageKey.isEmpty()) {
            return null;
        }
        String locale = parsePrimaryLocale(acceptLanguage);
        try {
            I18nMessageDO message = i18nMessageService.getMessageByMessageKey(messageKey, locale);
            return message != null ? message.getMessage() : null;
        } catch (Exception e) {
            return null;
        }
    }

    private String parsePrimaryLocale(String acceptLanguage) {
        if (acceptLanguage == null || acceptLanguage.isEmpty()) {
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

}
