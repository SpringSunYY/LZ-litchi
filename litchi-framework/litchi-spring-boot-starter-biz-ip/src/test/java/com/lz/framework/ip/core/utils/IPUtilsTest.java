package com.lz.framework.ip.core.utils;

import com.lz.framework.common.biz.infra.area.AreaCommonApi;
import com.lz.framework.common.biz.infra.area.dto.AreaSimpleVO;
import com.lz.framework.ip.core.Area;
import com.lz.framework.ip.core.config.IpProperties;
import com.lz.framework.ip.core.constants.AreaConstants;
import com.lz.framework.ip.core.constants.IpConstants;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;
import org.lionsoul.ip2region.xdb.Searcher;

import java.util.ArrayList;
import java.util.List;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;


/**
 * {@link IPUtils} 的单元测试
 *
 * @author wanglhup
 */
public class IPUtilsTest {

    /**
     * 初始化模拟数据
     */
    @BeforeAll
    public static void setup() {
        // 手动设置 mock 数据用于测试
        AreaCommonApi mockApi = createMockAreaCommonApi();
        IpProperties ipProperties = new IpProperties();
        ipProperties.setArea(AreaConstants.DATABASE);
        ipProperties.setIp(IpConstants.IP2_REGION);
        AreaUtils.init(mockApi, ipProperties);
        AreaUtils.initAreasByDatabase();
        IPUtils.init(ipProperties);
    }

    /**
     * 创建模拟的地区数据
     */
    private static AreaCommonApi createMockAreaCommonApi() {
        return new AreaCommonApi() {
            @Override
            public List<AreaSimpleVO> getAllAreas() {
                List<AreaSimpleVO> areas = new ArrayList<>();
                // 中国
                areas.add(createArea(1L, "1", "中国", "0", 1));
                // 湖北省
                areas.add(createArea(2L, "420000", "湖北省", "1", 2));
                // 襄阳市
                areas.add(createArea(3L, "420600", "襄阳市", "420000", 3));
                // 宜春市
                areas.add(createArea(4L, "360900", "宜春市", "360000", 3));
                // 江西省
                areas.add(createArea(5L, "360000", "江西省", "1", 2));
                return areas;
            }

            @Override
            public AreaSimpleVO getAreaByCode(String code) {
                return null;
            }
        };
    }

    private static AreaSimpleVO createArea(Long id, String code, String name, String parentCode, Integer level) {
        AreaSimpleVO vo = new AreaSimpleVO();
        vo.setId(id);
        vo.setCode(code);
        vo.setName(name);
        vo.setParentCode(parentCode);
        vo.setLevel(level);
        return vo;
    }

    @Test
    public void testGetAreaCode_string() {
        // 120.202.4.0|120.202.4.255|420600 (襄阳市)
        String areaCode = IPUtils.getAreaCode("120.202.4.50");
        assertEquals("420600", areaCode);
    }

    @Test
    public void testGetAreaCode_long() throws Exception {
        // 120.203.123.0|120.203.133.255|360900 (宜春市)
        long ip = Searcher.checkIP("120.203.123.250");
        String areaCode = IPUtils.getAreaCode(ip);
        assertEquals("360900", areaCode);
    }

    @Test
    public void testGetAreaId_string() {
        // 120.202.4.0|120.202.4.255|420600 (襄阳市)
        Integer areaId = IPUtils.getAreaId("120.202.4.50");
        assertEquals(420600, areaId);
    }

    @Test
    public void testGetAreaId_long() throws Exception {
        // 120.203.123.0|120.203.133.255|360900 (宜春市)
        long ip = Searcher.checkIP("120.203.123.250");
        Integer areaId = IPUtils.getAreaId(ip);
        assertEquals(360900, areaId);
    }

    @Test
    public void testGetArea_string() {
        // 120.202.4.0|120.202.4.255|420600 (襄阳市)
        Area area = IPUtils.getArea("120.202.4.50");
        assertNotNull(area);
        assertEquals("襄阳市", area.getName());
    }

    @Test
    public void testGetArea_long() throws Exception {
        // 120.203.123.0|120.203.133.255|360900 (宜春市)
        long ip = Searcher.checkIP("120.203.123.250");
        Area area = IPUtils.getArea(ip);
        assertEquals("宜春市", area.getName());
    }

    @Test
    public void testGetAreaWithHierarchy() {
        // 测试获取 IP 属地的完整层级结构
        Area city = IPUtils.getArea("223.104.79.163"); // 襄阳市
        System.out.println("city = " + city);
        assertNotNull(city);
        System.out.println("城市: " + city.getName());
//        assertEquals("襄阳市", city.getName());

        // 获取上级（省份）
        Area province = city.getParent();
        assertNotNull(province);
        System.out.println("省份: " + province.getName());
//        assertEquals("湖北省", province.getName());

        // 获取上级（国家）
        Area country = province.getParent();
        assertNotNull(country);
        System.out.println("国家: " + country.getName());
//        assertEquals("中国", country.getName());
    }

}
