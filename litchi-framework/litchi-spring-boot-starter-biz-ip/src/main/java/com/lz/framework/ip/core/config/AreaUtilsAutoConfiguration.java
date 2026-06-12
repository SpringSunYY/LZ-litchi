package com.lz.framework.ip.core.config;

import com.lz.framework.common.biz.infra.area.AreaCommonApi;
import com.lz.framework.ip.core.utils.AreaUtils;
import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.autoconfigure.AutoConfiguration;
import org.springframework.context.annotation.Bean;

/**
 * AreaUtils 自动配置
 *
 * @author 荔枝
 */
@AutoConfiguration
@Slf4j
public class AreaUtilsAutoConfiguration {

    @Bean
    @SuppressWarnings("InstantiationOfUtilityClass")
    public AreaUtils areaUtils(AreaCommonApi areaCommonApi) {
        AreaUtils.init(areaCommonApi);
        log.info("[init][初始化 AreaUtils 成功]");
        return new AreaUtils();
    }
}
