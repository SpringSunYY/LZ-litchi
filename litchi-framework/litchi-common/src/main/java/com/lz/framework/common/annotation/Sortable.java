package com.lz.framework.common.annotation;

import java.lang.annotation.*;

/**
 * 标记该字段可用于排序
 */
@Target({ElementType.FIELD})
@Retention(RetentionPolicy.RUNTIME)
@Documented
public @interface Sortable {

    /**
     * 数据库字段名
     */
    String value();

    /**
     * 默认排序方向（默认降序）
     */
    SortType sortType() default SortType.DESC;

    enum SortType {
        ASC, DESC
    }
}
