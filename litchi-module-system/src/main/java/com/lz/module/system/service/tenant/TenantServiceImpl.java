package com.lz.module.system.service.tenant;

import cn.hutool.core.collection.CollUtil;
import cn.hutool.core.date.LocalDateTimeUtil;
import cn.hutool.core.lang.Assert;
import cn.hutool.core.util.StrUtil;
import com.baomidou.dynamic.datasource.annotation.DSTransactional;
import com.baomidou.dynamic.datasource.tx.DsPropagation;
import com.lz.framework.common.enums.CommonStatusEnum;
import com.lz.framework.common.pojo.PageResult;
import com.lz.framework.common.util.collection.ArrayUtils;
import com.lz.framework.common.util.collection.CollectionUtils;
import com.lz.framework.common.util.object.BeanUtils;
import com.lz.framework.common.util.object.ObjectUtils;
import com.lz.framework.datapermission.core.annotation.DataPermission;
import com.lz.framework.tenant.config.TenantProperties;
import com.lz.framework.tenant.core.aop.TenantIgnore;
import com.lz.framework.tenant.core.context.TenantContextHolder;
import com.lz.framework.tenant.core.util.TenantUtils;
import com.lz.module.system.controller.admin.permission.vo.role.RoleSaveReqVO;
import com.lz.module.system.controller.admin.tenant.vo.tenant.TenantPageReqVO;
import com.lz.module.system.controller.admin.tenant.vo.tenant.TenantSaveReqVO;
import com.lz.module.system.convert.tenant.TenantConvert;
import com.lz.module.system.dal.dataobject.permission.MenuDO;
import com.lz.module.system.dal.dataobject.permission.RoleDO;
import com.lz.module.system.dal.dataobject.tenant.TenantDO;
import com.lz.module.system.dal.dataobject.tenant.TenantPackageDO;
import com.lz.module.system.dal.dataobject.tenant.TenantPackageSubscribeDO;
import com.lz.module.system.dal.mysql.tenant.TenantMapper;
import com.lz.module.system.dal.mysql.tenant.TenantPackageSubscribeMapper;
import com.lz.module.system.enums.permission.RoleCodeEnum;
import com.lz.module.system.enums.permission.RoleTypeEnum;
import com.lz.module.system.enums.tenant.SystemTenantPackageSubscribePayStatusEnum;
import com.lz.module.system.enums.tenant.SystemTenantPackageSubscribeStatusEnum;
import com.lz.module.system.service.permission.MenuService;
import com.lz.module.system.service.permission.PermissionService;
import com.lz.module.system.service.permission.RoleService;
import com.lz.module.system.service.tenant.handler.TenantInfoHandler;
import com.lz.module.system.service.tenant.handler.TenantMenuHandler;
import com.lz.module.system.service.user.AdminUserService;
import jakarta.annotation.Resource;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.validation.annotation.Validated;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.time.LocalDateTime;
import java.util.*;

import static com.lz.framework.common.exception.util.ServiceExceptionUtil.exception;
import static com.lz.module.system.enums.ErrorCodeConstants.*;
import static java.util.Collections.singleton;

/**
 * 租户 Service 实现类
 *
 * @author 荔枝源码
 */
@Service
@Validated
@Slf4j
public class TenantServiceImpl implements TenantService {

    @SuppressWarnings("SpringJavaAutowiredFieldsWarningInspection")
    @Autowired(required = false) // 由于 litchi.tenant.enable 配置项，可以关闭多租户的功能，所以这里只能不强制注入
    private TenantProperties tenantProperties;

    @Resource
    private TenantMapper tenantMapper;

    @Resource
    private TenantPackageService tenantPackageService;
    @Resource
    @Lazy // 延迟，避免循环依赖报错
    private AdminUserService userService;
    @Resource
    private RoleService roleService;
    @Resource
    private MenuService menuService;
    @Resource
    private PermissionService permissionService;
    @Resource
    private PasswordEncoder passwordEncoder;
    @Resource
    private TenantPackageSubscribeMapper tenantPackageSubscribeMapper;

