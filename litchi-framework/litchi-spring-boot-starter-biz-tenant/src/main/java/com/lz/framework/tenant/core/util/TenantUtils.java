package com.lz.framework.tenant.core.util;

import com.lz.framework.tenant.config.TenantProperties;
import com.lz.framework.tenant.core.context.TenantContextHolder;

import java.util.Map;
import java.util.concurrent.Callable;

import static com.lz.framework.web.core.util.WebFrameworkUtils.HEADER_TENANT_ID;

/**
 * 多租户 Util
 *
 * @author 荔枝源码
 */
public class TenantUtils {

    private static TenantProperties tenantProperties;

    public TenantUtils(TenantProperties tenantProperties) {
        TenantUtils.tenantProperties = tenantProperties;
    }

    /**
     * 使用指定租户，执行对应的逻辑
     * <p>
     * 注意，如果当前是忽略租户的情况下，会被强制设置成不忽略租户
     * 当然，执行完成后，还是会恢复回去
     *
     * @param tenantId 租户编号
     * @param runnable 逻辑
     */
    public static void execute(Long tenantId, Runnable runnable) {
        Long oldTenantId = TenantContextHolder.getTenantId();
        Boolean oldIgnore = TenantContextHolder.isIgnore();
        try {
            TenantContextHolder.setTenantId(tenantId);
            TenantContextHolder.setIgnore(false);
            // 执行逻辑
            runnable.run();
        } finally {
            TenantContextHolder.setTenantId(oldTenantId);
            TenantContextHolder.setIgnore(oldIgnore);
        }
    }

    /**
     * 使用指定租户，执行对应的逻辑
     * <p>
     * 注意，如果当前是忽略租户的情况下，会被强制设置成不忽略租户
     * 当然，执行完成后，还是会恢复回去
     *
     * @param tenantId 租户编号
     * @param callable 逻辑
     * @return 结果
     */
    public static <V> V execute(Long tenantId, Callable<V> callable) {
        Long oldTenantId = TenantContextHolder.getTenantId();
        Boolean oldIgnore = TenantContextHolder.isIgnore();
        try {
            TenantContextHolder.setTenantId(tenantId);
            TenantContextHolder.setIgnore(false);
            // 执行逻辑
            return callable.call();
        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            TenantContextHolder.setTenantId(oldTenantId);
            TenantContextHolder.setIgnore(oldIgnore);
        }
    }

    /**
     * 系统租户和普通租户的差异化执行
     *
     * <p>如果当前是系统租户，则直接执行（忽略租户隔离，可操作所有租户数据）；
     * 如果是普通租户，则强制使用当前租户编号执行（确保只操作自己的数据，防止越权）。
     *
     * <p>典型使用场景：
     * <pre>{@code
     * Long tenantId = TenantContextHolder.getTenantId();
     * TenantUtils.executeSystemOrTenant(tenantId, tenantService.isSystemTenantById(tenantId),
     *     () -> doSomething());
     * }</pre>
     *
     * @param tenantId       租户编号
     * @param isSystemTenant 是否为系统租户
     * @param runnable       逻辑
     */
    public static void executeSystemOrTenant(Long tenantId, boolean isSystemTenant, Runnable runnable) {
        if (isSystemTenant) {
            TenantContextHolder.setIgnore(true);
            runnable.run();
        } else {
            execute(tenantId, runnable);
        }
    }

    /**
     * 系统租户和普通租户的差异化执行
     *
     * <p>如果当前是系统租户，则直接执行（忽略租户隔离，可操作所有租户数据）；
     * 不传递系统租户参数，使用配置获取
     *
     * <p>典型使用场景：
     * <pre>{@code
     * Long tenantId = TenantContextHolder.getTenantId();
     * TenantUtils.executeSystemOrTenant(tenantId, tenantService.isSystemTenantById(tenantId),
     *     () -> doSomething());
     * }</pre>
     *
     * @param tenantId 租户编号
     * @param runnable 逻辑
     */
    public static void executeSystemOrTenant(Long tenantId, Runnable runnable) {
        boolean isSystemTenant = false;
        if (tenantProperties.getSystemTenantId() != null) {
            isSystemTenant = tenantProperties.getSystemTenantId().equals(tenantId);
        }
        if (isSystemTenant) {
            TenantContextHolder.setIgnore(true);
            runnable.run();
        } else {
            execute(tenantId, runnable);
        }
    }

