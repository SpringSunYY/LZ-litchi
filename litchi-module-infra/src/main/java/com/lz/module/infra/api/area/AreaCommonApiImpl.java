package com.lz.module.infra.api.area;

import com.lz.framework.common.biz.infra.area.AreaCommonApi;
import com.lz.framework.common.biz.infra.area.dto.AreaSimpleVO;
import com.lz.framework.common.util.object.BeanUtils;
import com.lz.module.infra.constants.RedisKeyConstants;
import com.lz.module.infra.controller.admin.ip.vo.AreaListReqVO;
import com.lz.module.infra.dal.dataobject.area.AreaDO;
import com.lz.module.infra.dal.mysql.area.AreaMapper;
import com.lz.module.infra.service.area.AreaService;
import jakarta.annotation.Resource;
import lombok.extern.slf4j.Slf4j;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 地区信息 Common API 实现类
 *
 * @author 荔枝
 */
@Service
@Slf4j
public class AreaCommonApiImpl implements AreaCommonApi {

    @Resource
    private AreaService areaService;

    @Override
    public List<AreaSimpleVO> getAllAreas() {
        List<AreaDO> areaDOList = areaService.getAreaList(new AreaListReqVO());
        return BeanUtils.toBean(areaDOList, AreaSimpleVO.class);
    }

    @Override
    public AreaSimpleVO getAreaByCode(String code) {
        AreaDO areaDO = areaService.selectAreaByCode(code);
        if (areaDO == null) {
            return null;
        }
        return BeanUtils.toBean(areaDO, AreaSimpleVO.class);
    }
}
