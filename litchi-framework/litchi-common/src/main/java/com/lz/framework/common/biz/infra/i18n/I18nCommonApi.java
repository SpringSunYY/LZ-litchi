package com.lz.framework.common.biz.infra.i18n;

/**
 * 国际化消息 API 接口
 *
 * @author YY
 */
public interface I18nCommonApi {

    /**
     * 根据消息键名获取翻译
     *
     * @param messageKey      消息键名
     * @param localeTarget    使用端
     * @param acceptLanguage  Accept-Language 请求头
     * @return 翻译后的文本，未找到返回 null
     */
    String getMessage(String messageKey, Integer localeTarget, String acceptLanguage);

}
