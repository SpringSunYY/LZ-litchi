package com.lz.module.infra.service.i18n;

import com.lz.module.infra.controller.admin.i18n.vo.i18nLocale.I18nLocaleSimpRespVO;
import com.lz.module.infra.controller.admin.i18n.vo.i18nMessage.I18nMessageSimpVO;

import java.util.List;

/**
 * 国际化键名 Service 接口
 *
 * @author 荔枝软件
 */
public interface I18nService {


    /**
     * 创建国际化键名
     *
     * @return 键名编号
     */
    List<I18nLocaleSimpRespVO> getI18nLocale(Integer localeTarget);

    /**
     * 获取国际化语言消息
     *
     * @param localeTarget   使用端
     * @param acceptLanguage Accept-Language 请求头
     * @return 键名编号
     */
    List<I18nMessageSimpVO> getI18nLocaleMessage(Integer localeTarget, String acceptLanguage);

    /**
     * 根据 messageKey 获取国际化消息
     *
     * @param messageKey     消息键名
     * @param acceptLanguage Accept-Language 请求头
     * @return 国际化消息，未找到返回 null
     */
    String getMessageByMessageKey(String messageKey, String acceptLanguage);

    /**
     * 获取国际化更新状态
     *
     * @param updated 更新状态,对比旧数据
     * @return true 表示有更新
     */
    Boolean getI18nUpdate(boolean updated);
}
