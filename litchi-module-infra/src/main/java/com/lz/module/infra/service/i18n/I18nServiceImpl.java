package com.lz.module.infra.service.i18n;

import com.lz.framework.common.util.object.BeanUtils;
import com.lz.module.infra.constants.RedisKeyConstants;
import com.lz.module.infra.controller.admin.i18n.vo.I18nLocaleSimpRespVO;
import com.lz.module.infra.controller.admin.i18n.vo.I18nMessageSimpVO;
import com.lz.module.infra.dal.dataobject.i18n.I18nLocaleDO;
import com.lz.module.infra.dal.dataobject.i18n.I18nMessageDO;
import jakarta.annotation.Resource;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;
import org.springframework.validation.annotation.Validated;

import java.util.List;

/**
 * i18n 国际化 Service 实现类
 *
 * @Project: litchi
 * @Author: YY
 * @CreateTime: 2026-04-28  16:44
 * @Version: 1.0
 */
@Service
@Validated
public class I18nServiceImpl implements I18nService {
    @Resource
    private I18nLocaleService i18nLocaleService;

    @Resource
    private I18nMessageService i18nMessageService;

    @Override
    @Cacheable(cacheNames = RedisKeyConstants.I18N_LOCALE)
    public List<I18nLocaleSimpRespVO> getI18nLocale(Integer localeTarget) {
        List<I18nLocaleDO> i18nLocaleDOList = i18nLocaleService.getI18nLocaleByLocaleTarget(localeTarget);
        return BeanUtils.toBean(i18nLocaleDOList, I18nLocaleSimpRespVO.class);
    }

    @Override
    public List<I18nMessageSimpVO> getI18nLocaleMessage(Integer localeTarget, String acceptLanguage) {
        List<I18nMessageDO> i18nMessageDOList = i18nMessageService.getI18nLocaleByLocaleTargetAndLocale(localeTarget, acceptLanguage);
        return BeanUtils.toBean(i18nMessageDOList, I18nMessageSimpVO.class);
    }

    @Override
    @Cacheable(cacheNames = RedisKeyConstants.I18N_MESSAGE)
    public String getMessageByMessageKey(String messageKey,  String acceptLanguage) {
        I18nMessageDO i18nMessage = i18nMessageService.getMessageByMessageKey(messageKey, acceptLanguage);
        return i18nMessage != null ? i18nMessage.getMessage() : null;
    }
}
