package com.lz.framework.common.pojo;

import com.lz.framework.common.annotation.Sortable;
import com.lz.framework.common.validation.SortValidation;
import com.lz.framework.common.validation.SortByValid;
import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotNull;
import lombok.Data;
import lombok.extern.slf4j.Slf4j;

import java.io.Serializable;
import java.lang.reflect.Field;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/**
 * 分页参数
 */
@Slf4j
@Schema(description = "分页参数")
@Data
@SortByValid
public class PageParam implements Serializable {

    private static final Integer PAGE_NO = 1;
    private static final Integer PAGE_SIZE = 10;

    @Schema(description = "排序字段，可多个", example = "id")
    private String[] sortBy;

    @Schema(description = "排序方向，可多个（asc/desc）", example = "desc")
    @SortValidation
    private String[] sort;

    /**
     * 每页条数 - 不分页
     * 例如说，导出接口，可以设置 {@link #pageSize} 为 -1 不分页，查询所有数据。
     */
    public static final Integer PAGE_SIZE_NONE = -1;

    @Schema(description = "页码，从 1 开始", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @NotNull(message = "页码不能为空")
    @Min(value = 1, message = "页码最小值为 1")
    private Integer pageNo = PAGE_NO;

    @Schema(description = "每页条数，最大值为 100", requiredMode = Schema.RequiredMode.REQUIRED, example = "10")
    @NotNull(message = "每页条数不能为空")
    @Min(value = 1, message = "每页条数最小值为 1")
    @Max(value = 100, message = "每页条数最大值为 100")
    private Integer pageSize = PAGE_SIZE;

    /**
     * 缓存：类名 -> 可排序字段映射
     * key: VO字段名, value: 排序信息
     */
    private static final Map<Class<?>, Map<String, SortFieldInfo>> SORT_FIELD_CACHE = new ConcurrentHashMap<>();

    /**
     * 获取可排序字段映射
     * <p>
     * 自动扫描当前类中标记了 @Sortable 的字段。
     *
     * @return 可排序字段映射，key 为字段名，value 为排序信息
     */
    @SuppressWarnings("unchecked")
    public Map<String, SortFieldInfo> getSortFields() {
        Class<?> clazz = getClass();
        return SORT_FIELD_CACHE.computeIfAbsent(clazz, this::scanSortableFields);
    }

    /**
     * 扫描类中标记了 @Sortable 的字段
     */
    private Map<String, SortFieldInfo> scanSortableFields(Class<?> clazz) {
        Map<String, SortFieldInfo> fields = new LinkedHashMap<>();
        Class<?> current = clazz;

        while (current != null && current != Object.class) {
            for (Field field : current.getDeclaredFields()) {
                if (field.isAnnotationPresent(Sortable.class)) {
                    Sortable sortable = field.getAnnotation(Sortable.class);
                    String fieldName = field.getName();
                    String dbFieldName = sortable.value();
                    SortFieldInfo info = new SortFieldInfo(fieldName, dbFieldName, sortable.sortType());
                    fields.put(fieldName, info);
                }
            }
            current = current.getSuperclass();
        }

        return fields;
    }

    /**
     * 排序字段信息
     */
    @Data
    public static class SortFieldInfo {
        /**
         * Java 字段名
         */
        private final String fieldName;
        /**
         * 数据库字段名
         */
        private final String dbFieldName;
        /**
         * 默认排序方向
         */
        private final Sortable.SortType defaultSortType;

        public SortFieldInfo(String fieldName, String dbFieldName, Sortable.SortType defaultSortType) {
            this.fieldName = fieldName;
            this.dbFieldName = dbFieldName;
            this.defaultSortType = defaultSortType;
        }
    }

}
