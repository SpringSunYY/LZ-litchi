package com.lz.framework.mybatis.core.query;

import cn.hutool.core.util.ArrayUtil;
import cn.hutool.core.util.ObjectUtil;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.support.SFunction;
import com.lz.framework.common.pojo.PageParam;
import com.lz.framework.common.util.collection.ArrayUtils;
import org.springframework.util.StringUtils;

import java.util.Collection;
import java.util.Map;

/**
 * 拓展 MyBatis Plus QueryWrapper 类，主要增加如下功能：
 * <p>
 * 1. 拼接条件的方法，增加 xxxIfPresent 方法，用于判断值不存在的时候，不要拼接到条件中。
 *
 * @param <T> 数据类型
 */
public class LambdaQueryWrapperX<T> extends LambdaQueryWrapper<T> {

    public LambdaQueryWrapperX<T> likeIfPresent(SFunction<T, ?> column, String val) {
        if (StringUtils.hasText(val)) {
            return (LambdaQueryWrapperX<T>) super.like(column, val);
        }
        return this;
    }

    public LambdaQueryWrapperX<T> inIfPresent(SFunction<T, ?> column, Collection<?> values) {
        if (ObjectUtil.isAllNotEmpty(values) && !ArrayUtil.isEmpty(values)) {
            return (LambdaQueryWrapperX<T>) super.in(column, values);
        }
        return this;
    }

    public LambdaQueryWrapperX<T> inIfPresent(SFunction<T, ?> column, Object... values) {
        if (ObjectUtil.isAllNotEmpty(values) && !ArrayUtil.isEmpty(values)) {
            return (LambdaQueryWrapperX<T>) super.in(column, values);
        }
        return this;
    }

    public LambdaQueryWrapperX<T> eqIfPresent(SFunction<T, ?> column, Object val) {
        if (ObjectUtil.isNotEmpty(val)) {
            return (LambdaQueryWrapperX<T>) super.eq(column, val);
        }
        return this;
    }

    public LambdaQueryWrapperX<T> neIfPresent(SFunction<T, ?> column, Object val) {
        if (ObjectUtil.isNotEmpty(val)) {
            return (LambdaQueryWrapperX<T>) super.ne(column, val);
        }
        return this;
    }

    public LambdaQueryWrapperX<T> gtIfPresent(SFunction<T, ?> column, Object val) {
        if (val != null) {
            return (LambdaQueryWrapperX<T>) super.gt(column, val);
        }
        return this;
    }

    public LambdaQueryWrapperX<T> geIfPresent(SFunction<T, ?> column, Object val) {
        if (val != null) {
            return (LambdaQueryWrapperX<T>) super.ge(column, val);
        }
        return this;
    }

    public LambdaQueryWrapperX<T> ltIfPresent(SFunction<T, ?> column, Object val) {
        if (val != null) {
            return (LambdaQueryWrapperX<T>) super.lt(column, val);
        }
        return this;
    }

    public LambdaQueryWrapperX<T> leIfPresent(SFunction<T, ?> column, Object val) {
        if (val != null) {
            return (LambdaQueryWrapperX<T>) super.le(column, val);
        }
        return this;
    }

    public LambdaQueryWrapperX<T> betweenIfPresent(SFunction<T, ?> column, Object val1, Object val2) {
        if (val1 != null && val2 != null) {
            return (LambdaQueryWrapperX<T>) super.between(column, val1, val2);
        }
        if (val1 != null) {
            return (LambdaQueryWrapperX<T>) ge(column, val1);
        }
        if (val2 != null) {
            return (LambdaQueryWrapperX<T>) le(column, val2);
        }
        return this;
    }

    public LambdaQueryWrapperX<T> betweenIfPresent(SFunction<T, ?> column, Object[] values) {
        Object val1 = ArrayUtils.get(values, 0);
        Object val2 = ArrayUtils.get(values, 1);
        return betweenIfPresent(column, val1, val2);
    }

    /**
     * 根据 PageParam 自动应用排序
     * <p>
     * 逻辑：
     * - 传了排序字段 → 校验并应用排序
     * - 没传排序字段 → 不排序，保持查询结果原始顺序
     * <p>
     * 支持多字段排序，sortBy 和 sort 数组按顺序一一对应
     * <p>
     * 注意：字段名会自动从驼峰转成下划线格式（如 tableName -> table_name）
     *
     * @param pageParam 分页参数
     * @return 排序后的 wrapper
     */
    public <V extends PageParam> LambdaQueryWrapperX<T> applyOrder(V pageParam) {
        String[] sortBy = pageParam.getSortBy();
        if (sortBy == null || sortBy.length == 0) {
            return this;
        }

        String[] sortOrders = pageParam.getSort();
        Map<String, PageParam.SortFieldInfo> sortFields = pageParam.getSortFields();

        StringBuilder orderClause = new StringBuilder("ORDER BY ");
        boolean hasOrder = false;

        for (int i = 0; i < sortBy.length; i++) {
            String field = sortBy[i];
            if (field == null || field.isEmpty() || !sortFields.containsKey(field)) {
                continue;
            }

            if (hasOrder) {
                orderClause.append(", ");
            }

            String order;
            if (sortOrders != null && sortOrders.length > i && sortOrders[i] != null) {
                order = "asc".equalsIgnoreCase(sortOrders[i]) ? "ASC" : "DESC";
            } else {
                order = "ASC";
            }

            String dbField = sortFields.get(field).getDbFieldName();
            orderClause.append(dbField).append(" ").append(order);
            hasOrder = true;
        }

        if (!hasOrder) {
            return this;
        }

        return (LambdaQueryWrapperX<T>) last(orderClause.toString());
    }

