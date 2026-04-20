package com.lz.module.system.dal.mysql.area;

import com.lz.framework.mybatis.core.mapper.BaseMapperX;
import com.lz.framework.mybatis.core.query.LambdaQueryWrapperX;
import com.lz.module.system.controller.admin.ip.vo.AreaListReqVO;
import com.lz.module.system.dal.dataobject.area.AreaDO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * 地区信息 Mapper
 *
 * @author 荔枝
 */
@Mapper
public interface AreaMapper extends BaseMapperX<AreaDO> {

    default List<AreaDO> selectList(AreaListReqVO reqVO) {
        return selectList(new LambdaQueryWrapperX<AreaDO>()
                .likeIfPresent(AreaDO::getName, reqVO.getName())
                .eqIfPresent(AreaDO::getPostalCode, reqVO.getPostalCode())
                .eqIfPresent(AreaDO::getParentId, reqVO.getParentId())
                .eqIfPresent(AreaDO::getLevel, reqVO.getLevel())
                .betweenIfPresent(AreaDO::getCreateTime, reqVO.getCreateTime())
                .orderByDesc(AreaDO::getId));
    }

	default AreaDO selectByParentIdAndName(Long parentId, String name) {
	    return selectOne(AreaDO::getParentId, parentId, AreaDO::getName, name);
	}

    default Long selectCountByParentId(Long parentId) {
        return selectCount(AreaDO::getParentId, parentId);
    }

}