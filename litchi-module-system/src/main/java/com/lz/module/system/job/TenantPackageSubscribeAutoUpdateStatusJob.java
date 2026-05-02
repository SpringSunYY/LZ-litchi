package com.lz.module.system.job;

import com.lz.framework.quartz.core.handler.JobHandler;
import com.lz.framework.tenant.core.context.TenantContextHolder;
import com.lz.framework.tenant.core.job.TenantJob;
import com.lz.module.system.dal.dataobject.tenant.TenantDO;
import com.lz.module.system.service.tenant.TenantService;
import jakarta.annotation.Resource;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

/**
 * 租户套餐自动更新状态 Job
 *
 * @author 芋道源码
 */
@Component
@Slf4j
public class TenantPackageSubscribeAutoUpdateStatusJob implements JobHandler {

    @Resource
    private TenantService tenantService;

    @Override
    @TenantJob // 标记多租户
    public String execute(String param) {
        if (tenantService.isTenantDisable()) {
            log.info("未开启多租户");
            return "未开启多租户";
        }
        System.out.println("当前租户：" + TenantContextHolder.getTenantId());
        return tenantService.autoUpdateTenantPackageSubscribeStatus();
    }

}
