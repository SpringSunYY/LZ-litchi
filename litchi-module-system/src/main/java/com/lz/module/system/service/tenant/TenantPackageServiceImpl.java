package com.lz.module.system.service.tenant;

import cn.hutool.core.collection.CollUtil;
import cn.hutool.core.collection.CollectionUtil;
import cn.hutool.core.date.LocalDateTimeUtil;
import cn.hutool.core.util.StrUtil;
import com.baomidou.dynamic.datasource.annotation.DSTransactional;
import com.google.common.annotations.VisibleForTesting;
import com.lz.framework.common.enums.CommonStatusEnum;
import com.lz.framework.common.pojo.PageResult;
import com.lz.framework.common.util.collection.ArrayUtils;
import com.lz.framework.common.util.collection.CollectionUtils;
import com.lz.framework.common.util.object.BeanUtils;
import com.lz.framework.tenant.core.aop.TenantIgnore;
import com.lz.framework.tenant.core.util.TenantUtils;
import com.lz.module.system.controller.admin.tenant.vo.packages.TenantPackageGrantReqVO;
import com.lz.module.system.controller.admin.tenant.vo.packages.TenantPackagePageReqVO;
import com.lz.module.system.controller.admin.tenant.vo.packages.TenantPackageSaveReqVO;
import com.lz.module.system.dal.dataobject.tenant.TenantDO;
import com.lz.module.system.dal.dataobject.tenant.TenantPackageDO;
import com.lz.module.system.dal.dataobject.tenant.TenantPackageSubscribeDO;
import com.lz.module.system.dal.mysql.tenant.TenantPackageMapper;
import com.lz.module.system.enums.tenant.SystemTenantPackageSubscribePayStatusEnum;
import com.lz.module.system.enums.tenant.SystemTenantPackageSubscribeStatusEnum;
import com.lz.module.system.enums.tenant.SystemTenantPackageTypeEnum;
import jakarta.annotation.Resource;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Service;
import org.springframework.validation.annotation.Validated;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.time.LocalDateTime;
import java.util.*;
import java.util.stream.Collectors;

import static com.lz.framework.common.exception.util.ServiceExceptionUtil.exception;
import static com.lz.module.system.enums.ErrorCodeConstants.*;

/**
 * 租户套餐 Service 实现类
 *
 * @author 荔枝源码
 */
@Service
@Validated
public class TenantPackageServiceImpl implements TenantPackageService {

    @Resource
    private TenantPackageMapper tenantPackageMapper;

    @Resource
    @Lazy // 避免循环依赖的报错
    private TenantService tenantService;

    @Resource
    @Lazy
    private TenantPackageSubscribeService tenantPackageSubscribeService;

    @DSTransactional
    @Override
    @TenantIgnore // 忽略多租户,防止套餐更新权限失败
    public Long createTenantPackage(TenantPackageSaveReqVO createReqVO) {
        // 校验套餐名和code是否重复
        validateTenantPackageNameAndCodeUnique(null, createReqVO.getName(), createReqVO.getCode());
        // 插入
        TenantPackageDO tenantPackage = BeanUtils.toBean(createReqVO, TenantPackageDO.class);

        //如果是内置套餐，则需要给所有的租户都订阅
        if (!Objects.equals(tenantPackage.getType(), SystemTenantPackageTypeEnum.SYSTEM_TENANT_PACKAGE_TYPE_ENUM_0.getStatus())) {
            tenantPackageMapper.insert(tenantPackage);
            return tenantPackage.getId();
        }
        //查询到所有的租户
        List<TenantDO> tenantDOS = tenantService.getTenantListByStatus(CommonStatusEnum.ENABLE.getStatus());
        tenantDOS.forEach(tenant -> {
            LocalDateTime startTime = LocalDateTimeUtil.now();
            LocalDateTime endTime = startTime.plusDays(99999);
            TenantUtils.execute(tenant.getId(), () -> {
                TenantPackageSubscribeDO tenantPackageSubscribe = new TenantPackageSubscribeDO();
                BigDecimal totalPrice = new BigDecimal(BigInteger.ZERO);
                tenantPackageSubscribe.setPackageName(tenantPackage.getName())
                        .setPackageCode(tenantPackage.getCode())
                        .setPackageType(tenantPackage.getType())
                        .setPackageStatus(tenantPackage.getStatus())
                        .setPackageLogo(tenantPackage.getLogo())
                        .setTenantName(tenant.getName())
                        .setTenantCode(tenant.getCode())
                        .setPrice(tenantPackage.getPrice())
                        .setDiscountPrice(totalPrice)
                        .setDays(99999)
                        .setTotalPrice(totalPrice)
                        .setStartTime(startTime)
                        .setEndTime(endTime)
                        .setPayStatus(SystemTenantPackageSubscribePayStatusEnum.SYSTEM_TENANT_PACKAGE_SUBSCRIBE_PAY_STATUS_ENUM_1.getStatus())
                        .setStatus(SystemTenantPackageSubscribeStatusEnum.SYSTEM_TENANT_PACKAGE_SUBSCRIBE_STATUS_ENUM_2.getStatus())
                        .setRemark("系统自动订阅内置套餐");
                tenantPackageSubscribeService.insertTenantPackageSubscribe(tenantPackageSubscribe);
            });
        });
        tenantPackage.setSubscriptionNum(tenantDOS.size());
        tenantPackage.setSubscriptionTotalAmount(
                new BigDecimal(tenantDOS.size()).multiply(
                        tenantPackage.getPrice()
                ));
        tenantPackageMapper.insert(tenantPackage);
        // 返回
        return tenantPackage.getId();
    }