    @Override
    public List<Long> getTenantIdList() {
        List<TenantDO> tenants = tenantMapper.selectList();
        return CollectionUtils.convertList(tenants, TenantDO::getId);
    }

    @Override
    public void validTenant(Long id) {
        TenantDO tenant = getTenant(id);
        if (tenant == null) {
            throw exception(TENANT_NOT_EXISTS);
        }
        if (tenant.getStatus().equals(CommonStatusEnum.DISABLE.getStatus())) {
            throw exception(TENANT_DISABLE, tenant.getName());
        }
    }

    @Override
    public TenantDO validTenantByCode(String tenantCode) {
        TenantDO tenant = this.selectByCode(tenantCode);
        if (tenant == null) {
            throw exception(TENANT_NOT_EXISTS);
        }
        if (tenant.getStatus().equals(CommonStatusEnum.DISABLE.getStatus())) {
            throw exception(TENANT_DISABLE, tenant.getName());
        }
        return tenant;
    }

    @Override
    public void updateTenantMenu(TenantDO tenantDO, TenantPackageDO tenantPackageDO, TenantPackageSubscribeDO tenantPackageSubscribe) {
        //首先判断开始结束时间，是否在内,如果不在
        if (!LocalDateTimeUtil.isIn(LocalDateTimeUtil.now(), tenantPackageSubscribe.getStartTime(), tenantPackageSubscribe.getEndTime())) {
            return;
        }
        //判断套餐是否关闭
        if (tenantPackageDO.getStatus().equals(CommonStatusEnum.DISABLE.getStatus())) {
            throw exception(TENANT_PACKAGE_DISABLE);
        }
        //拿到套餐的菜单与租户的菜单
        Set<Long> packageMenuIds = tenantPackageDO.getMenuIds();
        if (CollUtil.isEmpty(packageMenuIds)) {
            return;
        }
        Set<Long> tenantMenuIds = tenantDO.getMenuIds();
        if (CollUtil.isEmpty(tenantMenuIds)) {
            tenantMenuIds = new HashSet<>();
        }
        tenantMenuIds.addAll(packageMenuIds);
        tenantDO.setMenuIds(tenantMenuIds);
        //先更新角色再更新租户，避免事务提交失败
        updateTenantRoleMenu(tenantDO.getId(), tenantDO.getMenuIds());
        tenantMapper.updateById(tenantDO);
    }

    @Override
    public Set<Long> getTenantMenu(String code) {
        //查询租户
        TenantDO tenant = this.selectByCode(code);
        if (ObjectUtils.isEmpty(tenant)) {
            throw exception(TENANT_NOT_EXISTS);
        }
        Set<Long> menuIds;
        if (isSystemTenant(tenant)) { // 系统租户，菜单是全量的
            menuIds = CollectionUtils.convertSet(menuService.getMenuList(), MenuDO::getId);
        } else {
            menuIds = tenant.getMenuIds();
        }
        return menuIds;
    }

