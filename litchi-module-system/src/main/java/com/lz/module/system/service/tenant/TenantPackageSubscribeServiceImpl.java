package com.lz.module.system.service.tenant;

import com.lz.module.system.controller.admin.tenant.vo.packageSubscribe.TenantPackageSubscribePageReqVO;
import com.lz.module.system.controller.admin.tenant.vo.packageSubscribe.TenantPackageSubscribeSaveReqVO;
import org.springframework.stereotype.Service;
import jakarta.annotation.Resource;
import org.springframework.validation.annotation.Validated;

import java.util.*;

import com.lz.module.system.dal.dataobject.tenant.TenantPackageSubscribeDO;
import com.lz.framework.common.pojo.PageResult;
import com.lz.framework.common.util.object.BeanUtils;

import com.lz.module.system.dal.mysql.tenant.TenantPackageSubscribeMapper;

import static com.lz.framework.common.exception.util.ServiceExceptionUtil.exception;
import static com.lz.framework.common.util.collection.CollectionUtils.convertList;
import static com.lz.module.system.enums.ErrorCodeConstants.TENANT_PACKAGE_SUBSCRIBE_NOT_EXISTS;

/**
 * 租户套餐订阅 Service 实现类
 *
 * @author 荔枝软件
 */
@Service
@Validated
public class TenantPackageSubscribeServiceImpl implements TenantPackageSubscribeService {

    @Resource
    private TenantPackageSubscribeMapper tenantPackageSubscribeMapper;

    @Override
    public Long createTenantPackageSubscribe(TenantPackageSubscribeSaveReqVO createReqVO) {
        // 插入
        TenantPackageSubscribeDO tenantPackageSubscribe = BeanUtils.toBean(createReqVO, TenantPackageSubscribeDO.class);
        tenantPackageSubscribeMapper.insert(tenantPackageSubscribe);

        // 返回
        return tenantPackageSubscribe.getId();
    }

    @Override
    public void updateTenantPackageSubscribe(TenantPackageSubscribeSaveReqVO updateReqVO) {
        // 校验存在
        validateTenantPackageSubscribeExists(updateReqVO.getId());
        // 更新
        TenantPackageSubscribeDO updateObj = BeanUtils.toBean(updateReqVO, TenantPackageSubscribeDO.class);
        tenantPackageSubscribeMapper.updateById(updateObj);
    }

    @Override
    public void deleteTenantPackageSubscribe(Long id) {
        // 校验存在
        validateTenantPackageSubscribeExists(id);
        // 删除
        tenantPackageSubscribeMapper.deleteById(id);
    }

    @Override
        public void deleteTenantPackageSubscribeListByIds(List<Long> ids) {
        // 删除
        tenantPackageSubscribeMapper.deleteByIds(ids);
        }


    private void validateTenantPackageSubscribeExists(Long id) {
        if (tenantPackageSubscribeMapper.selectById(id) == null) {
            throw exception(TENANT_PACKAGE_SUBSCRIBE_NOT_EXISTS);
        }
    }

    @Override
    public TenantPackageSubscribeDO getTenantPackageSubscribe(Long id) {
        return tenantPackageSubscribeMapper.selectById(id);
    }

    @Override
    public PageResult<TenantPackageSubscribeDO> getTenantPackageSubscribePage(TenantPackageSubscribePageReqVO pageReqVO) {
        return tenantPackageSubscribeMapper.selectPage(pageReqVO);
    }

}