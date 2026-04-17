package com.lz.module.system.dal.mysql.tenant;

import com.lz.framework.common.pojo.PageResult;
import com.lz.framework.mybatis.core.mapper.BaseMapperX;
import com.lz.framework.mybatis.core.query.LambdaQueryWrapperX;
import com.lz.module.system.controller.admin.tenant.vo.tenant.TenantPageReqVO;
import com.lz.module.system.dal.dataobject.tenant.TenantDO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * 租户 Mapper
 *
 * @author 荔枝源码
 */
@Mapper
public interface TenantMapper extends BaseMapperX<TenantDO> {

    default PageResult<TenantDO> selectPage(TenantPageReqVO reqVO) {
        return selectPage(reqVO, new LambdaQueryWrapperX<TenantDO>()
                .eqIfPresent(TenantDO::getId, reqVO.getId())
                .likeIfPresent(TenantDO::getName, reqVO.getName())
                .eqIfPresent(TenantDO::getCode, reqVO.getCode())
                .likeIfPresent(TenantDO::getContactName, reqVO.getContactName())
                .eqIfPresent(TenantDO::getContactMobile, reqVO.getContactMobile())
                .eqIfPresent(TenantDO::getIndustry, reqVO.getIndustry())
                .eqIfPresent(TenantDO::getType, reqVO.getType())
                .eqIfPresent(TenantDO::getStatus, reqVO.getStatus())
                .eqIfPresent(TenantDO::getAddressCode, reqVO.getAddressCode())
                .betweenIfPresent(TenantDO::getCreateTime, reqVO.getCreateTime())
                .orderByDesc(TenantDO::getId));
    }

    default TenantDO selectByName(String name) {
        return selectOne(TenantDO::getName, name);
    }

    default TenantDO selectByWebsite(String website) {
        return selectOne(TenantDO::getWebsite, website);
    }

//    default Long selectCountByPackageId(Long packageId) {
//        return selectCount(TenantDO::getPackageId, packageId);
//    }
//
//    default List<TenantDO> selectListByPackageId(Long packageId) {
//        return selectList(TenantDO::getPackageId, packageId);
//    }

    default List<TenantDO> selectListByStatus(Integer status) {
        return selectList(TenantDO::getStatus, status);
    }

    /**
     * 根据租户套餐编号，查询租户
     *
     * @return 租户列表
     */
    default TenantDO selectByCode(String tenantCode) {
        return selectOne(TenantDO::getCode, tenantCode);
    }


    /**
     * 根据租户套餐编号，查询租户列表
     *
     * @return 租户列表
     */
    default List<TenantDO> selectTenantByCodes(List<String> tenantCodes) {
        return selectList(TenantDO::getCode, tenantCodes);
    }
}