    @Override
    @DSTransactional
    @TenantIgnore // 忽略多租户,防止套餐更新权限失败
    public void updateTenantPackage(TenantPackageSaveReqVO updateReqVO) {
        // 校验存在
        TenantPackageDO tenantPackage = validateTenantPackageExists(updateReqVO.getId());
        //套餐编号、类型不可更改
        updateReqVO.setCode(null).setType(null);
        // 校验套餐名是否重复
        validateTenantPackageNameAndCodeUnique(updateReqVO.getId(), updateReqVO.getName(), updateReqVO.getCode());
        // 更新
        TenantPackageDO updateObj = BeanUtils.toBean(updateReqVO, TenantPackageDO.class);
        tenantPackageMapper.updateById(updateObj);
        // 如果菜单发生状态变化，则修改每个租户的菜单
        if (!tenantPackage.getStatus().equals(updateReqVO.getStatus())) {
            List<TenantPackageSubscribeDO> tenantPackageSubscribeDOS = updateTenantMenu(tenantPackage);
            if (CollectionUtil.isEmpty(tenantPackageSubscribeDOS)) {
                return;
            }
            //只更新当前订阅的套餐的状态
            tenantPackageSubscribeDOS.forEach(tenantPackageSubscribeDO -> {
                tenantPackageSubscribeDO.setPackageStatus(updateReqVO.getStatus());
            });
            tenantPackageSubscribeService.updateBatch(tenantPackageSubscribeDOS);
        }
    }

    @Override
    public void updateTenantPackage(TenantPackageDO tenantPackageDO) {
        tenantPackageMapper.updateById(tenantPackageDO);
    }

    @Override
    @TenantIgnore // 忽略多租户,防止套餐更新权限失败
    public void grantTenantPackage(TenantPackageGrantReqVO grantReqVO) {
        // 校验存在
        TenantPackageDO tenantPackage = validateTenantPackageExists(grantReqVO.getId());
        tenantPackageMapper.updateById(BeanUtils.toBean(grantReqVO, TenantPackageDO.class));
        //如果原套餐是关闭，则不需要更新权限
        if (tenantPackage.getStatus().equals(CommonStatusEnum.DISABLE.getStatus())) {
            return;
        }
        // 如果菜单发生变化，则修改每个租户的菜单
        if (CollUtil.isEqualList(tenantPackage.getMenuIds(), grantReqVO.getMenuIds())) {
            return;
        }
        updateTenantMenu(tenantPackage);

    }

    private List<TenantPackageSubscribeDO> updateTenantMenu(TenantPackageDO tenantPackage) {
        // 获取该套餐的订阅
        List<TenantPackageSubscribeDO> packageSubscribeDOS = tenantPackageSubscribeService.selectSubscribeByCurrentDateAndPackageCode(tenantPackage.getCode());
        //根据订阅拿到租户
        if (CollectionUtil.isEmpty(packageSubscribeDOS)) {
            return null;
        }
        List<String> tenantCodes = packageSubscribeDOS.stream().map(TenantPackageSubscribeDO::getTenantCode).toList();
        //从关联租户套餐订阅中获取租户列表
        List<TenantDO> tenants = tenantService.getTenantListByPackageCode(tenantCodes);
        for (TenantDO tenant : tenants) {
            if (tenantService.isSystemTenant(tenant)) {
                continue;
            }
            updateTenantMenu(tenant);
        }
        return packageSubscribeDOS;
    }

    @Override
    public TenantDO updateTenantMenu(TenantDO tenant) {
        //首先拿到该租户当前订阅的所有套餐
        List<TenantPackageSubscribeDO> tenantSubscribeDOS = tenantPackageSubscribeService.selectSubscribeByCurrentDateAndTenantCode(tenant.getCode());
        //在拿到所有的套餐，根据套餐编号
        List<String> packageCodes = tenantSubscribeDOS.stream().map(TenantPackageSubscribeDO::getPackageCode).toList();
        List<TenantPackageDO> tenantPackageDOS = tenantPackageMapper.selectListByCodes(packageCodes);
        Set<Long> menuIds = new HashSet<>();
        //获取到所有的权限菜单
        for (TenantPackageDO packageDO : tenantPackageDOS) {
            if (ArrayUtils.isEmpty(packageDO.getMenuIds())) {
                continue;
            }
            menuIds.addAll(packageDO.getMenuIds());
        }
        tenantService.updateTenantRoleMenu(tenant.getId(), menuIds);
        //更新租户权限
        tenant.setMenuIds(menuIds);
        tenantService.updateTenant(tenant);
        return tenant;
    }

