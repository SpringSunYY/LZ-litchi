package com.lz.framework.demoMode.config;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;

/**
 * 演示模式配置属性
 *
 * @author 荔枝源码
 */
@ConfigurationProperties(prefix = "litchi.demo")
@Data
public class DemoModeProperties {

    /**
     * 是否开启演示模式
     */
    private boolean enabled = false;

    /**
     * 演示模式下被拦截时的自定义提示信息
     */
    private String message = "演示模式，不允许操作";
}
