package com.lz.module.system.service.tenant;

import com.lz.framework.common.pojo.PageResult;
import com.lz.framework.common.util.object.BeanUtils;
import com.lz.framework.tenant.core.util.TenantUtils;
import com.lz.module.system.controller.admin.tenant.vo.packageSubscribe.TenantPackageSubscribePageReqVO;
import com.lz.module.system.controller.admin.tenant.vo.packageSubscribe.TenantPackageSubscribeSaveReqVO;
import com.lz.module.system.dal.dataobject.tenant.TenantDO;
import com.lz.module.system.dal.dataobject.tenant.TenantPackageDO;
import com.lz.module.system.dal.dataobject.tenant.TenantPackageSubscribeDO;
import com.lz.module.system.dal.mysql.tenant.TenantPackageSubscribeMapper;
import jakarta.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.support.TransactionTemplate;
import org.springframework.validation.annotation.Validated;

import java.math.BigDecimal;
import java.util.List;

import static com.lz.framework.common.exception.util.ServiceExceptionUtil.exception;
import static com.lz.module.system.enums.ErrorCodeConstants.TENANT_PACKAGE_SUBSCRIBE_NOT_EXISTS;
import static com.lz.module.system.enums.ErrorCodeConstants.TENANT_PACKAGE_SUBSCRIBE_PROHIBIT_TENANT_OR_PACKAGE_CHANGE;

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

    @Resource
    private TenantPackageService tenantPackageService;

    @Resource
    private TenantService tenantService;

    @Resource
    private TransactionTemplate transactionTemplate;

    @Override
    public Long createTenantPackageSubscribe(TenantPackageSubscribeSaveReqVO createReqVO) {
        // 插入
        TenantPackageSubscribeDO tenantPackageSubscribe = BeanUtils.toBean(createReqVO, TenantPackageSubscribeDO.class);
        TenantDO tenantDO = initTenantPackageSubscribeByTenant(tenantPackageSubscribe);
        //为租户重新授权，这里主要是给租户授权
        TenantPackageDO tenantPackageDO = initTenantPackageSubscribeByPackage(tenantPackageSubscribe);
        TenantUtils.execute(tenantDO.getId(), () -> {
            tenantService.updateTenantMenu(tenantDO, tenantPackageDO, tenantPackageSubscribe);
            transactionTemplate.executeWithoutResult(status -> {
                tenantPackageSubscribeMapper.insert(tenantPackageSubscribe);
                //更新租户套餐订阅数量
                tenantPackageService.updateTenantPackage(tenantPackageDO);
            });
        });
        // 返回
        return tenantPackageSubscribe.getId();
    }

    @Override
    public Long insertTenantPackageSubscribe(TenantPackageSubscribeDO tenantPackageSubscribe) {
        tenantPackageSubscribeMapper.insert(tenantPackageSubscribe);
        return tenantPackageSubscribe.getId();
    }

    private TenantPackageDO initTenantPackageSubscribeByPackage(TenantPackageSubscribeDO tenantPackageSubscribe) {
        //查看租户套餐
        TenantPackageDO tenantPackage = tenantPackageService.validTenantPackageByCode(tenantPackageSubscribe.getPackageCode());
        tenantPackageSubscribe.setPackageName(tenantPackage.getName());
        tenantPackageSubscribe.setPackageCode(tenantPackage.getCode());
        tenantPackageSubscribe.setPrice(tenantPackage.getPrice());
        tenantPackageSubscribe.setPackageLogo(tenantPackage.getLogo());
        tenantPackageSubscribe.setPackageStatus(tenantPackage.getStatus());
        //计算订阅金额=订阅金额*天数/30-优惠金额
        BigDecimal daysDecimal = new BigDecimal(tenantPackageSubscribe.getDays());
        if (daysDecimal.compareTo(BigDecimal.ZERO) <= 0 || tenantPackage.getPrice().compareTo(BigDecimal.ZERO) <= 0) {
            tenantPackageSubscribe.setTotalPrice(BigDecimal.ZERO);
        } else {
            tenantPackageSubscribe.setTotalPrice(tenantPackage.getPrice()
                    .multiply(daysDecimal)
                    .divide(new BigDecimal(30), java.math.RoundingMode.HALF_UP)
                    .subtract(tenantPackageSubscribe.getDiscountPrice()));
        }
        return tenantPackage;
    }

    private TenantDO initTenantPackageSubscribeByTenant(TenantPackageSubscribeDO tenantPackageSubscribe) {
        //租户
        TenantDO tenant = tenantService.validTenantByCode(tenantPackageSubscribe.getTenantCode());
        //租户、租户套餐不可改变
        tenantPackageSubscribe.setTenantName(tenant.getName());
        tenantPackageSubscribe.setTenantCode(tenant.getCode());
        return tenant;
    }

    @Override
    public void updateTenantPackageSubscribe(TenantPackageSubscribeSaveReqVO updateReqVO) {
        // 校验存在
        TenantPackageSubscribeDO tenantPackageSubscribeDO = validateTenantPackageSubscribeExists(updateReqVO.getId());
        //租户、租户套餐不可改变
        if (!tenantPackageSubscribeDO.getTenantCode().equals(updateReqVO.getTenantCode()) || !tenantPackageSubscribeDO.getPackageCode().equals(updateReqVO.getPackageCode())) {
            throw exception(TENANT_PACKAGE_SUBSCRIBE_PROHIBIT_TENANT_OR_PACKAGE_CHANGE);
        }
        // 更新
        TenantPackageSubscribeDO updateObj = BeanUtils.toBean(updateReqVO, TenantPackageSubscribeDO.class);
        initTenantPackageSubscribeByTenant(updateObj);
        initTenantPackageSubscribeByPackage(updateObj);
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


    private TenantPackageSubscribeDO validateTenantPackageSubscribeExists(Long id) {
        TenantPackageSubscribeDO tenantPackageSubscribeDO = tenantPackageSubscribeMapper.selectById(id);
        if (tenantPackageSubscribeDO == null) {
            throw exception(TENANT_PACKAGE_SUBSCRIBE_NOT_EXISTS);
        }
        return tenantPackageSubscribeDO;
    }

    @Override
    public TenantPackageSubscribeDO getTenantPackageSubscribe(Long id) {
        return tenantPackageSubscribeMapper.selectById(id);
    }

    @Override
    public PageResult<TenantPackageSubscribeDO> getTenantPackageSubscribePage(TenantPackageSubscribePageReqVO pageReqVO) {
        return tenantPackageSubscribeMapper.selectPage(pageReqVO);
    }

    @Override
    public List<TenantPackageSubscribeDO> selectSubscribeByCurrentDateAndPackageCode(String packageCode) {
        return tenantPackageSubscribeMapper.selectSubscribeByCurrentDateAndPackageCode(packageCode);
    }

    @Override
    public List<TenantPackageSubscribeDO> selectSubscribeByCurrentDateAndTenantCode(String tenantCode) {
        return tenantPackageSubscribeMapper.selectSubscribeByCurrentDateAndTenantCode(tenantCode);
    }

    @Override
    public void updateBatch(List<TenantPackageSubscribeDO> tenantPackageSubscribeDOS) {
        tenantPackageSubscribeMapper.updateBatch(tenantPackageSubscribeDOS);
    }


}