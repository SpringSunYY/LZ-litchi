package com.lz.module.infra.service.i18n;

import com.lz.framework.common.util.object.BeanUtils;
import com.lz.module.infra.constants.RedisKeyConstants;
import com.lz.module.infra.controller.admin.i18n.vo.i18nLocale.I18nLocaleSimpRespVO;
import com.lz.module.infra.controller.admin.i18n.vo.i18nMessage.I18nMessageSimpVO;
import com.lz.module.infra.dal.dataobject.i18n.I18nLocaleDO;
import com.lz.module.infra.dal.dataobject.i18n.I18nMessageDO;
import com.lz.module.infra.enums.i18n.InfraI18nLocaleIsDefaultEnum;
import jakarta.annotation.Resource;
import org.jspecify.annotations.Nullable;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;
import org.springframework.validation.annotation.Validated;

import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

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
        //如果存在多个端，且查的那个端有默认语言，优先使用查的那个端的默认语言，而不是common的默认语言
        I18nLocaleDO priorityDefault = getI18nLocaleDO(localeTarget, i18nLocaleDOList);

        if (priorityDefault != null) {
            i18nLocaleDOList.remove(priorityDefault);
            i18nLocaleDOList.addFirst(priorityDefault);
        }
        //去重语言，防止语言重复（保持原有顺序）
        Map<String, Boolean> seen = new ConcurrentHashMap<>();
        i18nLocaleDOList = i18nLocaleDOList.stream()
                .filter(locale -> seen.putIfAbsent(locale.getLocale(), Boolean.TRUE) == null)
                .toList();
        return BeanUtils.toBean(i18nLocaleDOList, I18nLocaleSimpRespVO.class);
    }

    private static @Nullable I18nLocaleDO getI18nLocaleDO(Integer localeTarget, List<I18nLocaleDO> i18nLocaleDOList) {
        I18nLocaleDO specifiedTargetDefault = null;
        I18nLocaleDO commonDefault = null;

        for (I18nLocaleDO localeDO : i18nLocaleDOList) {
            if (localeDO.getIsDefault() != null && localeDO.getIsDefault()
                    .equals(InfraI18nLocaleIsDefaultEnum.IS_DEFAULT_0.getStatus())) {
                if (localeDO.getLocaleTarget().equals(localeTarget)) {
                    specifiedTargetDefault = localeDO;
                } else if (localeDO.getLocaleTarget()
                        .equals(InfraI18nLocaleIsDefaultEnum.IS_DEFAULT_0.getStatus())) {
                    commonDefault = localeDO;
                }
            }
        }

        return specifiedTargetDefault != null ? specifiedTargetDefault : commonDefault;
    }

    @Override
    public List<I18nMessageSimpVO> getI18nLocaleMessage(Integer localeTarget, String acceptLanguage) {
        return i18nMessageService.getI18nLocaleByLocaleTargetAndLocale(localeTarget, acceptLanguage);
    }

    @Override
    @Cacheable(cacheNames = RedisKeyConstants.I18N_MESSAGE)
    public String getMessageByMessageKey(String messageKey, String acceptLanguage) {
        I18nMessageDO i18nMessage = i18nMessageService.getMessageByMessageKey(messageKey, acceptLanguage);
        return i18nMessage != null ? i18nMessage.getMessage() : null;
    }

    @Override
    public Boolean getI18nUpdate(boolean updated) {
        return i18nLocaleService.getI18nUpdate(updated);
    }
}
