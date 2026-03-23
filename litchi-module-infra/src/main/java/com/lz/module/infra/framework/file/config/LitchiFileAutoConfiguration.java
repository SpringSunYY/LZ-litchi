package com.lz.module.infra.framework.file.config;

import com.lz.module.infra.framework.file.core.client.FileClientFactory;
import com.lz.module.infra.framework.file.core.client.FileClientFactoryImpl;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * 文件配置类
 *
 * @author 荔枝源码
 */
@Configuration(proxyBeanMethods = false)
public class LitchiFileAutoConfiguration {

    @Bean
    public FileClientFactory fileClientFactory() {
        return new FileClientFactoryImpl();
    }

}
