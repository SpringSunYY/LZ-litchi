package com.lz.module.crm.dal.mysql.business;

import com.lz.framework.mybatis.core.mapper.BaseMapperX;
import com.lz.module.crm.dal.dataobject.business.CrmBusinessStatusDO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * 商机状态 Mapper
 *
 * @author ljlleo
 */
@Mapper
public interface CrmBusinessStatusMapper extends BaseMapperX<CrmBusinessStatusDO> {

    default int deleteByTypeId(Long typeId) {
        return delete(CrmBusinessStatusDO::getTypeId, typeId);
    }

    default List<CrmBusinessStatusDO> selectListByTypeId(Long typeId) {
        return selectList(CrmBusinessStatusDO::getTypeId, typeId);
    }

    default CrmBusinessStatusDO selectByTypeIdAndId(Long statusTypeId, Long statusId) {
        return selectOne(CrmBusinessStatusDO::getTypeId, statusTypeId,
                CrmBusinessStatusDO::getId, statusId);
    }

}
