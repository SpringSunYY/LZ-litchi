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
     * IP 地址数据源配置
     */
    private IpConfig ip;

    /**
     * 地区信息数据源配置
     */
    private AreaConfig area;

    @Data
    public static class IpConfig {
        /**
         * IP 地址数据源类型
         * <ul>
         *     <li>{@code ip2region}：使用 ip2region 离线库查询 IP 地址</li>
         *     <li>{@code ipJson}: 使用HTTP在线接口查询，会降级到ip2region</li>
         * </ul>
         */
        private String type;

        /**
         * ipJson在线查询接口URL
         */
        private String ipUrl;

        /**
         * 是否启用本地缓存
         */
        private Boolean cache = false;

        /**
         * 缓存时间（单位：秒）
         */
        private Integer cacheTime = 60;

        /**
         * 降级方案，当ipJson查询失败时使用
         * <ul>
         *   <li>{@code ip2region}：降级到ip2region离线库</li>
         * </ul>
         */
        private String rollback;
    }

    @Data
    public static class AreaConfig {
        /**
         * 地区信息数据源类型
         * <ul>
         *   <li>{@code database}：使用数据库的方式查询地址信息</li>
         *   <li>{@code ip2region}：使用 ip2region 离线库查询地址信息</li>
         * </ul>
         */
        private String type;
    }
}