    /**
     * 根据 PageParam 自动应用排序（支持默认排序）
     * 逻辑：
     * - 传了排序字段 → 校验并应用指定的排序
     * - 没传排序字段 → 应用默认排序
     * @param pageParam         分页参数
     * @param defaultFields     默认排序字段，可多个
     * @param defaultSortOrders 默认排序方向，可多个
     * @return 排序后的 wrapper
     */
    public <V extends PageParam> LambdaQueryWrapperX<T> applyOrder(V pageParam, String[] defaultFields, String[] defaultSortOrders) {
        String[] sortBy = pageParam.getSortBy();
        String[] sortOrders = pageParam.getSort();
        Map<String, PageParam.SortFieldInfo> sortFields = pageParam.getSortFields();

        if (sortBy == null || sortBy.length == 0) {
            sortBy = defaultFields;
            sortOrders = defaultSortOrders;
        }

        if (sortBy == null || sortBy.length == 0) {
            return this;
        }

        StringBuilder orderClause = new StringBuilder("ORDER BY ");
        boolean hasOrder = false;

        for (int i = 0; i < sortBy.length; i++) {
            String field = sortBy[i];
            if (field == null || field.isEmpty() || !sortFields.containsKey(field)) {
                continue;
            }

            if (hasOrder) {
                orderClause.append(", ");
            }

            String order;
            if (sortOrders != null && sortOrders.length > i && sortOrders[i] != null) {
                order = "asc".equalsIgnoreCase(sortOrders[i]) ? "ASC" : "DESC";
            } else {
                order = "ASC";
            }

            String dbField = sortFields.get(field).getDbFieldName();
            orderClause.append(dbField).append(" ").append(order);
            hasOrder = true;
        }

        if (!hasOrder) {
            return this;
        }

        return (LambdaQueryWrapperX<T>) last(orderClause.toString());
    }

    /**
     * 根据 PageParam 自动应用排序（单个默认排序字段）
     *
     * @deprecated 请使用 {@link #applyOrder(PageParam, SFunction, boolean)} 或 {@link #applyOrderAsc(PageParam, SFunction)} 等方法
     */
    @Deprecated
    public <V extends PageParam> LambdaQueryWrapperX<T> applyOrder(V pageParam, String defaultField, String defaultSortOrder) {
        return applyOrder(pageParam, new String[]{defaultField}, new String[]{defaultSortOrder});
    }

    /**
     * 根据 PageParam 自动应用排序（支持默认排序）
     *
     * @param pageParam 分页参数
     * @param column    默认排序字段
     * @param isAsc     是否升序
     * @return 排序后的 wrapper
     */
    public <V extends PageParam> LambdaQueryWrapperX<T> applyOrder(V pageParam, SFunction<T, ?> column, boolean isAsc) {
        String[] sortBy = pageParam.getSortBy();
        if (sortBy != null && sortBy.length > 0) {
            return applyOrder(pageParam);
        }
        return isAsc ? orderByAsc(column) : orderByDesc(column);
    }

    /**
     * 根据 PageParam 自动应用排序（默认升序）
     */
    public <V extends PageParam> LambdaQueryWrapperX<T> applyOrderAsc(V pageParam, SFunction<T, ?> column) {
        return applyOrder(pageParam, column, true);
    }

    /**
     * 根据 PageParam 自动应用排序（默认降序）
     */
    public <V extends PageParam> LambdaQueryWrapperX<T> applyOrderDesc(V pageParam, SFunction<T, ?> column) {
        return applyOrder(pageParam, column, false);
    }

    // ========== 重写父类方法，方便链式调用 ==========

    @Override
    public LambdaQueryWrapperX<T> eq(boolean condition, SFunction<T, ?> column, Object val) {
        super.eq(condition, column, val);
        return this;
    }

    @Override
    public LambdaQueryWrapperX<T> eq(SFunction<T, ?> column, Object val) {
        super.eq(column, val);
        return this;
    }

    @Override
    public LambdaQueryWrapperX<T> orderByDesc(SFunction<T, ?> column) {
        super.orderByDesc(true, column);
        return this;
    }

    public LambdaQueryWrapperX<T> orderByAsc(SFunction<T, ?> column) {
        super.orderByAsc(true, column);
        return this;
    }

    @Override
    public LambdaQueryWrapperX<T> last(String lastSql) {
        super.last(lastSql);
        return this;
    }

    @Override
    public LambdaQueryWrapperX<T> in(SFunction<T, ?> column, Collection<?> coll) {
        super.in(column, coll);
        return this;
    }

}