    /**
     * 系统租户和普通租户的差异化执行
     *
     * <p>如果当前是系统租户，则直接执行（忽略租户隔离，可操作所有租户数据）；
     * 不传递系统租户参数，使用配置获取，也不传递租户编号，使用当前租户编号
     *
     * <p>典型使用场景：
     * <pre>{@code
     * Long tenantId = TenantContextHolder.getTenantId();
     * TenantUtils.executeSystemOrTenant(tenantId, tenantService.isSystemTenantById(tenantId),
     *     () -> doSomething());
     * }</pre>
     *
     * @param runnable 逻辑
     */
    public static void executeSystemOrTenant(Runnable runnable) {
        boolean isSystemTenant = false;
        Long tenantId = TenantContextHolder.getTenantId();
        if (tenantProperties.getSystemTenantId() != null && tenantId != null) {
            isSystemTenant = tenantProperties.getSystemTenantId().equals(tenantId);
        }
        if (isSystemTenant) {
            TenantContextHolder.setIgnore(true);
            runnable.run();
        } else {
            execute(tenantId, runnable);
        }
    }

    /**
     * 系统租户和普通租户的差异化执行，如果是系统租户去除租户隔离
     *
     * <p>如果当前是系统租户，则直接执行（忽略租户隔离，可操作所有租户数据）；
     * 如果是普通租户，则强制使用当前租户编号执行（确保只操作自己的数据，防止越权）。
     *
     * @param tenantId       租户编号
     * @param isSystemTenant 是否为系统租户
     * @param callable       逻辑
     * @return 结果
     */
    public static <V> V executeSystemOrTenant(Long tenantId, boolean isSystemTenant, Callable<V> callable) {
        if (isSystemTenant) {
            try {
                TenantContextHolder.setIgnore(true);
                return callable.call();
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        } else {
            return execute(tenantId, callable);
        }
    }

    /**
     * 系统租户和普通租户的差异化执行，如果是系统租户去除租户隔离
     *
     * <p>如果当前是系统租户，则直接执行（忽略租户隔离，可操作所有租户数据）；
     * 不传递系统租户参数，使用配置获取
     *
     * @param tenantId 租户编号
     * @param callable 逻辑
     * @return 结果
     */
    public static <V> V executeSystemOrTenant(Long tenantId, Callable<V> callable) {
        boolean isSystemTenant = false;
        if (tenantProperties.getSystemTenantId() != null) {
            isSystemTenant = tenantProperties.getSystemTenantId().equals(tenantId);
        }
        if (isSystemTenant) {
            try {
                TenantContextHolder.setIgnore(true);
                return callable.call();
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        } else {
            return execute(tenantId, callable);
        }
    }

    /**
     * 系统租户和普通租户的差异化执行，如果是系统租户去除租户隔离
     *
     * <p>如果当前是系统租户，则直接执行（忽略租户隔离，可操作所有租户数据）；
     * 不传递系统租户参数，使用配置获取，不传递租户编号，使用当前租户编号
     *
     * @param callable 逻辑
     * @return 结果
     */
    public static <V> V executeSystemOrTenant(Callable<V> callable) {
        boolean isSystemTenant = false;
        Long tenantId = TenantContextHolder.getTenantId();
        if (tenantProperties.getSystemTenantId() != null && tenantId != null) {
            isSystemTenant = tenantProperties.getSystemTenantId().equals(tenantId);
        }
        if (isSystemTenant) {
            try {
                TenantContextHolder.setIgnore(true);
                return callable.call();
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        } else {
            return execute(tenantId, callable);
        }
    }

    /**
     * 忽略租户，执行对应的逻辑
     *
     * @param runnable 逻辑
     */
    public static void executeIgnore(Runnable runnable) {
        Boolean oldIgnore = TenantContextHolder.isIgnore();
        try {
            TenantContextHolder.setIgnore(true);
            // 执行逻辑
            runnable.run();
        } finally {
            TenantContextHolder.setIgnore(oldIgnore);
        }
    }

    /**
     * 忽略租户，执行对应的逻辑
     *
     * @param callable 逻辑
     * @return 结果
     */
    public static <V> V executeIgnore(Callable<V> callable) {
        Boolean oldIgnore = TenantContextHolder.isIgnore();
        try {
            TenantContextHolder.setIgnore(true);
            // 执行逻辑
            return callable.call();
        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            TenantContextHolder.setIgnore(oldIgnore);
        }
    }

    /**
     * 将多租户编号，添加到 header 中
     *
     * @param headers  HTTP 请求 headers
     * @param tenantId 租户编号
     */
    public static void addTenantHeader(Map<String, String> headers, Long tenantId) {
        if (tenantId != null) {
            headers.put(HEADER_TENANT_ID, tenantId.toString());
        }
    }

}
