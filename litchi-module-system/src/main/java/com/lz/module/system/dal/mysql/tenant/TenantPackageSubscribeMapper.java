package com.lz.module.system.dal.mysql.tenant;

import com.lz.framework.common.pojo.PageResult;
import com.lz.framework.mybatis.core.query.LambdaQueryWrapperX;
import com.lz.framework.mybatis.core.mapper.BaseMapperX;
import com.lz.module.system.controller.admin.tenant.vo.packageSubscribe.TenantPackageSubscribePageReqVO;
import com.lz.module.system.dal.dataobject.tenant.TenantPackageSubscribeDO;
import org.apache.ibatis.annotations.Mapper;

/**
 * 租户套餐订阅 Mapper
 *
 * @author 荔枝软件
 */
@Mapper
public interface TenantPackageSubscribeMapper extends BaseMapperX<TenantPackageSubscribeDO> {

    default PageResult<TenantPackageSubscribeDO> selectPage(TenantPackageSubscribePageReqVO reqVO) {
        return selectPage(reqVO, new LambdaQueryWrapperX<TenantPackageSubscribeDO>()
                .likeIfPresent(TenantPackageSubscribeDO::getPackageName, reqVO.getPackageName())
                .likeIfPresent(TenantPackageSubscribeDO::getPackageCode, reqVO.getPackageCode())
                .eqIfPresent(TenantPackageSubscribeDO::getType, reqVO.getType())
                .likeIfPresent(TenantPackageSubscribeDO::getTenantName, reqVO.getTenantName())
                .likeIfPresent(TenantPackageSubscribeDO::getTenantCode, reqVO.getTenantCode())
                .eqIfPresent(TenantPackageSubscribeDO::getStatus, reqVO.getStatus())
                .eqIfPresent(TenantPackageSubscribeDO::getPayStatus, reqVO.getPayStatus())
                .betweenIfPresent(TenantPackageSubscribeDO::getStartTime, reqVO.getStartTime())
                .betweenIfPresent(TenantPackageSubscribeDO::getEndTime, reqVO.getEndTime())
                .betweenIfPresent(TenantPackageSubscribeDO::getCreateTime, reqVO.getCreateTime())
                .orderByDesc(TenantPackageSubscribeDO::getId));
    }

}