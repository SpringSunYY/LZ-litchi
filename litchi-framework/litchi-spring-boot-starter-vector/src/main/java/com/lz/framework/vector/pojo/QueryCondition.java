package com.lz.framework.vector.pojo;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

/**
 * 类型化查询条件构造器。
 *
 * <p>设计目标：
 * <ul>
 *   <li><b>类型安全</b>：避免调用方手写 Milvus expr 时拼错字段名/引号转义</li>
 *   <li><b>白名单</b>：只允许当前 schema 中存在的字段名被引用，避免任意 expr 注入风险</li>
 *   <li><b>可组合</b>：多个条件用 {@code AND} 串联，调用方不必关心空格/括号</li>
 * </ul>
 *
 * <p>典型用法：
 * <pre>{@code
 * QueryCondition cond = QueryCondition.builder()
 *         .eq("image_path", "images/cat.jpg")
 *         .eq("tenant_id", 42L)
 *         .gte("create_time", 1700000000000L)
 *         .build();
 * List<VectorRecord> records = milvusService.query(cond);
 * }</pre>
 *
 * <p>如果需要更灵活的查询（OR、子查询、JSON 字段等），请使用
 * {@code MilvusService.queryRawExpr(String expr)}。
 */
public final class QueryCondition {

    /** MilvusService 中允许作为查询字段的 schema 字段名白名单 */
    public static final List<String> QUERYABLE_FIELDS = List.of(
            "id", "image_path", "origin_key", "tenant_id", "create_time"
    );

    private final List<Clause> clauses;

    private QueryCondition(List<Clause> clauses) {
        this.clauses = clauses;
    }

    /**
     * 是否为空（没有任何条件）。
     */
    public boolean isEmpty() {
        return clauses.isEmpty();
    }

    /**
     * 渲染成 Milvus expr 字符串。
     * 多条件用 {@code AND} 串联。
     */
    public String toExpr() {
        if (clauses.isEmpty()) {
            throw new IllegalStateException("QueryCondition 没有任何条件，无法生成 expr。请至少调用一次 eq/gt/lt/like/in");
        }
        return clauses.stream()
                .map(Clause::render)
                .collect(Collectors.joining(" AND "));
    }

    // ============ Builder ============

    public static Builder builder() {
        return new Builder();
    }

    public static class Builder {
        private final List<Clause> clauses = new ArrayList<>();

        public Builder eq(String field, String value) {
            clauses.add(new Clause(field, "==", quote(value)));
            return this;
        }

        public Builder eq(String field, long value) {
            clauses.add(new Clause(field, "==", String.valueOf(value)));
            return this;
        }

        public Builder ne(String field, String value) {
            clauses.add(new Clause(field, "!=", quote(value)));
            return this;
        }

        public Builder gt(String field, long value) {
            clauses.add(new Clause(field, ">", String.valueOf(value)));
            return this;
        }

        public Builder gte(String field, long value) {
            clauses.add(new Clause(field, ">=", String.valueOf(value)));
            return this;
        }

        public Builder lt(String field, long value) {
            clauses.add(new Clause(field, "<", String.valueOf(value)));
            return this;
        }

        public Builder lte(String field, long value) {
            clauses.add(new Clause(field, "<=", String.valueOf(value)));
            return this;
        }

        /**
         * 字符串前缀匹配（image_path LIKE 'images/cat%'）。
         */
        public Builder startsWith(String field, String prefix) {
            clauses.add(new Clause(field, "like", quote(prefix + "%")));
            return this;
        }

        /**
         * 字符串包含匹配（image_path LIKE '%cat%'）。
         */
        public Builder contains(String field, String substring) {
            clauses.add(new Clause(field, "like", quote("%" + substring + "%")));
            return this;
        }

        /**
         * IN 查询。
         */
        public Builder in(String field, List<String> values) {
            if (values == null || values.isEmpty()) {
                throw new IllegalArgumentException("IN 列表不可为空");
            }
            String joined = values.stream()
                    .map(QueryCondition::quote)
                    .collect(Collectors.joining(","));
            clauses.add(new Clause(field, "in", "[" + joined + "]"));
            return this;
        }

        public Builder in(String field, String... values) {
            return in(field, Arrays.asList(values));
        }

        public QueryCondition build() {
            return new QueryCondition(new ArrayList<>(clauses));
        }
    }

    // ============ Internal ============

    private record Clause(String field, String op, String rhs) {
        String render() {
            validateField(field);
            return field + " " + op + " " + rhs;
        }
    }

    /**
     * 校验字段名是否在白名单内，防止任意字段被拼接进 expr。
     */
    private static void validateField(String field) {
        if (field == null || !QUERYABLE_FIELDS.contains(field)) {
            throw new IllegalArgumentException(
                    "不允许的查询字段: '" + field + "', 允许: " + QUERYABLE_FIELDS);
        }
    }

    /**
     * 转义并包装字符串字面量：内部双引号加反斜杠，外面套双引号。
     */
    private static String quote(String value) {
        if (value == null) {
            throw new IllegalArgumentException("字符串值不可为 null");
        }
        return "\"" + value.replace("\\", "\\\\").replace("\"", "\\\"") + "\"";
    }
}