    @Override
    @TenantIgnore // 忽略多租户,防止套餐更新权限失败
    public void deleteTenantPackage(Long id) {
        // 校验存在
        TenantPackageDO tenantPackageDO = validateTenantPackageExists(id);
        // 校验正在使用
        validateTenantUsed(tenantPackageDO.getCode());
        // 删除
        tenantPackageMapper.deleteById(id);
    }

    @Override
    public void deleteTenantPackageList(List<Long> ids) {
        // 1. 校验是否有租户正在使用该套餐
        for (Long id : ids) {
            this.deleteTenantPackage(id);
        }
    }

    @Override
    public TenantPackageDO getTenantPackage(Long id) {
        return tenantPackageMapper.selectById(id);
    }

    private TenantPackageDO validateTenantPackageExists(Long id) {
        TenantPackageDO tenantPackage = tenantPackageMapper.selectById(id);
        if (tenantPackage == null) {
            throw exception(TENANT_PACKAGE_NOT_EXISTS);
        }
        return tenantPackage;
    }

    private void validateTenantUsed(String code) {
        List<TenantPackageSubscribeDO> tenantPackageSubscribeDOS = tenantPackageSubscribeService.selectSubscribeByCurrentDateAndPackageCode(code);
        if (ArrayUtils.isNotEmpty(tenantPackageSubscribeDOS)) {
            throw exception(TENANT_PACKAGE_USED);
        }
    }

    @Override
    public List<TenantPackageDO> getTenantPackageByCode(String code) {
        List<TenantPackageSubscribeDO> tenantPackageSubscribeDOS = tenantPackageSubscribeService.selectSubscribeByCurrentDateAndTenantCode(code);
        if (CollectionUtils.isEmpty(tenantPackageSubscribeDOS)) {
            return new ArrayList<>();
        }
        List<String> packageCodes = tenantPackageSubscribeDOS
                .stream().map(TenantPackageSubscribeDO::getPackageCode)
                .distinct().collect(Collectors.toList());
        return tenantPackageMapper.selectListByCodes(packageCodes);


    }

    @Override
    public PageResult<TenantPackageDO> getTenantPackagePage(TenantPackagePageReqVO pageReqVO) {
        return tenantPackageMapper.selectPage(pageReqVO);
    }

    @Override
    public TenantPackageDO validTenantPackage(Long id) {
        TenantPackageDO tenantPackage = tenantPackageMapper.selectById(id);
        if (tenantPackage == null) {
            throw exception(TENANT_PACKAGE_NOT_EXISTS);
        }
        if (tenantPackage.getStatus().equals(CommonStatusEnum.DISABLE.getStatus())) {
            throw exception(TENANT_PACKAGE_DISABLE, tenantPackage.getName());
        }
        return tenantPackage;
    }

    @Override
    public TenantPackageDO validTenantPackageByCode(String packageCode) {
        TenantPackageDO tenantPackage = tenantPackageMapper.selectByCode(packageCode);
        if (tenantPackage == null) {
            throw exception(TENANT_PACKAGE_NOT_EXISTS);
        }
        if (tenantPackage.getStatus().equals(CommonStatusEnum.DISABLE.getStatus())) {
            throw exception(TENANT_PACKAGE_DISABLE, tenantPackage.getName());
        }
        return tenantPackage;
    }

    @Override
    public List<TenantPackageDO> getTenantPackageListByStatus(Integer status) {
        return tenantPackageMapper.selectListByStatus(status);
    }

    @Override
    public List<TenantPackageDO> getTenantPackageListByTypeBuiltIn() {
        return tenantPackageMapper.selectListByTypeBuiltIn();
    }


    @VisibleForTesting
    void validateTenantPackageNameAndCodeUnique(Long id, String name, String code) {
        if (StrUtil.isBlank(name)) {
            return;
        }
        TenantPackageDO tenantPackageByName = tenantPackageMapper.selectByName(name);
        if (tenantPackageByName != null && !tenantPackageByName.getId().equals(id)) {
            throw exception(TENANT_PACKAGE_NAME_DUPLICATE);
        }
        if (StrUtil.isBlank(code)) {
            return;
        }
        TenantPackageDO tenantPackageByCode = tenantPackageMapper.selectByCode(code);
        if (tenantPackageByCode != null && !tenantPackageByCode.getId().equals(id)) {
            throw exception(TENANT_PACKAGE_CODE_DUPLICATE);
        }
    }

}
