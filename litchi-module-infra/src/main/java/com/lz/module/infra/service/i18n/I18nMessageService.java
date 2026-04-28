package com.lz.module.infra.service.i18n;

import java.util.*;

import com.lz.module.infra.controller.admin.i18n.vo.I18nMessagePageReqVO;
import com.lz.module.infra.controller.admin.i18n.vo.I18nMessageSaveReqVO;
import jakarta.validation.*;
import com.lz.module.infra.dal.dataobject.i18n.I18nMessageDO;
import com.lz.framework.common.pojo.PageResult;

/**
 * 国际化信息 Service 接口
 *
 * @author 荔枝软件
 */
public interface I18nMessageService {

    /**
     * 创建国际化信息
     *
     * @param createReqVO 创建信息
     * @return 编号
     */
    Long createI18nMessage(@Valid I18nMessageSaveReqVO createReqVO);

    /**
     * 更新国际化信息
     *
     * @param updateReqVO 更新信息
     */
    void updateI18nMessage(@Valid I18nMessageSaveReqVO updateReqVO);

    /**
     * 删除国际化信息
     *
     * @param id 编号
     */
    void deleteI18nMessage(Long id);

    /**
    * 批量删除国际化信息
    *
    * @param ids 编号
    */
    void deleteI18nMessageListByIds(List<Long> ids);

    /**
     * 获得国际化信息
     *
     * @param id 编号
     * @return 国际化信息
     */
    I18nMessageDO getI18nMessage(Long id);

    /**
     * 获得国际化信息分页
     *
     * @param pageReqVO 分页查询
     * @return 国际化信息分页
     */
    PageResult<I18nMessageDO> getI18nMessagePage(I18nMessagePageReqVO pageReqVO);

    /**
     * 获得国际化信息列表
     *
     * @param localeTarget 使用端
     * @param acceptLanguage 接受的语言
     * @return 国际化信息列表
     */
    List<I18nMessageDO> getI18nLocaleByLocaleTargetAndLocale(Integer localeTarget, String acceptLanguage);

    /**
     * 获得国际化信息
     *
     * @param messageKey 国际化键名
     * @param localeTarget 使用端
     * @param acceptLanguage 语言
     * @return 国际化信息
     */
    I18nMessageDO getMessageByMessageKey(String messageKey, Integer localeTarget, String acceptLanguage);
}