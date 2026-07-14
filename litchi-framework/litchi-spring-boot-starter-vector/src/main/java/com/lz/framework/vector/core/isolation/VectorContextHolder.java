package com.lz.framework.vector.core.isolation;

import com.lz.framework.vector.milvus.clinet.TenantAwareMilvusClient;

/**
 * 向量模块的 ThreadLocal 上下文持有者。
 *
 * <p>本类的唯一职责：在 {@link com.lz.framework.tenant.core.web.TenantContextWebFilter}
 * 请求结束时，清理 Milvus 客户端内部的 ThreadLocal，
 * 防止 Tomcat 线程池复用线程时出现跨租户数据泄漏。
 *
 * <p>使用静态 ThreadLocal 而非在 {@link TenantAwareMilvusClient}
 * 内直接定义：方便 biz-tenant 模块通过反射调用（反射静态字段只需传 null 实例）。
 *
 * @author litchi
 */
public class VectorContextHolder {

    /**
     * Milvus activeDatabase 的 ThreadLocal。
     * 由 {@link TenantAwareMilvusClient} 引用。
     */
    /**
     * Milvus activeDatabase 的 ThreadLocal，供 {@link TenantAwareMilvusClient} 引用。
     */
    public static final ThreadLocal<String> ACTIVE_DATABASE = new ThreadLocal<>();

    /**
     * 清理 activeDatabase ThreadLocal（防止线程池复用时跨租户泄漏）。
     *
     * <p>由 {@code TenantContextWebFilter} 在请求结束时通过反射调用。
     */
    public static void clearActiveDatabase() {
        ACTIVE_DATABASE.remove();
    }
}
