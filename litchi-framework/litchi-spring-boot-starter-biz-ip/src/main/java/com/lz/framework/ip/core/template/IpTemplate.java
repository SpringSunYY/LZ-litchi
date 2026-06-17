package com.lz.framework.ip.core.template;

import cn.hutool.core.util.StrUtil;
import com.lz.framework.ip.core.Area;
import com.lz.framework.ip.core.config.IpProperties;
import com.lz.framework.ip.core.constants.IpConstants;
import com.lz.framework.ip.core.utils.AreaUtils;
import lombok.extern.slf4j.Slf4j;
import org.lionsoul.ip2region.xdb.Searcher;

import java.util.ArrayList;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/**
 * IP信息提供者模板（模板方法模式）
 * <p>
 * 定义IP查询的算法骨架，子类实现具体的数据获取逻辑
 *
 * @author YY
 */
@Slf4j
public abstract class IpTemplate {

    /**
     * IP 查询器（ip2region模式使用）
     */
    protected Searcher searcher;

    /**
     * IP 配置
     */
    protected IpProperties ipProperties;

    /**
     * IP缓存
     */
    private static final ConcurrentHashMap<String, CacheEntry> IP_CACHE = new ConcurrentHashMap<>();

    /**
     * 模板类型注册表：类型标识 → 模板实例工厂
     */
    private static final Map<String, TemplateFactory> TEMPLATE_FACTORIES = new ConcurrentHashMap<>();

    /**
     * 模板工厂接口
     */
    @FunctionalInterface
    public interface TemplateFactory {
        IpTemplate create(IpProperties ipProperties);
    }

    /**
     * 注册IP模板
     *
     * @param type     模板类型标识（如 "ipJson"、"ip2region"）
     * @param factory  模板实例工厂
     */
    public static void registerTemplate(String type, TemplateFactory factory) {
        TEMPLATE_FACTORIES.put(type, factory);
    }

    /**
     * 获取指定类型的模板实例
     *
     * @param type          模板类型
     * @param ipProperties  配置参数
     * @return 模板实例，如果类型未注册则返回 null
     */
    protected IpTemplate getTemplate(String type, IpProperties ipProperties) {
        TemplateFactory factory = TEMPLATE_FACTORIES.get(type);
        if (factory != null) {
            return factory.create(ipProperties);
        }
        log.warn("未找到类型为 [{}] 的IP模板，请检查是否已注册", type);
        return null;
    }

    static {
        registerTemplate(IpConstants.IP_JSON, IpJsonTemplate::new);
        registerTemplate(IpConstants.IP2_REGION, Ip2RegionTemplate::new);
    }

    /**
     * 定时清理过期缓存的调度器（懒加载：首次缓存数据时才启动）
     */
    private static volatile ScheduledExecutorService cleanupExecutor;

    /**
     * 清理任务是否已启动
     */
    private static final AtomicBoolean cleanupStarted = new AtomicBoolean(false);

    /**
     * 确保清理任务已启动（首次缓存数据时调用）
     */
    private static void ensureCleanupStarted() {
        if (cleanupStarted.compareAndSet(false, true)) {
            cleanupExecutor = Executors.newSingleThreadScheduledExecutor(r -> {
                Thread t = new Thread(r, "ip-cache-cleanup");
                t.setDaemon(true);
                return t;
            });
            // 每分钟清理一次过期缓存
            cleanupExecutor.scheduleAtFixedRate(() -> {
                try {
                    if (IP_CACHE.isEmpty()) {
                        return;
                    }
                    long now = System.currentTimeMillis();
                    IP_CACHE.entrySet().removeIf(entry -> entry.getValue().expireTime < now);
                } catch (Exception e) {
                    log.warn("清理IP缓存失败", e);
                }
            }, 60, 60, TimeUnit.SECONDS);
        }
    }

    /**
     * 缓存条目
     */
    private static class CacheEntry {
        final Area area;
        final long expireTime;

        CacheEntry(Area area, long expireTime) {
            this.area = area;
            this.expireTime = expireTime;
        }
    }

    /**
     * 初始化
     */
    public IpTemplate() {
        init();
    }

    /**
     * 初始化（子类可覆盖）
     */
    protected void init() {
    }

    /**
     * ========== 模板方法 ==========
     */

    /**
     * 获取IP对应的地区（模板方法）
     * 流程：缓存 → 当前模式查询 → 降级（可选） → 缓存结果
     */
    public Area getArea(String ip) {
        if (internalIp(ip)) {
            return new Area(null, IpConstants.LOCAL, 0, null, new ArrayList<>());
        }

        // 1. 先走缓存
        if (isCacheEnabled()) {
            Area cached = getCachedArea(ip);
            if (cached != null) {
                return cached;
            }
        }

        // 2. 当前模式查询
        Area area = doQuery(ip);

        // 3. 当前模式失败，尝试降级
        if (area == null && shouldFallback()) {
            area = doFallback(ip);
        }

        // 4. 结果写入缓存
        if (area != null) {
            cacheArea(ip, area);
        }

        return area;
    }

