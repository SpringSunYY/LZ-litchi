package com.lz.module.infra.service.i18n;

import cn.hutool.core.collection.CollUtil;
import cn.hutool.core.util.StrUtil;
import com.lz.framework.common.biz.infra.i18n.I18nCommonApi;
import com.lz.module.infra.dal.dataobject.i18n.I18nMessageDO;
import com.lz.module.infra.framework.i18n.config.I18nProperties;
import jakarta.annotation.Resource;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.List;

/**
 * 国际化消息 API 实现类
 *
 * @author YY
 */
@Service
@Slf4j
public class I18nCommonApiImpl implements I18nCommonApi {

    @Resource
    private I18nMessageService i18nMessageService;

    @Resource
    private I18nProperties i18nProperties;

    @Override
    public String getMessage(String messageKey, String acceptLanguage) {
        if (messageKey == null || messageKey.isEmpty()) {
            return null;
        }
        String locale = parsePrimaryLocale(acceptLanguage);
        try {
            // 1. 先精确匹配：locale
            I18nMessageDO message = i18nMessageService.getMessageByMessageKeyAndLocale(messageKey, locale);
            if (message != null && StrUtil.isNotEmpty(message.getMessage())) {
                return message.getMessage();
            }
            // 2. 匹配不到匹配中文
            message = i18nMessageService.getMessageByMessageKeyAndLocale(messageKey, "zh-CN");
            if (message != null && StrUtil.isNotEmpty(message.getMessage())) {
                return message.getMessage();
            }
            return null;
        } catch (Exception e) {
            return null;
        }
    }

    @Override
    public List<String> getAllLocaleMessages(String messageKey) {
        if (messageKey == null || messageKey.isEmpty()) {
            return Collections.emptyList();
        }
        try {
            List<I18nMessageDO> messages = i18nMessageService.getMessageListByMessageKey(messageKey);
            return messages.stream()
                    .map(I18nMessageDO::getMessage)
                    .toList();
        } catch (Exception e) {
            return Collections.emptyList();
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
            // 将 Accept-Language 中的下划线格式（如 zh_CN）转换为数据库存储格式（如 zh-CN）
            return primary.replace('_', '-');
        }
        return i18nProperties.getDefaultLocale();
    }

}
