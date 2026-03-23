package com.lz.module.crm.controller.admin.customer;

import cn.hutool.core.collection.CollUtil;
import com.lz.framework.common.pojo.CommonResult;
import com.lz.framework.common.pojo.PageResult;
import com.lz.framework.common.util.collection.CollectionUtils;
import com.lz.framework.common.util.object.BeanUtils;
import com.lz.module.crm.controller.admin.customer.vo.limitconfig.CrmCustomerLimitConfigPageReqVO;
import com.lz.module.crm.controller.admin.customer.vo.limitconfig.CrmCustomerLimitConfigRespVO;
import com.lz.module.crm.controller.admin.customer.vo.limitconfig.CrmCustomerLimitConfigSaveReqVO;
import com.lz.module.crm.dal.dataobject.customer.CrmCustomerLimitConfigDO;
import com.lz.module.crm.service.customer.CrmCustomerLimitConfigService;
import com.lz.module.system.api.dept.DeptApi;
import com.lz.module.system.api.dept.dto.DeptRespDTO;
import com.lz.module.system.api.user.AdminUserApi;
import com.lz.module.system.api.user.dto.AdminUserRespDTO;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.annotation.Resource;
import jakarta.validation.Valid;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.Collection;
import java.util.Map;

import static com.lz.framework.common.pojo.CommonResult.success;
import static com.lz.framework.common.util.collection.CollectionUtils.convertSetByFlatMap;

@Tag(name = "管理后台 - CRM 客户限制配置")
@RestController
@RequestMapping("/crm/customer-limit-config")
@Validated
public class CrmCustomerLimitConfigController {

    @Resource
    private CrmCustomerLimitConfigService customerLimitConfigService;

    @Resource
    private DeptApi deptApi;
    @Resource
    private AdminUserApi adminUserApi;

    @PostMapping("/create")
    @Operation(summary = "创建客户限制配置")
    @PreAuthorize("@ss.hasPermission('crm:customer-limit-config:create')")
    public CommonResult<Long> createCustomerLimitConfig(@Valid @RequestBody CrmCustomerLimitConfigSaveReqVO createReqVO) {
        return success(customerLimitConfigService.createCustomerLimitConfig(createReqVO));
    }

    @PutMapping("/update")
    @Operation(summary = "更新客户限制配置")
    @PreAuthorize("@ss.hasPermission('crm:customer-limit-config:update')")
    public CommonResult<Boolean> updateCustomerLimitConfig(@Valid @RequestBody CrmCustomerLimitConfigSaveReqVO updateReqVO) {
        customerLimitConfigService.updateCustomerLimitConfig(updateReqVO);
        return success(true);
    }

    @DeleteMapping("/delete")
    @Operation(summary = "删除客户限制配置")
    @Parameter(name = "id", description = "编号", required = true)
    @PreAuthorize("@ss.hasPermission('crm:customer-limit-config:delete')")
    public CommonResult<Boolean> deleteCustomerLimitConfig(@RequestParam("id") Long id) {
        customerLimitConfigService.deleteCustomerLimitConfig(id);
        return success(true);
    }

    @GetMapping("/get")
    @Operation(summary = "获得客户限制配置")
    @Parameter(name = "id", description = "编号", required = true, example = "1024")
    @PreAuthorize("@ss.hasPermission('crm:customer-limit-config:query')")
    public CommonResult<CrmCustomerLimitConfigRespVO> getCustomerLimitConfig(@RequestParam("id") Long id) {
        CrmCustomerLimitConfigDO limitConfig = customerLimitConfigService.getCustomerLimitConfig(id);
        // 拼接数据
        Map<Long, AdminUserRespDTO> userMap = adminUserApi.getUserMap(limitConfig.getUserIds());
        Map<Long, DeptRespDTO> deptMap = deptApi.getDeptMap(limitConfig.getDeptIds());
        return success(BeanUtils.toBean(limitConfig, CrmCustomerLimitConfigRespVO.class, configVO -> {
            configVO.setUsers(CollectionUtils.convertList(configVO.getUserIds(), userMap::get));
            configVO.setDepts(CollectionUtils.convertList(configVO.getDeptIds(), deptMap::get));
        }));
    }

    @GetMapping("/page")
    @Operation(summary = "获得客户限制配置分页")
    @PreAuthorize("@ss.hasPermission('crm:customer-limit-config:query')")
    public CommonResult<PageResult<CrmCustomerLimitConfigRespVO>> getCustomerLimitConfigPage(@Valid CrmCustomerLimitConfigPageReqVO pageVO) {
        PageResult<CrmCustomerLimitConfigDO> pageResult = customerLimitConfigService.getCustomerLimitConfigPage(pageVO);
        if (CollUtil.isEmpty(pageResult.getList())) {
            return success(PageResult.empty(pageResult.getTotal()));
        }
        // 拼接数据
        Map<Long, AdminUserRespDTO> userMap = adminUserApi.getUserMap(
                convertSetByFlatMap(pageResult.getList(), CrmCustomerLimitConfigDO::getUserIds, Collection::stream));
        Map<Long, DeptRespDTO> deptMap = deptApi.getDeptMap(
                convertSetByFlatMap(pageResult.getList(), CrmCustomerLimitConfigDO::getDeptIds, Collection::stream));
        return success(BeanUtils.toBean(pageResult, CrmCustomerLimitConfigRespVO.class, configVO -> {
            configVO.setUsers(CollectionUtils.convertList(configVO.getUserIds(), userMap::get));
            configVO.setDepts(CollectionUtils.convertList(configVO.getDeptIds(), deptMap::get));
        }));
    }

}
