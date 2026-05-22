package com.lz.module.infra.api.i18n;

import com.lz.framework.common.core.DictI18nDTO;
import com.lz.module.infra.framework.i18n.config.I18nProperties;
import com.lz.module.infra.service.i18n.I18nLocaleService;
import com.lz.module.infra.service.i18n.I18nMessageService;
import jakarta.annotation.Resource;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.Map;

/**
 * i18n外部api实现类
 * 云想衣裳花想容，春风拂槛露华浓
 *
 * @Project: litchi
 * @Author: YY
 * @CreateTime: 2026-05-22  13:51
 * @Version: 1.0
 */
@Service
@Slf4j
public class I18nApiImpl implements I18nApi {
    @Resource
    private I18nMessageService i18nMessageService;

    @Override
    public void saveDictI18n(Map<String, DictI18nDTO> dictDataMap) {
        i18nMessageService.saveI18nMessage(dictDataMap);
    }
}
