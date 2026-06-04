package com.lz.framework.redis.core;

import org.springframework.data.redis.core.Cursor;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.ScanOptions;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.TimeUnit;

/**
 * Redis 工具类
 * 白鸥问我泊孤舟
 * 是身留是心留
 * 心若留时事锁心头
 *
 * @author 荔枝源码
 */
public class RedisUtils {

    private final RedisTemplate<String, Object> redisTemplate;

    public RedisUtils(RedisTemplate<String, Object> redisTemplate) {
        this.redisTemplate = redisTemplate;
    }

    // ==================== 通用操作 ====================

    /**
     * 判断 key 是否存在
     */
    public boolean hasKey(String key) {
        return Boolean.TRUE.equals(redisTemplate.hasKey(key));
    }

    /**
     * 设置过期时间
     */
    public boolean expire(String key, long timeout, TimeUnit unit) {
        return Boolean.TRUE.equals(redisTemplate.expire(key, timeout, unit));
    }

    /**
     * 获取剩余生存时间
     */
    public Long getExpire(String key) {
        return redisTemplate.getExpire(key);
    }

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
     * 根据键获取值
     */
    @SuppressWarnings("unchecked")
    public <T> T get(String key) {
        return (T) redisTemplate.opsForValue().get(key);
    }

    /**
     * 设置键值对
     */
    public void set(String key, Object value) {
        redisTemplate.opsForValue().set(key, value);
    }

    /**
     * 设置键值对并指定过期时间
     */
    public void set(String key, Object value, long timeout, TimeUnit unit) {
        redisTemplate.opsForValue().set(key, value, timeout, unit);
    }

    /**
     * 仅在键不存在时设置值
     */
    public boolean setIfAbsent(String key, Object value) {
        return Boolean.TRUE.equals(redisTemplate.opsForValue().setIfAbsent(key, value));
    }

    /**
     * 仅在键存在时设置值
     */
    public boolean setIfPresent(String key, Object value) {
        return Boolean.TRUE.equals(redisTemplate.opsForValue().setIfPresent(key, value));
    }

    /**
     * 递增（原子操作）
     */
    public Long increment(String key) {
        return redisTemplate.opsForValue().increment(key);
    }

    /**
     * 递增指定步长
     */
    public Long increment(String key, long delta) {
        return redisTemplate.opsForValue().increment(key, delta);
    }

    /**
     * 递减（原子操作）
     */
    public Long decrement(String key) {
        return redisTemplate.opsForValue().decrement(key);
    }

    /**
     * 递减指定步长
     */
    public Long decrement(String key, long delta) {
        return redisTemplate.opsForValue().decrement(key, delta);
    }

    // ==================== Hash 操作 ====================

    /**
     * 获取 Hash 中的字段值
     */
    @SuppressWarnings("unchecked")
    public <T> T hGet(String key, String hashKey) {
        return (T) redisTemplate.opsForHash().get(key, hashKey);
    }

    /**
     * 设置 Hash 中的字段值
     */
    public void hSet(String key, String hashKey, Object value) {
        redisTemplate.opsForHash().put(key, hashKey, value);
    }

    /**
     * 仅在 Hash 字段不存在时设置
     */
    public boolean hSetIfAbsent(String key, String hashKey, Object value) {
        return Boolean.TRUE.equals(redisTemplate.opsForHash().putIfAbsent(key, hashKey, value));
    }

    /**
     * 删除 Hash 中的字段
     */
    public Long hDelete(String key, Object... hashKeys) {
        return redisTemplate.opsForHash().delete(key, hashKeys);
    }

    /**
     * 判断 Hash 字段是否存在
     */
    public boolean hHasKey(String key, String hashKey) {
        return Boolean.TRUE.equals(redisTemplate.opsForHash().hasKey(key, hashKey));
    }

    /**
     * 获取 Hash 中所有字段和值
     */
    public Map<Object, Object> hGetAll(String key) {
        return redisTemplate.opsForHash().entries(key);
    }

    /**
     * 递增 Hash 中的数值（原子操作）
     */
    public Long hIncrement(String key, String hashKey, long delta) {
        return redisTemplate.opsForHash().increment(key, hashKey, delta);
    }

    // ==================== Set 操作 ====================

    /**
     * 添加 Set 成员
     */
    public Long sAdd(String key, Object... values) {
        return redisTemplate.opsForSet().add(key, values);
    }

    /**
     * 移除 Set 成员
     */
    public Long sRemove(String key, Object... values) {
        return redisTemplate.opsForSet().remove(key, values);
    }

    /**
     * 判断元素是否在 Set 中
     */
    public boolean sIsMember(String key, Object value) {
        return Boolean.TRUE.equals(redisTemplate.opsForSet().isMember(key, value));
    }

    /**
     * 获取 Set 中所有成员
     */
    public Set<Object> sMembers(String key) {
        return redisTemplate.opsForSet().members(key);
    }

    /**
     * 获取 Set 的成员数量
     */
    public Long sSize(String key) {
        return redisTemplate.opsForSet().size(key);
    }

    // ==================== List 操作 ====================

    /**
     * 向 List 左侧（头部）添加元素
     */
    public Long lPush(String key, Object value) {
        return redisTemplate.opsForList().leftPush(key, value);
    }

    /**
     * 向 List 右侧（尾部）添加元素
     */
    public Long rPush(String key, Object value) {
        return redisTemplate.opsForList().rightPush(key, value);
    }

    /**
     * 移除并返回 List 左侧（头部）元素
     */
    @SuppressWarnings("unchecked")
    public <T> T lPop(String key) {
        return (T) redisTemplate.opsForList().leftPop(key);
    }

    /**
     * 移除并返回 List 右侧（尾部）元素
     */
    @SuppressWarnings("unchecked")
    public <T> T rPop(String key) {
        return (T) redisTemplate.opsForList().rightPop(key);
    }

    /**
     * 根据索引获取 List 中的元素
     */
    @SuppressWarnings("unchecked")
    public <T> T lIndex(String key, long index) {
        return (T) redisTemplate.opsForList().index(key, index);
    }

    /**
     * 获取 List 的长度
     */
    public Long lSize(String key) {
        return redisTemplate.opsForList().size(key);
    }

    /**
     * 获取 List 中指定范围内的所有元素
     */
    public List<Object> lRange(String key, long start, long end) {
        return redisTemplate.opsForList().range(key, start, end);
    }

    // ==================== 扫描删除（私有方法） ====================

    /**
     * 扫描并删除匹配通配符的所有 key
     */
    private void scanAndDelete(String pattern) {
        ScanOptions scanOptions = ScanOptions.scanOptions()
                .match(pattern)
                .count(100)
                .build();

        try (Cursor<String> cursor = redisTemplate.scan(scanOptions)) {
            Set<String> keys = new HashSet<>();
            while (cursor.hasNext()) {
                keys.add(cursor.next());
            }
            if (!keys.isEmpty()) {
                redisTemplate.delete(keys);
            }
        }
    }
}
