package com.lz.framework.redis.core;

import jakarta.annotation.Resource;
import org.springframework.data.redis.core.Cursor;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.ScanOptions;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

/**
 * Redis 工具类
 * 白鸥问我泊孤舟
 * 是身留是心留
 * 心若留时事锁心头
 *
 * @author 荔枝源码
 */
@Component
public class RedisUtils {

    @Resource
    private RedisTemplate<String, Object> redisTemplate;

    /**
     * 根据通配符删除所有匹配的 key（包含子集）
     * <p>
     * 使用 SCAN 命令遍历匹配，避免 KEYS 命令阻塞 Redis主线程
     *
     * @param pattern 通配符模式，如 "i18n:*"
     */
    public void deleteByPattern(String pattern) {
        scanAndDelete(pattern);
    }

    /**
     * 根据多个通配符删除所有匹配的 key
     *
     * @param patterns 多个通配符模式
     */
    public void deleteByPatterns(String... patterns) {
        for (String pattern : patterns) {
            scanAndDelete(pattern + "*");
        }
    }

    /**
     * 删除指定的 key
     *
     * @param keys key 集合
     */
    public void delete(Set<String> keys) {
        redisTemplate.delete(keys);
    }

    /**
     * 扫描并删除匹配通配符的所有 key
     */
    private void scanAndDelete(String pattern) {
        ScanOptions scanOptions = ScanOptions.scanOptions()
                .match(pattern)
                .count(100)
                .build();

        try (Cursor<String> cursor = redisTemplate.scan(scanOptions)) {
            List<String> keys = new ArrayList<>();
            while (cursor.hasNext()) {
                keys.add(cursor.next());
            }
            if (!keys.isEmpty()) {
                redisTemplate.delete(keys);
            }
        }
    }
}
