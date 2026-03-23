package com.lz.module.system.job;

import com.lz.framework.quartz.core.handler.JobHandler;
import com.lz.framework.tenant.core.context.TenantContextHolder;
import com.lz.framework.tenant.core.job.TenantJob;
import com.lz.module.system.dal.dataobject.user.AdminUserDO;
import com.lz.module.system.dal.mysql.user.AdminUserMapper;
import org.springframework.stereotype.Component;

import jakarta.annotation.Resource;
import java.util.List;

@Component
public class DemoJob implements JobHandler {

    @Resource
    private AdminUserMapper adminUserMapper;

    @Override
    @TenantJob // 标记多租户
    public String execute(String param) {
        System.out.println("当前租户：" + TenantContextHolder.getTenantId());
        List<AdminUserDO> users = adminUserMapper.selectList();
        return "用户数量：" + users.size();
    }

}
