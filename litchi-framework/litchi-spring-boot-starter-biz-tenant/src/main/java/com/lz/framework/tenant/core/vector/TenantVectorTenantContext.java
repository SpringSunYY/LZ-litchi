package com.lz.framework.tenant.core.vector;

import com.lz.framework.tenant.core.context.TenantContextHolder;
import com.lz.framework.vector.core.isolation.VectorTenantContext;

/**
 * biz-tenant 模块提供的 {@link VectorTenantContext} 实现。
 *
 * <p>未引入 biz-tenant 或未启用 {@code litchi.tenant.enable=true} 时，本类不会被注册，
 * vector 的 ObjectProvider 拿不到实现 —— 走 {@code _default} partition / database。
 *
 * @author litchi
 */
public class TenantVectorTenantContext implements VectorTenantContext {

    /**
     * 返回值语义：
     * <ul>
     *   <li>{@code @TenantIgnore} → 返回 {@code null}（MilvusService 同样识别为 ignore）</li>
     *   <li>未启用租户 → 返回 {@code null}（MilvusService 走 0L 哨兵 + _default 分区）</li>
     *   <li>正常请求 → 返回真实租户 ID（MilvusService 走 tnt_{tenantId} 隔离）</li>
     * </ul>
     */
    @Override
    public Long currentTenantId() {
        if (TenantContextHolder.isIgnore()) {
            return null;
        }
        return TenantContextHolder.getTenantId();
    }
}
