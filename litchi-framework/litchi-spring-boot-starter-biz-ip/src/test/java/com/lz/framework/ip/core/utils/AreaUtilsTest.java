package com.lz.framework.ip.core.utils;


import com.lz.framework.common.biz.infra.area.AreaCommonApi;
import com.lz.framework.common.biz.infra.area.dto.AreaSimpleVO;
import com.lz.framework.ip.core.Area;
import com.lz.framework.ip.core.config.IpProperties;
import com.lz.framework.ip.core.constants.AreaConstants;
import com.lz.framework.ip.core.enums.AreaTypeEnum;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;

import java.util.ArrayList;
import java.util.List;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

/**
 * {@link AreaUtils} 的单元测试
 *
 * @author 荔枝源码
 */
public class AreaUtilsTest {

    @BeforeAll
    public static void setup() {
        // 手动设置 mock 数据用于测试
        AreaCommonApi mockApi = createMockAreaCommonApi();
        IpProperties ipProperties = new IpProperties();
        ipProperties.setArea(AreaConstants.DATABASE);
        AreaUtils.init(mockApi, ipProperties);
        AreaUtils.initAreasByDatabase();
    }

    /**
     * 创建模拟的地区数据
     */
    private static AreaCommonApi createMockAreaCommonApi() {
        return new AreaCommonApi() {
            @Override
            public List<AreaSimpleVO> getAllAreas() {
                List<AreaSimpleVO> areas = new ArrayList<>();
                // 全球
                areas.add(createArea(0L, "0", "全球", null, 0));
                // 中国
                areas.add(createArea(1L, "1", "中国", "0", 1));
                // 北京市
                areas.add(createArea(2L, "110000", "北京市", "1", 2));
                areas.add(createArea(3L, "110100", "北京市", "110000", 3));
                // 朝阳区
                areas.add(createArea(4L, "110105", "朝阳区", "110100", 4));
                // 河北省
                areas.add(createArea(5L, "130000", "河北省", "1", 2));
                // 蒙古国
                areas.add(createArea(6L, "2", "蒙古", "0", 1));
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
    public void testGetArea() {
        // 调用：北京市（行政编码 110100）
        Area area = AreaUtils.getArea("110100");
        // 断言
        assertNotNull(area);
        assertEquals(area.getCode(), "110100");
        assertEquals(area.getName(), "北京市");
        assertEquals(area.getType(), AreaTypeEnum.CITY.getType());
        assertNotNull(area.getParent());
        assertEquals(area.getParent().getCode(), "110000");
    }

    @Test
    public void testFormat() {
        // 格式化朝阳区（行政编码 110105）
        assertEquals(AreaUtils.format("110105"), "北京市 北京市 朝阳区");
        // 格式化中国（行政编码 1）
        assertEquals(AreaUtils.format("1"), "中国");
    }

}
