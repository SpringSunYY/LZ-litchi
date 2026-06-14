package com.lz.framework.ip.core.config;

import com.lz.framework.common.biz.infra.area.AreaCommonApi;
import com.lz.framework.ip.core.utils.AreaUtils;
import com.lz.framework.ip.core.utils.IPUtils;
import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.autoconfigure.AutoConfiguration;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.Bean;

/**
 * ip模块自动配置 自动配置
 * 孤帆远影碧空尽，唯见长江天际流。
 *
 * @author YY
 */
@AutoConfiguration
@Slf4j
@EnableConfigurationProperties(IpProperties.class)
public class IpAutoConfiguration {

    @Bean
    @SuppressWarnings("InstantiationOfUtilityClass")
    public AreaUtils areaUtils(AreaCommonApi areaCommonApi, IpProperties ipProperties) {
        AreaUtils.init(areaCommonApi, ipProperties);
        log.info("[init][初始化 AreaUtils 成功]");
        return new AreaUtils();
    }

    @Bean
    @SuppressWarnings("InstantiationOfUtilityClass")
    public IPUtils ipUtils(IpProperties ipProperties) {
        IPUtils.init(ipProperties);
        log.info("[init][初始化 IPUtils 成功]");
        return new IPUtils();
    }
}
