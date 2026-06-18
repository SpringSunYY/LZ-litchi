package com.lz.framework.demoMode.config;

import com.lz.framework.demoMode.aspect.DemoModeAspect;
import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.autoconfigure.AutoConfiguration;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.Bean;

@Slf4j
/**
 * 演示模式自动配置
 *
 * @author 荔枝源码
 */
@AutoConfiguration
@EnableConfigurationProperties(DemoModeProperties.class)
public class DemoModeAutoConfiguration {

    @Bean
    public DemoModeAspect demoModeAspect(DemoModeProperties demoModeProperties) {
        log.info("[防傻逼模式] enabled={}", demoModeProperties.isEnabled());
        return new DemoModeAspect(demoModeProperties);
    }
}
