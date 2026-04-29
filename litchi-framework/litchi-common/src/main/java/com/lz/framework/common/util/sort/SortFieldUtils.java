package com.lz.framework.common.util.sort;

import com.lz.framework.common.annotation.Sortable;

import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/**
 * 排序字段工具类 - 收集类中标记了 @Sortable 的字段
 */
public class SortFieldUtils {

    /**
     * 缓存：类名 -> 可排序字段集合
     */
    private static final Map<Class<?>, Set<String>> SORTABLE_FIELDS_CACHE = new ConcurrentHashMap<>();

    /**
     * 获取类中所有可排序的字段名
     */
    public static Set<String> getSortableFields(Class<?> clazz) {
        return SORTABLE_FIELDS_CACHE.computeIfAbsent(clazz, SortFieldUtils::collectSortableFields);
    }

    /**
     * 检查指定字段是否可排序
     */
    public static boolean isSortable(Class<?> clazz, String fieldName) {
        Set<String> sortableFields = getSortableFields(clazz);
        return sortableFields.contains(fieldName);
    }

    /**
     * 收集类及其父类中标记了 @Sortable 的字段
     */
    @SuppressWarnings("unchecked")
    private static Set<String> collectSortableFields(Class<?> clazz) {
        Set<String> fields = new HashSet<>();
        Class<?> current = clazz;

        while (current != null && current != Object.class) {
            // 收集当前类的所有字段
            for (java.lang.reflect.Field field : current.getDeclaredFields()) {
                if (field.isAnnotationPresent(Sortable.class)) {
                    fields.add(field.getName());
                }
            }
            current = current.getSuperclass();
        }

        return fields;
    }

    /**
     * 清除缓存（用于动态修改场景）
     */
    public static void clearCache() {
        SORTABLE_FIELDS_CACHE.clear();
    }
}
