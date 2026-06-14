package com.lz.framework.ip.core.template;

import cn.hutool.core.io.resource.ResourceUtil;
import com.lz.framework.ip.core.Area;
import com.lz.framework.ip.core.constants.IpConstants;
import com.lz.framework.ip.core.utils.AreaUtils;
import lombok.extern.slf4j.Slf4j;
import org.lionsoul.ip2region.xdb.Searcher;

import java.io.IOException;
import java.util.ArrayList;

/**
 * ip2region模式IP提供者（模板方法模式实现）
 *
 * @author YY
 */
@Slf4j
public class Ip2RegionTemplate extends IpTemplate {

    public Ip2RegionTemplate() {
        super();
    }

    @Override
    protected void init() {
        try {
            long now = System.currentTimeMillis();
            byte[] bytes = ResourceUtil.readBytes("ip2region.xdb");
            this.searcher = Searcher.newWithBuffer(bytes);
            log.info("Ip2RegionTemplate 初始化成功，耗时 ({} 毫秒)", System.currentTimeMillis() - now);
        } catch (IOException e) {
            log.error("Ip2RegionTemplate 初始化失败", e);
        }
    }

    /**
     * 查询IP对应的region数据
     */
    protected String getRegionData(String ip) {
        try {
            return searcher.search(ip.trim());
        } catch (Exception e) {
            log.error("查询IP地区失败: {}", ip, e);
            return null;
        }
    }

    @Override
    protected Area doQuery(String ip) {
        String regionData = getRegionData(ip);
        if (regionData == null) {
            return null;
        }
        return parseAreaFromRegionData(regionData);
    }

    public Area getAreaByLong(long ip) {
        try {
            String result = searcher.search(ip);
            return parseAreaFromRegionData(result);
        } catch (Exception e) {
            log.error("查询IP地区失败: {}", ip, e);
            return new Area(null, IpConstants.UNKNOWN, 0, null, new ArrayList<>());
        }
    }

    public String getAreaCodeByLong(long ip) {
        try {
            String result = searcher.search(ip);
            String[] parts = result.split(IpConstants.REGION_SEPARATOR);
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
}
