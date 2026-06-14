package com.lz.framework.ip.core.config;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.validation.annotation.Validated;

/**
 * IP 配置
 * 追风赶月莫停留，平芜尽处是春山。
 * @author YY
 */
@ConfigurationProperties(prefix = "litchi.ip")
@Validated
@Data
public class IpProperties {

    /**
     * IP 地址
     * <ul>
     *     <li>{@code ip2region}：使用 ip2region 离线库查询 IP 地址</li>
     *     <li>{@code ipJson}: 使用http在ipJson查询</li>
     * </ul>
     */
    String ip;

    /**
     * IP 地址数据源类型
     * <ul>
     *   <li>{@code database}：默认使用数据库的方式查询 IP 地址</li>
     *   <li>{@code ip2region}：使用 ip2region 离线库查询 IP 地址</li>
     * </ul>
     */
    String area;

    String ipUrl;
}
