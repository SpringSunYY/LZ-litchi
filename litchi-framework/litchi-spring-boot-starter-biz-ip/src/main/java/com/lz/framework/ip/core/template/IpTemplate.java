package com.lz.framework.ip.core.template;

import com.lz.framework.ip.core.Area;
import com.lz.framework.ip.core.config.IpProperties;
import com.lz.framework.ip.core.constants.IpConstants;
import com.lz.framework.ip.core.utils.AreaUtils;
import lombok.extern.slf4j.Slf4j;
import org.lionsoul.ip2region.xdb.Searcher;

import java.util.ArrayList;

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
     */
    public Area getArea(String ip) {
        if (internalIp(ip)) {
            return new Area(null, IpConstants.LOCAL, 0, null, new ArrayList<>());
        }
        String regionData = getRegionData(ip);
        if (regionData == null) {
            return null;
        }
        return parseAreaFromRegionData(regionData);
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
