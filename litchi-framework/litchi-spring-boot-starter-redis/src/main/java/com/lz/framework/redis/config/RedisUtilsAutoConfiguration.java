package com.lz.framework.redis.config;

import com.lz.framework.redis.core.RedisUtils;
import org.springframework.boot.autoconfigure.AutoConfiguration;
import org.springframework.context.annotation.Bean;
import org.springframework.data.redis.core.RedisTemplate;

/**
 * RedisUtils 自动配置类
 */
@AutoConfiguration
public class RedisUtilsAutoConfiguration {

    @Bean
    public RedisUtils redisUtils(RedisTemplate<String, Object> redisTemplate) {
        return new RedisUtils(redisTemplate);
    }
}