    @Override
    @DSTransactional // 多数据源，使用 @DSTransactional 保证本地事务，以及数据源的切换
    @DataPermission(enable = false) // 参见 https://gitee.com/zhijiantianya/litchi/pulls/1154 说明
    public Long createTenant(TenantSaveReqVO createReqVO) {
        // 校验租户名称是否重复
        validTenantNameDuplicate(createReqVO.getName(), null);
        // 校验租户域名是否重复
        validTenantWebsiteDuplicate(createReqVO.getWebsite(), null);
        // 查询所有的内置套餐
        List<TenantPackageDO> tenantPackages = tenantPackageService.getTenantPackageListByTypeBuiltIn();
        Set<Long> menuIds = new HashSet<>();
        for (TenantPackageDO tenantPackage : tenantPackages) {
            if (ArrayUtils.isEmpty(tenantPackage.getMenuIds())) {
                continue;
            }
            menuIds.addAll(tenantPackage.getMenuIds());
        }
        if (CollUtil.isEmpty(menuIds)) {
            throw exception(TENANT_NOT_EXISTS_MENU);
        }
        // 创建租户
        TenantDO tenant = BeanUtils.toBean(createReqVO, TenantDO.class);
        tenant.setPaymentPassword(passwordEncoder.encode(createReqVO.getPassword()));
        tenant.setAccountCount(30);
        tenant.setCurrentAccountCount(1);
        tenant.setMenuIds(menuIds);
        tenant.setPaymentAmount(BigDecimal.ZERO);
        tenant.setBalanceAmount(BigDecimal.ZERO);
        tenant.setRechargeAmount(BigDecimal.ZERO);
        tenantMapper.insert(tenant);
        // 创建租户的管理员
        TenantUtils.execute(tenant.getId(), () -> {
            initTenantMenu(createReqVO, menuIds, tenant, tenantPackages);
        });
        return tenant.getId();
    }

    private void initTenantMenu(TenantSaveReqVO createReqVO, Set<Long> menuIds, TenantDO tenant, List<TenantPackageDO> tenantPackages) {
        // 创建角色
        Long roleId = createRole(menuIds);
        // 创建用户，并分配角色
        Long userId = createUser(roleId, createReqVO);
        // 修改租户的管理员
        tenantMapper.updateById(new TenantDO().setId(tenant.getId()).setContactUserId(userId));
        //创建套餐订阅
        List<TenantPackageSubscribeDO> subscribeDOS = new ArrayList<>();
        LocalDateTime startTime = LocalDateTimeUtil.now();
        LocalDateTime endTime = startTime.plusDays(99999);
        tenantPackages.forEach(tenantPackage -> {
            TenantPackageSubscribeDO tenantPackageSubscribe = new TenantPackageSubscribeDO();
            BigDecimal totalPrice = new BigDecimal(BigInteger.ZERO);
            tenantPackageSubscribe.setPackageName(tenantPackage.getName())
                    .setPackageCode(tenantPackage.getCode())
                    .setPackageType(tenantPackage.getType())
                    .setPackageLogo(tenantPackage.getLogo())
                    .setPackageStatus(tenantPackage.getStatus())
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
            subscribeDOS.add(tenantPackageSubscribe);
        });
        tenantPackageSubscribeMapper.insertBatch(subscribeDOS);
    }

    private Long createUser(Long roleId, TenantSaveReqVO createReqVO) {
        // 创建用户
        Long userId = userService.createUser(TenantConvert.INSTANCE.convert02(createReqVO));
        // 分配角色
        permissionService.assignUserRole(userId, singleton(roleId));
        return userId;
    }

    private Long createRole(Set<Long> menuIds) {
        // 创建角色
        RoleSaveReqVO reqVO = new RoleSaveReqVO();
        reqVO.setName(RoleCodeEnum.TENANT_ADMIN.getName()).setCode(RoleCodeEnum.TENANT_ADMIN.getCode())
                .setSort(0).setRemark("系统自动生成");
        Long roleId = roleService.createRole(reqVO, RoleTypeEnum.SYSTEM.getType());
        // 分配权限
        permissionService.assignRoleMenu(roleId, menuIds);
        return roleId;
    }

    @Override
    @DSTransactional // 多数据源，使用 @DSTransactional 保证本地事务，以及数据源的切换
    public void updateTenant(TenantSaveReqVO updateReqVO) {
        // 校验存在
        TenantDO tenant = validateUpdateTenant(updateReqVO.getId());
        //code不可修改
        if (!Objects.equals(tenant.getCode(), updateReqVO.getCode())) {
            throw exception(TENANT_PROHIBIT_UPDATE_CODE);
        }
        // 校验租户名称是否重复
        validTenantNameDuplicate(updateReqVO.getName(), updateReqVO.getId());
        // 校验租户域名是否重复
        validTenantWebsiteDuplicate(updateReqVO.getWebsite(), updateReqVO.getId());
        // 更新租户
        TenantDO updateObj = BeanUtils.toBean(updateReqVO, TenantDO.class);
        tenantMapper.updateById(updateObj);
    }

