package com.lz.module.system.service.area;

import com.lz.module.system.controller.admin.ip.vo.AreaListReqVO;
import com.lz.module.system.controller.admin.ip.vo.AreaNodeRespVO;
import com.lz.module.system.controller.admin.ip.vo.AreaSaveReqVO;
import com.lz.module.system.dal.dataobject.area.AreaDO;
import jakarta.validation.Valid;

import java.util.List;

/**
 * 地区信息 Service 接口
 *
 * @author 荔枝
 */
public interface AreaService {

    /**
     * 创建地区信息
     *
     * @param createReqVO 创建信息
     * @return 编号
     */
    Long createArea(@Valid AreaSaveReqVO createReqVO);

    /**
     * 更新地区信息
     *
     * @param updateReqVO 更新信息
     */
    void updateArea(@Valid AreaSaveReqVO updateReqVO);

    /**
     * 删除地区信息
     *
     * @param id 编号
     */
    void deleteArea(Long id);


    /**
     * 获得地区信息
     *
     * @param id 编号
     * @return 地区信息
     */
    AreaDO getArea(Long id);

    /**
     * 获得地区信息列表
     *
     * @param listReqVO 查询条件
     * @return 地区信息列表
     */
    List<AreaDO> getAreaList(AreaListReqVO listReqVO);

    /**
     * 获得地区树
     *
     * @return 地区树
     */
    List<AreaNodeRespVO> getAreaTree(@Valid AreaListReqVO req);

}