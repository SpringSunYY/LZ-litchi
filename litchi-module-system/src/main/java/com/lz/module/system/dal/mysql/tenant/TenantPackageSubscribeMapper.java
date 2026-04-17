package com.lz.module.system.dal.mysql.tenant;

import cn.hutool.core.date.LocalDateTimeUtil;
import com.lz.framework.common.pojo.PageResult;
import com.lz.framework.mybatis.core.query.LambdaQueryWrapperX;
import com.lz.framework.mybatis.core.mapper.BaseMapperX;
import com.lz.module.system.controller.admin.tenant.vo.packageSubscribe.TenantPackageSubscribePageReqVO;
import com.lz.module.system.dal.dataobject.tenant.TenantPackageSubscribeDO;
import com.lz.module.system.enums.tenant.SystemTenantPackageSubscribeStatusEnum;
import org.apache.ibatis.annotations.Mapper;

import java.time.LocalDateTime;
import java.util.List;

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
                .eqIfPresent(TenantPackageSubscribeDO::getPackageType, reqVO.getPackageType())
                .likeIfPresent(TenantPackageSubscribeDO::getTenantName, reqVO.getTenantName())
                .likeIfPresent(TenantPackageSubscribeDO::getTenantCode, reqVO.getTenantCode())
                .eqIfPresent(TenantPackageSubscribeDO::getStatus, reqVO.getStatus())
                .eqIfPresent(TenantPackageSubscribeDO::getPayStatus, reqVO.getPayStatus())
                .betweenIfPresent(TenantPackageSubscribeDO::getStartTime, reqVO.getStartTime())
                .betweenIfPresent(TenantPackageSubscribeDO::getEndTime, reqVO.getEndTime())
                .betweenIfPresent(TenantPackageSubscribeDO::getCreateTime, reqVO.getCreateTime())
                .orderByDesc(TenantPackageSubscribeDO::getId));
    }

    /**
     * 查询当前时间在指定租户套餐的订阅记录，是正常的，开始时间结束时间
     *
     * @param packageCode 租户套餐的编号
     * @return 订阅记录
     */
    default List<TenantPackageSubscribeDO> selectSubscribeByCurrentDateAndPackageCode(String packageCode){
        //开始时间小于等于当前时间，结束时间大于当前时间，正常
        LocalDateTime now = LocalDateTimeUtil.now();
        return selectList(new LambdaQueryWrapperX<TenantPackageSubscribeDO>()
                .eqIfPresent(TenantPackageSubscribeDO::getPackageCode, packageCode)
                .eq(TenantPackageSubscribeDO::getStatus, SystemTenantPackageSubscribeStatusEnum.SYSTEM_TENANT_PACKAGE_SUBSCRIBE_STATUS_ENUM_2.getStatus())
                .le(TenantPackageSubscribeDO::getStartTime, now)
                .ge(TenantPackageSubscribeDO::getEndTime, now)
        );
    };

    /**
     * 查询当前时间在指定租户的订阅记录，是正常的，开始时间结束时间
     * @param tenantCode 租户的编号
     */
    default List<TenantPackageSubscribeDO> selectSubscribeByCurrentDateAndTenantCode(String tenantCode){
        //开始时间小于等于当前时间，结束时间大于当前时间，正常
        LocalDateTime now = LocalDateTimeUtil.now();
        return selectList(new LambdaQueryWrapperX<TenantPackageSubscribeDO>()
                .eqIfPresent(TenantPackageSubscribeDO::getTenantCode, tenantCode)
                .eq(TenantPackageSubscribeDO::getStatus, SystemTenantPackageSubscribeStatusEnum.SYSTEM_TENANT_PACKAGE_SUBSCRIBE_STATUS_ENUM_2.getStatus())
                .le(TenantPackageSubscribeDO::getStartTime, now)
                .ge(TenantPackageSubscribeDO::getEndTime, now)
        );
    };
}