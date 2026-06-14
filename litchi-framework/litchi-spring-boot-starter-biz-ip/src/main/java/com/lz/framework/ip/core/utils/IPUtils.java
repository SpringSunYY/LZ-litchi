package com.lz.framework.ip.core.utils;

import cn.hutool.core.util.StrUtil;
import com.lz.framework.ip.core.Area;
import com.lz.framework.ip.core.config.IpProperties;
import com.lz.framework.ip.core.constants.IpConstants;
import com.lz.framework.ip.core.template.Ip2RegionTemplate;
import com.lz.framework.ip.core.template.IpJsonTemplate;
import com.lz.framework.ip.core.template.IpTemplate;
import lombok.extern.slf4j.Slf4j;

import java.net.InetAddress;
import java.net.UnknownHostException;

/**
 * IP 工具类
 *
 * @author YY
 */
@Slf4j
public class IPUtils {

    /**
     * IP 信息提供者
     */
    private static IpTemplate ipProvider;

    /**
     * 静态 API 引用
     */
    private static IpProperties ipProperties;

    /**
     * 设置 API 实现（供外部调用初始化）
     */
    public static void init(IpProperties ipProperties) {
        IPUtils.ipProperties = ipProperties;
        initIpProvider();
    }

    /**
     * 初始化 IP 信息提供者
     */
    private static void initIpProvider() {
        if (ipProperties == null || StrUtil.isBlank(ipProperties.getIp())) {
            log.warn("[IPUtils] ipProperties 未配置，无法初始化 IP 数据源");
            return;
        }
        if (ipProperties.getIp().equals(IpConstants.IP2_REGION)) {
            ipProvider = new Ip2RegionTemplate();
        } else if (ipProperties.getIp().equals(IpConstants.IP_JSON)) {
            ipProvider = new IpJsonTemplate(ipProperties);
        } else {
            log.warn("[IPUtils] 未配置区域数据源，请检查 IpProperties 配置");
        }
    }

    /**
     * 私有化构造
     */
    public IPUtils() {
    }

    /**
     * 查询 IP 对应的地区编码
     */
    public static String getAreaCode(String ip) {
        if (ipProvider == null) {
            log.warn("[IPUtils] IP信息提供者未初始化");
            return null;
        }
        return ipProvider.getAreaCode(ip);
    }

    /**
     * 查询 IP 对应的地区编码
     */
    public static String getAreaCode(long ip) {
        if (ipProvider == null) {
            log.warn("[IPUtils] IP信息提供者未初始化");
            return null;
        }
        return ipProvider.getAreaCode(ip);
    }

    /**
     * 查询 IP 对应的地区编号（兼容旧接口）
     *
     * @deprecated 使用 {@link #getAreaCode(String)} 代替
     */
    @Deprecated
    public static Integer getAreaId(String ip) {
        String code = getAreaCode(ip);
        if (code == null) return null;
        try {
            return Integer.parseInt(code);
        } catch (NumberFormatException e) {
            return null;
        }
    }

    /**
     * 查询 IP 对应的地区编号（兼容旧接口）
     *
     * @deprecated 使用 {@link #getAreaCode(long)} 代替
     */
    @Deprecated
    public static Integer getAreaId(long ip) {
        String code = getAreaCode(ip);
        if (code == null) return null;
        try {
            return Integer.parseInt(code);
        } catch (NumberFormatException e) {
            return null;
        }
    }

    /**
     * 查询 IP 对应的地区
     */
    public static Area getArea(String ip) {
        if (ipProvider == null) {
            log.warn("[IPUtils] IP信息提供者未初始化");
            return null;
        }
        return ipProvider.getArea(ip);
    }

    /**
     * 查询 IP 对应的地区
     */
    public static Area getArea(long ip) {
        if (ipProvider == null) {
            log.warn("[IPUtils] IP信息提供者未初始化");
            return null;
        }
        return ipProvider.getArea(ip);
    }

    /**
     * 获取 IP 地址对应的地址信息
     */
    public static String getIpAddr(String ip) {
        if (ipProvider == null) {
            log.warn("[IPUtils] IP信息提供者未初始化");
            return IpConstants.UNKNOWN;
        }
        return ipProvider.getIpAddr(ip);
    }

    /**
     * 检查是否为内部IP地址
     */
    public static boolean internalIp(String ip) {
        return ipProvider != null && ipProvider.internalIp(ip);
    }

    /**
     * 获取IP地址
     */
    public static String getHostIp() {
        try {
            return InetAddress.getLocalHost().getHostAddress();
        } catch (UnknownHostException e) {
            log.error("获取IP地址异常", e);
        }
        return "127.0.0.1";
    }
}
