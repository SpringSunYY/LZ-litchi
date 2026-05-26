package com.lz.framework.common.biz.infra.i18n;

import java.util.List;

/**
 * 国际化消息 API 接口
 *
 * @author YY
 */
public interface I18nCommonApi {

    /**
     * 根据消息键名获取翻译
     * 不需要传递使用段端，因为key和语言本来就是唯一的
     *
     * @param messageKey     消息键名
     * @param acceptLanguage Accept-Language 请求头
     * @return 翻译后的文本，未找到返回 null
     */
    String getMessage(String messageKey, String acceptLanguage);

    /**
     * 根据消息键名获取所有语言的翻译
     *
     * @param messageKey 消息键名
     * @return 所有语言的翻译列表，未找到返回空列表
     */
    List<String> getAllLocaleMessages(String messageKey);


    /**
     * 获取默认语言
     *
     * @param localeTarget 端
     * @return 默认语言
     */
    String getDefaultLanguageLocale(Integer localeTarget);

    /**
     * 获取默认语言-仅限后台
     */
    String getBackDefaultLanguageLocale();
}
