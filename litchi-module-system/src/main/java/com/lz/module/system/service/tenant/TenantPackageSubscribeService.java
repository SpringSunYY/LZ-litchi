package com.lz.module.system.service.tenant;

import java.util.*;

import com.lz.module.system.controller.admin.tenant.vo.packageSubscribe.TenantPackageSubscribePageReqVO;
import com.lz.module.system.controller.admin.tenant.vo.packageSubscribe.TenantPackageSubscribeSaveReqVO;
import jakarta.validation.*;
import com.lz.module.system.dal.dataobject.tenant.TenantPackageSubscribeDO;
import com.lz.framework.common.pojo.PageResult;

/**
 * 租户套餐订阅 Service 接口
 *
 * @author 荔枝软件
 */
public interface TenantPackageSubscribeService {

    /**
     * 创建租户套餐订阅
     *
     * @param createReqVO 创建信息
     * @return 编号
     */
    Long createTenantPackageSubscribe(@Valid TenantPackageSubscribeSaveReqVO createReqVO);

    Long insertTenantPackageSubscribe(TenantPackageSubscribeDO tenantPackageSubscribe);
    /**
     * 更新租户套餐订阅
     *
     * @param updateReqVO 更新信息
     */
    void updateTenantPackageSubscribe(@Valid TenantPackageSubscribeSaveReqVO updateReqVO);

    /**
     * 删除租户套餐订阅
     *
     * @param id 编号
     */
    void deleteTenantPackageSubscribe(Long id);

    /**
    * 批量删除租户套餐订阅
    *
    * @param ids 编号
    */
    void deleteTenantPackageSubscribeListByIds(List<Long> ids);

    /**
     * 获得租户套餐订阅
     *
     * @param id 编号
     * @return 租户套餐订阅
     */
    TenantPackageSubscribeDO getTenantPackageSubscribe(Long id);

    /**
     * 获得租户套餐订阅分页
     *
     * @param pageReqVO 分页查询
     * @return 租户套餐订阅分页
     */
    PageResult<TenantPackageSubscribeDO> getTenantPackageSubscribePage(TenantPackageSubscribePageReqVO pageReqVO);

    /**
     * 获得租户套餐编码订阅列表 正在订阅的
     *
     * @param packageCode 套餐编码
     * @return 租户套餐订阅列表
     */
    List<TenantPackageSubscribeDO> selectSubscribeByCurrentDateAndPackageCode(String packageCode);

    /**
     * 获得租户编码订阅列表 正在订阅的
     *
     * @param tenantCode 租户编码
     * @return 租户套餐订阅列表
     */
    List<TenantPackageSubscribeDO> selectSubscribeByCurrentDateAndTenantCode(String tenantCode);

    void updateBatch(List<TenantPackageSubscribeDO> tenantPackageSubscribeDOS);
}