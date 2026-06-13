package com.lz.framework.ip.core.utils;

import cn.hutool.core.io.resource.ResourceUtil;
import com.lz.framework.ip.core.Area;
import lombok.extern.slf4j.Slf4j;
import org.lionsoul.ip2region.xdb.Searcher;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 * IP 工具类
 * <p>
 * IP 数据源使用 ip2region.xdb 完整版，返回文本格式如 "国家|区域|城市|ISP|国家代码"
 *
 * @author wanglhup
 */
@Slf4j
public class IPUtils {

    /**
     * 初始化 SEARCHER
     */
    @SuppressWarnings("InstantiationOfUtilityClass")
    private final static IPUtils INSTANCE = new IPUtils();

    /**
     * IP 查询器，启动加载到内存中
     */
    private static Searcher SEARCHER;

    /**
     * 完整版 xdb 的分隔符
     */
    private static final String REGION_SEPARATOR = "\\|";

    /**
     * 私有化构造
     */
    private IPUtils() {
        try {
            long now = System.currentTimeMillis();
            byte[] bytes = ResourceUtil.readBytes("ip2region.xdb");
            SEARCHER = Searcher.newWithBuffer(bytes);
            log.info("启动加载 IPUtils 成功，耗时 ({} 毫秒)", System.currentTimeMillis() - now);
        } catch (IOException e) {
            log.error("启动加载 IPUtils 失败", e);
        }
    }

    /**
     * 查询 IP 对应的地区编码
     *
     * @param ip IP 地址，格式为 127.0.0.1
     * @return 地区编码，通过地区名称匹配
     */
    public static String getAreaCode(String ip) {
        try {
            String result = SEARCHER.search(ip.trim());
            String[] parts = result.split(REGION_SEPARATOR);
            for (int i = 2; i >= 0; i--) {
                if (parts.length > i) {
                    String name = parts[i].trim();
                    if (!name.isEmpty() && !name.equals("0")) {
                        Area area = AreaUtils.parseArea(name);
                        if (area != null) {
                            return area.getCode();
                        }
                    }
                }
            }
        } catch (Exception e) {
            log.error("查询IP地区编码失败: {}", ip, e);
        }
        return null;
    }

    /**
     * 查询 IP 对应的地区编码
     *
     * @param ip IP 地址的时间戳，格式参考{@link Searcher#checkIP(String)} 的返回
     * @return 地区编码
     */
    public static String getAreaCode(long ip) {
        try {
            String result = SEARCHER.search(ip);
            String[] parts = result.split(REGION_SEPARATOR);
            for (int i = 2; i >= 0; i--) {
                if (parts.length > i) {
                    String name = parts[i].trim();
                    if (!name.isEmpty() && !name.equals("0")) {
                        Area area = AreaUtils.parseArea(name);
                        if (area != null) {
                            return area.getCode();
                        }
                    }
                }
            }
        } catch (Exception e) {
            log.error("查询IP地区编码失败: {}", ip, e);
        }
        return null;
    }

    /**
     * 查询 IP 对应的地区编号（兼容旧接口）
     *
     * @param ip IP 地址，格式为 127.0.0.1
     * @return 地区编号
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
     * @param ip IP 地址的时间戳，格式参考{@link Searcher#checkIP(String)} 的返回
     * @return 地区编号
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
     *
     * @param ip IP 地址，格式为 127.0.0.1
     * @return 地区
     */
    public static Area getArea(String ip) {
        try {
            String result = SEARCHER.search(ip.trim());
            String[] parts = result.split(REGION_SEPARATOR);

            // 只取前3段：国家|省份|城市，跳过0，去掉连续重复
            List<String> validNames = new ArrayList<>();
            for (int i = 0; i < Math.min(parts.length, 3); i++) {
                String name = parts[i].trim();
                if (!name.isEmpty() && !name.equals("0")) {
                    if (validNames.isEmpty() || !name.equals(validNames.getLast())) {
                        validNames.add(name);
                    }
                }
            }

            if (validNames.isEmpty()) {
                log.info("IP={}, 前3段全为0或空, 返回未知", ip);
                return new Area(null, "未知", 0, null, new ArrayList<>());
            }

            Area leaf = new Area(null, validNames.getLast(), 0, null, new ArrayList<>());
            // 构建 parent 链：正序遍历，前面的是后面的 parent
            Area parent = null;
            for (int i = 0; i < validNames.size() - 1; i++) {
                Area node = new Area(null, validNames.get(i), 0, parent, new ArrayList<>());
                parent = node;
            }
            leaf.setParent(parent);
            return leaf;
        } catch (Exception e) {
            //如果是本地
            if (ip.equals("0:0:0:0:0:0:0:1")) {
                return new Area(null, "本地", 0, null, new ArrayList<>());
            }
            log.error("查询IP地区失败: {}", ip);
            return new Area(null, "未知", 0, null, new ArrayList<>());
        }
    }

    /**
     * 查询 IP 对应的地区
     *
     * @param ip IP 地址的时间戳，格式参考{@link Searcher#checkIP(String)} 的返回
     * @return 地区
     */
    public static Area getArea(long ip) {
        return getArea(String.valueOf(ip));
    }

    /**
     * 获取 IP 地址对应的地址信息
     *
     * @param ip IP 地址，格式为 127.0.0.1
     * @return 地址信息
     */
    public static String getIpAddr(String ip) {
        Area area = IPUtils.getArea(ip);
        if (area.getCode() == null) {
            List<String> names = new ArrayList<>();
            Area current = area;
            while (current != null) {
                names.add(current.getName());
                current = current.getParent();
            }
            Collections.reverse(names);
            return String.join(" ", names);
        }
        return AreaUtils.format(area.getCode());
    }
}