    /**
     * 执行实际的IP查询（子类实现）
     */
    protected abstract Area doQuery(String ip);

    /**
     * 执行降级查询（子类可覆盖）
     * 默认实现：根据配置创建降级模板并执行查询
     */
    protected Area doFallback(String ip) {
        if (ipProperties == null || ipProperties.getIp() == null) {
            return null;
        }
        String rollbackType = ipProperties.getIp().getRollback();
        if (StrUtil.isBlank(rollbackType)) {
            return null;
        }
        String currentType = ipProperties.getIp().getType();
        if (rollbackType.equals(currentType)) {
            return null;
        }
        log.info("[{}] 查询失败，降级到 [{}]", currentType, rollbackType);
        try {
            IpTemplate fallbackTemplate = getTemplate(rollbackType, ipProperties);
            if (fallbackTemplate != null) {
                return fallbackTemplate.doQuery(ip);
            }
        } catch (Exception e) {
            log.error("降级到 [{}] 失败", rollbackType, e);
        }
        return null;
    }

    /**
     * 检查是否应该降级
     * 默认实现：当配置了 rollback 且与当前模式不同时返回 true
     */
    protected boolean shouldFallback() {
        if (ipProperties == null || ipProperties.getIp() == null) {
            return false;
        }
        String rollback = ipProperties.getIp().getRollback();
        if (StrUtil.isBlank(rollback)) {
            return false;
        }
        String currentType = ipProperties.getIp().getType();
        return !rollback.equals(currentType);
    }

    /**
     * 检查是否启用缓存
     */
    protected boolean isCacheEnabled() {
        return ipProperties != null
                && ipProperties.getIp() != null
                && Boolean.TRUE.equals(ipProperties.getIp().getCache());
    }

    /**
     * 获取缓存时间（秒）
     */
    protected int getCacheTimeSeconds() {
        if (ipProperties != null && ipProperties.getIp() != null && ipProperties.getIp().getCacheTime() != null) {
            return ipProperties.getIp().getCacheTime();
        }
        return 60;
    }

    /**
     * 从缓存获取Area
     */
    protected Area getCachedArea(String ip) {
        CacheEntry cached = IP_CACHE.get(ip);
        if (cached != null && cached.expireTime > System.currentTimeMillis()) {
            return cached.area;
        }
        return null;
    }

    /**
     * 缓存Area
     */
    protected void cacheArea(String ip, Area area) {
        if (area != null && isCacheEnabled()) {
            ensureCleanupStarted();
            int cacheTime = getCacheTimeSeconds();
            IP_CACHE.put(ip, new CacheEntry(area, System.currentTimeMillis() + cacheTime * 1000L));
        }
    }

    /**
     * 获取IP对应的地区（long版本）
     */
    public Area getArea(long ip) {
        if (this instanceof Ip2RegionTemplate) {
            return ((Ip2RegionTemplate) this).getAreaByLong(ip);
        }
        return new Area(null, IpConstants.UNKNOWN, 0, null, new ArrayList<>());
    }

    /**
     * 获取IP对应的地区编码
     */
    public String getAreaCode(String ip) {
        Area area = getArea(ip);
        if (area == null) {
            return null;
        }
        return AreaUtils.parseArea(area.getName()) != null
                ? AreaUtils.parseArea(area.getName()).getCode()
                : null;
    }

    /**
     * 获取IP对应的地区编码（long版本）
     */
    public String getAreaCode(long ip) {
        if (this instanceof Ip2RegionTemplate) {
            return ((Ip2RegionTemplate) this).getAreaCodeByLong(ip);
        }
        return null;
    }

    /**
     * 获取IP地址对应的格式化地址
     */
    public String getIpAddr(String ip) {
        if (internalIp(ip)) {
            return IpConstants.LOCAL;
        }
        Area area = getArea(ip);
        if (area == null) {
            return IpConstants.UNKNOWN;
        }
        return buildFormattedAddress(area);
    }

    /**
     * 检查是否为内部IP地址
     */
    public boolean internalIp(String ip) {
        return internalIp(textToNumericFormatV4(ip)) || "127.0.0.1".equals(ip) || "0:0:0:0:0:0:0:1".equals(ip);
    }

    /**
     * ========== 子类实现的方法 ==========
     */

    /**
     * 获取地区数据（子类实现）
     */
    protected abstract String getRegionData(String ip);

    /**
     * ========== 公共工具方法 ==========
     */