    @Override
    public void updateTenant(TenantDO tenant) {
        tenantMapper.updateById(tenant);
    }

    private void validTenantNameDuplicate(String name, Long id) {
        TenantDO tenant = tenantMapper.selectByName(name);
        if (tenant == null) {
            return;
        }
        // 如果 id 为空，说明不用比较是否为相同名字的租户
        if (id == null) {
            throw exception(TENANT_NAME_DUPLICATE, name);
        }
        if (!tenant.getId().equals(id)) {
            throw exception(TENANT_NAME_DUPLICATE, name);
        }
    }

    private void validTenantWebsiteDuplicate(String website, Long id) {
        if (StrUtil.isEmpty(website)) {
            return;
        }
        TenantDO tenant = tenantMapper.selectByWebsite(website);
        if (tenant == null) {
            return;
        }
        // 如果 id 为空，说明不用比较是否为相同名字的租户
        if (id == null) {
            throw exception(TENANT_WEBSITE_DUPLICATE, website);
        }
        if (!tenant.getId().equals(id)) {
            throw exception(TENANT_WEBSITE_DUPLICATE, website);
        }
    }

    @Override
    @DSTransactional(propagation = DsPropagation.REQUIRES_NEW)
    public void updateTenantRoleMenu(Long tenantId, Set<Long> menuIds) {
        TenantUtils.execute(tenantId, () -> {
            // 获得所有角色
            List<RoleDO> roles = roleService.getRoleList();
            roles.forEach(role -> Assert.isTrue(tenantId.equals(role.getTenantId()), "角色({}/{}) 租户不匹配",
                    role.getId(), role.getTenantId(), tenantId)); // 兜底校验
            // 重新分配每个角色的权限
            roles.forEach(role -> {
                // 如果是租户管理员，重新分配其权限为租户套餐的权限
                if (Objects.equals(role.getCode(), RoleCodeEnum.TENANT_ADMIN.getCode())) {
                    permissionService.assignRoleMenu(role.getId(), menuIds);
                    log.info("[updateTenantRoleMenu][租户管理员({}/{}) 的权限修改为({})]", role.getId(), role.getTenantId(), menuIds);
                    return;
                }
                // 如果是其他角色，则去掉超过套餐的权限
                Set<Long> roleMenuIds = permissionService.getRoleMenuListByRoleId(role.getId());
                roleMenuIds = CollUtil.intersectionDistinct(roleMenuIds, menuIds);
                permissionService.assignRoleMenu(role.getId(), roleMenuIds);
                log.info("[updateTenantRoleMenu][角色({}/{}) 的权限修改为({})]", role.getId(), role.getTenantId(), roleMenuIds);
            });
        });
    }

    @Override
    @DSTransactional(propagation = DsPropagation.REQUIRES_NEW)
    @TenantIgnore // 忽略多租户,防止套餐更新权限失败
    public void updateTenantMenuByTenantCode(String code) {
        //查到对应的租户
        TenantDO tenantDO = this.selectByCode(code);
        if (ObjectUtils.isNull(tenantDO)) {
            return;
        }
        //拿到租户的套餐
        List<TenantPackageDO> tenantPackages = tenantPackageService.getTenantPackageByCode(code);

        Set<Long> menuIds = new HashSet<>();
        for (TenantPackageDO tenantPackage : tenantPackages) {
            if (ArrayUtils.isEmpty(tenantPackage.getMenuIds())) {
                continue;
            }
            menuIds.addAll(tenantPackage.getMenuIds());
        }
        TenantUtils.execute(
                tenantDO.getId(), () -> {
                    updateTenantRoleMenu(tenantDO.getId(), menuIds);
                    //更新租户权限
                    tenantDO.setMenuIds(menuIds);
                    tenantMapper.updateById(tenantDO);
                }
        );
    }

