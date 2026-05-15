package com.lz.framework.i18n.config;

import com.lz.framework.common.biz.infra.i18n.I18nCommonApi;
import com.lz.framework.i18n.core.I18nUtils;
import org.springframework.boot.autoconfigure.AutoConfiguration;
import org.springframework.context.annotation.Bean;

@AutoConfiguration
public class LitchiI18nAutoConfiguration {

    @Bean
    @SuppressWarnings("InstantiationOfUtilityClass")
    public I18nUtils i18nUtils(I18nCommonApi i18nCommonApi) {
        I18nUtils.init(i18nCommonApi);
        return new I18nUtils();
    }

}