    /**
     * 检查是否为内部IP地址（byte数组版本）
     */
    protected boolean internalIp(byte[] addr) {
        if (addr == null || addr.length < 2) {
            return true;
        }
        final byte b0 = addr[0];
        final byte b1 = addr[1];
        // 10.x.x.x/8
        final byte SECTION_1 = 0x0A;
        // 172.16.x.x/12
        final byte SECTION_2 = (byte) 0xAC;
        final byte SECTION_3 = (byte) 0x10;
        final byte SECTION_4 = (byte) 0x1F;
        // 192.168.x.x/16
        final byte SECTION_5 = (byte) 0xC0;
        final byte SECTION_6 = (byte) 0xA8;
        if (b0 == SECTION_1) {
            return true;
        }
        if (b0 == SECTION_2 && b1 >= SECTION_3 && b1 <= SECTION_4) {
            return true;
        }
        if (b0 == SECTION_5 && b1 == SECTION_6) {
            return true;
        }
        return false;
    }

    /**
     * 将IPv4地址转换成字节
     */
    protected byte[] textToNumericFormatV4(String text) {
        if (text == null || text.isEmpty()) {
            return null;
        }
        byte[] bytes = new byte[4];
        String[] elements = text.split("\\.", -1);
        try {
            long l;
            int i;
            switch (elements.length) {
                case 1:
                    l = Long.parseLong(elements[0]);
                    if ((l < 0L) || (l > 4294967295L)) {
                        return null;
                    }
                    bytes[0] = (byte) (int) (l >> 24 & 0xFF);
                    bytes[1] = (byte) (int) ((l & 0xFFFFFF) >> 16 & 0xFF);
                    bytes[2] = (byte) (int) ((l & 0xFFFF) >> 8 & 0xFF);
                    bytes[3] = (byte) (int) (l & 0xFF);
                    break;
                case 2:
                    l = Integer.parseInt(elements[0]);
                    if ((l < 0L) || (l > 255L)) {
                        return null;
                    }
                    bytes[0] = (byte) (int) (l & 0xFF);
                    l = Integer.parseInt(elements[1]);
                    if ((l < 0L) || (l > 16777215L)) {
                        return null;
                    }
                    bytes[1] = (byte) (int) (l >> 16 & 0xFF);
                    bytes[2] = (byte) (int) ((l & 0xFFFF) >> 8 & 0xFF);
                    bytes[3] = (byte) (int) (l & 0xFF);
                    break;
                case 3:
                    for (i = 0; i < 2; ++i) {
                        l = Integer.parseInt(elements[i]);
                        if ((l < 0L) || (l > 255L)) {
                            return null;
                        }
                        bytes[i] = (byte) (int) (l & 0xFF);
                    }
                    l = Integer.parseInt(elements[2]);
                    if ((l < 0L) || (l > 65535L)) {
                        return null;
                    }
                    bytes[2] = (byte) (int) (l >> 8 & 0xFF);
                    bytes[3] = (byte) (int) (l & 0xFF);
                    break;
                case 4:
                    for (i = 0; i < 4; ++i) {
                        l = Integer.parseInt(elements[i]);
                        if ((l < 0L) || (l > 255L)) {
                            return null;
                        }
                        bytes[i] = (byte) (int) (l & 0xFF);
                    }
                    break;
                default:
                    return null;
            }
        } catch (NumberFormatException e) {
            return null;
        }
        return bytes;
    }

    /**
     * 从地区数据中解析Area
     */
    protected Area parseAreaFromRegionData(String regionData) {
        String[] parts = regionData.split(IpConstants.REGION_SEPARATOR);
        ArrayList<String> validNames = new ArrayList<>();
        for (int i = 0; i < Math.min(parts.length, 3); i++) {
            String name = parts[i].trim();
            if (!name.isEmpty() && !name.equals("0")) {
                if (validNames.isEmpty() || !name.equals(validNames.getLast())) {
                    validNames.add(name);
                }
            }
        }
        if (validNames.isEmpty()) {
            return new Area(null, IpConstants.UNKNOWN, 0, null, new ArrayList<>());
        }
        Area leaf = new Area(null, validNames.getLast(), 0, null, new ArrayList<>());
        Area parent = null;
        for (int i = 0; i < validNames.size() - 1; i++) {
            parent = new Area(null, validNames.get(i), 0, parent, new ArrayList<>());
        }
        leaf.setParent(parent);
        return leaf;
    }

    /**
     * 构建格式化地址
     */
    protected String buildFormattedAddress(Area area) {
        if (area == null) {
            return IpConstants.UNKNOWN;
        }
        if (area.getCode() != null) {
            String formatted = AreaUtils.format(area.getCode());
            if (formatted != null) {
                return formatted;
            }
        }
        ArrayList<String> names = new ArrayList<>();
        Area current = area;
        while (current != null) {
            names.addFirst(current.getName());
            current = current.getParent();
        }
        return String.join(" ", names);
    }
}
