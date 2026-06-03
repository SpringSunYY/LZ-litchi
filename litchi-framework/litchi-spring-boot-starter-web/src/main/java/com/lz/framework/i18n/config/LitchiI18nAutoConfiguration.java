package com.lz.framework.i18n.config;

import com.lz.framework.common.biz.infra.i18n.I18nCommonApi;
import com.lz.framework.common.util.i18n.I18nUtils;
import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.autoconfigure.AutoConfiguration;
import org.springframework.context.annotation.Bean;

/**
 * 国际化自动配置
 *
 * @author YY
 */
@AutoConfiguration
@Slf4j
public class LitchiI18nAutoConfiguration {

    @Bean
    @SuppressWarnings("InstantiationOfUtilityClass")
    public I18nUtils i18nUtils(I18nCommonApi i18nCommonApi) {
        I18nUtils.init(i18nCommonApi);
        log.info("[init][初始化 I18nUtils 成功]");
        return new I18nUtils();
    }

}
