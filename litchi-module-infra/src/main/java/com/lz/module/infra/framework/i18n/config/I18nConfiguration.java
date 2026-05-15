package com.lz.module.infra.framework.i18n.config;

import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.Configuration;

@Configuration(proxyBeanMethods = false)
@EnableConfigurationProperties(I18nProperties.class)
public class I18nConfiguration {
}