    @Override
    public void deleteTenant(Long id) {
        // 校验存在
        validateUpdateTenant(id);
        // 删除
        tenantMapper.deleteById(id);
    }

    @Override
    public void deleteTenantList(List<Long> ids) {
        // 1. 校验存在
        ids.forEach(this::validateUpdateTenant);

        // 2. 批量删除
        tenantMapper.deleteByIds(ids);
    }

    private TenantDO validateUpdateTenant(Long id) {
        TenantDO tenant = tenantMapper.selectById(id);
        if (tenant == null) {
            throw exception(TENANT_NOT_EXISTS);
        }
        // 内置租户，不允许删除
        if (isSystemTenant(tenant)) {
            throw exception(TENANT_CAN_NOT_UPDATE_SYSTEM);
        }
        return tenant;
    }

    @Override
    @TenantIgnore // 忽略多租户,查询所有租户,如果不是系统租户时，则进行多租户的过滤
    public TenantDO getTenant(Long id) {
        Long tenantId = TenantContextHolder.getTenantId();
        if (isSystemTenantById(tenantId)) {
            return tenantMapper.selectById(id);
        } else {
            TenantDO[] result = new TenantDO[1];
            TenantUtils.execute(tenantId, () -> {
                result[0] = tenantMapper.selectById(id);
            });
            return result[0];
        }
    }

    @Override
    @TenantIgnore // 忽略多租户,查询所有租户,如果不是系统租户时，则进行多租户的过滤
    public PageResult<TenantDO> getTenantPage(TenantPageReqVO pageReqVO) {
        Long tenantId = TenantContextHolder.getTenantId();
        if (!isSystemTenantById(tenantId)) {
            pageReqVO.setId(tenantId);
        }
        return tenantMapper.selectPage(pageReqVO);
    }

    @Override
    public TenantDO getTenantByName(String name) {
        return tenantMapper.selectByName(name);
    }

    @Override
    public TenantDO getTenantByWebsite(String website) {
        return tenantMapper.selectByWebsite(website);
    }

    @Override
    public TenantDO selectByCode(String tenantCode) {
        return tenantMapper.selectByCode(tenantCode);
    }

    @Override
    public List<TenantDO> getTenantListByPackageCode(List<String> codes) {
        return tenantMapper.selectTenantByCodes(codes);
    }

    @Override
    public List<TenantDO> getTenantListByStatus(Integer status) {
        return tenantMapper.selectListByStatus(status);
    }

    @Override
    public void handleTenantInfo(TenantInfoHandler handler) {
        // 如果禁用，则不执行逻辑
        if (isTenantDisable()) {
            return;
        }
        // 获得租户
        TenantDO tenant = getTenant(TenantContextHolder.getRequiredTenantId());
        // 执行处理器
        handler.handle(tenant);
    }

    @Override
    public void handleTenantMenu(TenantMenuHandler handler) {
        // 如果禁用，则不执行逻辑
        if (isTenantDisable()) {
            return;
        }
        // 获得租户，然后获得菜单
        TenantDO tenant = getTenant(TenantContextHolder.getRequiredTenantId());
        Set<Long> menuIds;
        if (isSystemTenant(tenant)) { // 系统租户，菜单是全量的
            menuIds = CollectionUtils.convertSet(menuService.getMenuList(), MenuDO::getId);
        } else {
            menuIds = tenant.getMenuIds();
        }
        // 执行处理器
        handler.handle(menuIds);
    }

    @Override
    public boolean isSystemTenant(TenantDO tenant) {
        return Objects.equals(tenant.getId(), TenantDO.PACKAGE_ID_SYSTEM);
    }

    @Override
    public boolean isSystemTenantById(Long id) {
        return Objects.equals(id, TenantDO.PACKAGE_ID_SYSTEM);

    }

    private boolean isTenantDisable() {
        return tenantProperties == null || Boolean.FALSE.equals(tenantProperties.getEnable());
    }

}
