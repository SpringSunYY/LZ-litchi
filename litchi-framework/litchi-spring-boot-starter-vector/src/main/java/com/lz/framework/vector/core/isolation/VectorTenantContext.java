package com.lz.framework.vector.core.isolation;

/**
 * 向量模块的多租户上下文桥接接口。
 * <p><b>返回值语义</b>：
 * <ul>
 *   <li>{@code null}：当前线程未设置租户 → MilvusService 走 {@code _default} partition / database</li>
 *   <li>{@code -1L}：{@code @TenantIgnore} 显式忽略 → 同样走 {@code _default}</li>
 *   <li>其它正数：真实租户 ID → MilvusService 走 {@code tnt_{tenantId}} 隔离</li>
 * </ul>
 *
 * @author litchi
 */
public interface VectorTenantContext {

    /**
     * 解析当前线程所属租户编号。
     *
     * @return 租户编号；未启用租户返回 {@code null}；{@code @TenantIgnore} 场景返回 {@code -1L}
     */
    Long currentTenantId();
}
