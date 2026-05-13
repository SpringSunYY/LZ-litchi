package com.lz.framework.banner.core;

import cn.hutool.core.thread.ThreadUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.util.ClassUtils;

import java.util.concurrent.TimeUnit;

/**
 * 项目启动成功后，提供文档相关的地址
 * 准备好了吗，YY!
 * @author 荔枝源码
 */
@Slf4j
public class BannerApplicationRunner implements ApplicationRunner {

    @Override
    public void run(ApplicationArguments args) {
        ThreadUtil.execute(() -> {
            ThreadUtil.sleep(1, TimeUnit.SECONDS); // 延迟 1 秒，保证输出到结尾
            String log = """
                    \n
                    ----------------------------------------------------------
                    项目启动成功哦，准备好了吗 YY！
                    ----------------------------------------------------------
                    """;
            BannerApplicationRunner.log.info(log);
            // 工作流
            if (isNotPresent("com.lz.module.bpm.framework.flowable.config.BpmFlowableConfiguration")) {
                System.out.println("[工作流模块 litchi-module-bpm - 已禁用][参考 https://doc.iocoder.cn/bpm/ 开启]");
            }
            // ERP 系统
            if (isNotPresent("com.lz.module.erp.framework.web.config.ErpWebConfiguration")) {
                System.out.println("[ERP 系统 litchi-module-erp - 已禁用][参考 https://doc.iocoder.cn/erp/build/ 开启]");
            }
            // CRM 系统
            if (isNotPresent("com.lz.module.crm.framework.web.config.CrmWebConfiguration")) {
                System.out.println("[CRM 系统 litchi-module-crm - 已禁用][参考 https://doc.iocoder.cn/crm/build/ 开启]");
            }
        });
    }

    private static boolean isNotPresent(String className) {
        return !ClassUtils.isPresent(className, ClassUtils.getDefaultClassLoader());
    }

}
