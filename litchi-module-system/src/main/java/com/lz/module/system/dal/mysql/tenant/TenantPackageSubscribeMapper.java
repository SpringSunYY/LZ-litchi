package com.lz.module.system.dal.mysql.tenant;

import cn.hutool.core.date.LocalDateTimeUtil;
import com.lz.framework.common.pojo.PageResult;
import com.lz.framework.mybatis.core.mapper.BaseMapperX;
import com.lz.framework.mybatis.core.query.LambdaQueryWrapperX;
import com.lz.module.system.controller.admin.tenant.vo.packageSubscribe.TenantPackageSubscribePageReqVO;
import com.lz.module.system.dal.dataobject.tenant.TenantPackageSubscribeDO;
import com.lz.module.system.enums.tenant.SystemTenantPackageSubscribeStatusEnum;
import com.lz.module.system.enums.tenant.SystemTenantPackageTypeEnum;
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
    default List<TenantPackageSubscribeDO> selectSubscribeByCurrentDateAndPackageCode(String packageCode) {
        //开始时间小于等于当前时间，结束时间大于当前时间，正常
        LocalDateTime now = LocalDateTimeUtil.now();
        return selectList(new LambdaQueryWrapperX<TenantPackageSubscribeDO>()
                .eqIfPresent(TenantPackageSubscribeDO::getPackageCode, packageCode)
                .eq(TenantPackageSubscribeDO::getStatus, SystemTenantPackageSubscribeStatusEnum.SYSTEM_TENANT_PACKAGE_SUBSCRIBE_STATUS_ENUM_2.getStatus())
                .le(TenantPackageSubscribeDO::getStartTime, now)
                .ge(TenantPackageSubscribeDO::getEndTime, now)
        );
    }

    ;

    /**
     * 查询当前时间在指定租户的订阅记录，开始时间结束时间，且不能是关闭的
     *
     * @param tenantCode 租户的编号
     */
    default List<TenantPackageSubscribeDO> selectSubscribeByCurrentDateAndTenantCode(String tenantCode) {
        //开始时间小于等于当前时间，结束时间大于当前时间，正常
        LocalDateTime now = LocalDateTimeUtil.now();
        return selectList(new LambdaQueryWrapperX<TenantPackageSubscribeDO>()
                .eq(TenantPackageSubscribeDO::getTenantCode, tenantCode)
                .ne(TenantPackageSubscribeDO::getStatus, SystemTenantPackageSubscribeStatusEnum.SYSTEM_TENANT_PACKAGE_SUBSCRIBE_STATUS_ENUM_4.getStatus())
                .le(TenantPackageSubscribeDO::getStartTime, now)
                .ge(TenantPackageSubscribeDO::getEndTime, now)
        );
    }

    ;

    /**
     * 更新租户套餐订阅状态为结束，结束时间是当前时间之前、套餐类型为套餐、套餐状态不是关闭的
     *
     * @return 更新数量
     */
    default int updateTenantPackageSubscribeStatusToEnd() {
        return update(
                new TenantPackageSubscribeDO()
                        .setStatus(
                                SystemTenantPackageSubscribeStatusEnum.SYSTEM_TENANT_PACKAGE_SUBSCRIBE_STATUS_ENUM_3.getStatus()
                        ),
                new LambdaQueryWrapperX<TenantPackageSubscribeDO>()
                        .eq(TenantPackageSubscribeDO::getPackageType, SystemTenantPackageTypeEnum.SYSTEM_TENANT_PACKAGE_TYPE_ENUM_1.getStatus())
                        .ne(TenantPackageSubscribeDO::getStatus, SystemTenantPackageSubscribeStatusEnum.SYSTEM_TENANT_PACKAGE_SUBSCRIBE_STATUS_ENUM_4.getStatus())
                        .le(TenantPackageSubscribeDO::getEndTime, LocalDateTimeUtil.now())
        );
    }

    ;

    /**
     * 批量更新租户套餐订阅状态为待开始，开始时间是当前时间之前的、结束时间是当前时间之后、套餐类型为套餐、套餐状态不是关闭的
     *
     * @return 更新数量
     */
    default int updateTenantPackageSubscribeStatusToBegin() {
        return update(
                new TenantPackageSubscribeDO()
                        .setStatus(
                                SystemTenantPackageSubscribeStatusEnum.SYSTEM_TENANT_PACKAGE_SUBSCRIBE_STATUS_ENUM_2.getStatus()
                        ),
                new LambdaQueryWrapperX<TenantPackageSubscribeDO>()
                        .eq(TenantPackageSubscribeDO::getPackageType, SystemTenantPackageTypeEnum.SYSTEM_TENANT_PACKAGE_TYPE_ENUM_1.getStatus())
                        .ne(TenantPackageSubscribeDO::getStatus, SystemTenantPackageSubscribeStatusEnum.SYSTEM_TENANT_PACKAGE_SUBSCRIBE_STATUS_ENUM_4.getStatus())
                        .le(TenantPackageSubscribeDO::getStartTime, LocalDateTimeUtil.now())
                        .ge(TenantPackageSubscribeDO::getEndTime, LocalDateTimeUtil.now())
        );
    }

    ;
}