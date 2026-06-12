package com.lz.module.infra.dal.mysql.area;

import com.lz.framework.mybatis.core.mapper.BaseMapperX;
import com.lz.framework.mybatis.core.query.LambdaQueryWrapperX;
import com.lz.module.infra.controller.admin.ip.vo.AreaListReqVO;
import com.lz.module.infra.dal.dataobject.area.AreaDO;
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
                .eqIfPresent(AreaDO::getCode, reqVO.getCode())
                .likeIfPresent(AreaDO::getName, reqVO.getName())
                .eqIfPresent(AreaDO::getPostalCode, reqVO.getPostalCode())
                .eqIfPresent(AreaDO::getParentCode, reqVO.getParentCode())
                .eqIfPresent(AreaDO::getLevel, reqVO.getLevel())
                .betweenIfPresent(AreaDO::getCreateTime, reqVO.getCreateTime())
                .orderByAsc(AreaDO::getSortNum));
    }

    default AreaDO selectByParentCodeAndName(String parentCode, String name) {
        return selectOne(AreaDO::getParentCode, parentCode, AreaDO::getName, name);
    }

    default Long selectCountByParentCode(String parentCode) {
        return selectCount(AreaDO::getParentCode, parentCode);
    }

    default AreaDO selectByCode(String code) {
        return selectOne(AreaDO::getCode, code);
    }
}
