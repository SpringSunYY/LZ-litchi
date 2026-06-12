package com.lz.framework.common.biz.infra.area;

import com.lz.framework.common.biz.infra.area.dto.AreaSimpleVO;

import java.util.List;

/**
 * 地区信息 Common API 接口
 *
 * 提供给其他模块调用的地区信息服务接口
 *
 * @author 荔枝
 */
public interface AreaCommonApi {

    /**
     * 获取所有地区列表
     *
     * @return 地区列表
     */
    List<AreaSimpleVO> getAllAreas();

    /**
     * 根据编码获取地区信息
     *
     * @param code 地区编码
     * @return 地区信息
     */
    AreaSimpleVO getAreaByCode(String code);

}
