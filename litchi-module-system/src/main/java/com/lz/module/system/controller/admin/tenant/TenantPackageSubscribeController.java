package com.lz.module.system.controller.admin.tenant;

import com.lz.module.system.controller.admin.tenant.vo.packageSubscribe.TenantPackageSubscribePageReqVO;
import com.lz.module.system.controller.admin.tenant.vo.packageSubscribe.TenantPackageSubscribeRespVO;
import com.lz.module.system.controller.admin.tenant.vo.packageSubscribe.TenantPackageSubscribeSaveReqVO;
import org.springframework.web.bind.annotation.*;
import jakarta.annotation.Resource;
import org.springframework.validation.annotation.Validated;
import org.springframework.security.access.prepost.PreAuthorize;
import io.swagger.v3.oas.annotations.tags.Tag;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.Operation;

import jakarta.validation.*;
import jakarta.servlet.http.*;
import java.util.*;
import java.io.IOException;

import com.lz.framework.common.pojo.PageParam;
import com.lz.framework.common.pojo.PageResult;
import com.lz.framework.common.pojo.CommonResult;
import com.lz.framework.common.util.object.BeanUtils;
import static com.lz.framework.common.pojo.CommonResult.success;

import com.lz.framework.excel.core.util.ExcelUtils;

import com.lz.framework.apilog.core.annotation.ApiAccessLog;
import static com.lz.framework.apilog.core.enums.OperateTypeEnum.*;

import com.lz.module.system.dal.dataobject.tenant.TenantPackageSubscribeDO;
import com.lz.module.system.service.tenant.TenantPackageSubscribeService;

@Tag(name = "管理后台 - 租户套餐订阅")
@RestController
@RequestMapping("/system/tenant-package-subscribe")
@Validated
public class TenantPackageSubscribeController {

    @Resource
    private TenantPackageSubscribeService tenantPackageSubscribeService;

    @PostMapping("/create")
    @Operation(summary = "创建租户套餐订阅")
    @PreAuthorize("@ss.hasPermission('system:tenantPackageSubscribe:create')")
    public CommonResult<Long> createTenantPackageSubscribe(@Valid @RequestBody TenantPackageSubscribeSaveReqVO createReqVO) {
        return success(tenantPackageSubscribeService.createTenantPackageSubscribe(createReqVO));
    }

    @PutMapping("/update")
    @Operation(summary = "更新租户套餐订阅")
    @PreAuthorize("@ss.hasPermission('system:tenantPackageSubscribe:update')")
    public CommonResult<Boolean> updateTenantPackageSubscribe(@Valid @RequestBody TenantPackageSubscribeSaveReqVO updateReqVO) {
        tenantPackageSubscribeService.updateTenantPackageSubscribe(updateReqVO);
        return success(true);
    }

    @DeleteMapping("/delete")
    @Operation(summary = "删除租户套餐订阅")
    @Parameter(name = "id", description = "编号", required = true)
    @PreAuthorize("@ss.hasPermission('system:tenantPackageSubscribe:delete')")
    public CommonResult<Boolean> deleteTenantPackageSubscribe(@RequestParam("id") Long id) {
        tenantPackageSubscribeService.deleteTenantPackageSubscribe(id);
        return success(true);
    }

    @DeleteMapping("/delete-list")
    @Parameter(name = "ids", description = "编号", required = true)
    @Operation(summary = "批量删除租户套餐订阅")
                @PreAuthorize("@ss.hasPermission('system:tenantPackageSubscribe:delete')")
    public CommonResult<Boolean> deleteTenantPackageSubscribeList(@RequestParam("ids") List<Long> ids) {
        tenantPackageSubscribeService.deleteTenantPackageSubscribeListByIds(ids);
        return success(true);
    }

    @GetMapping("/get")
    @Operation(summary = "获得租户套餐订阅")
    @Parameter(name = "id", description = "编号", required = true, example = "1024")
    @PreAuthorize("@ss.hasPermission('system:tenantPackageSubscribe:query')")
    public CommonResult<TenantPackageSubscribeRespVO> getTenantPackageSubscribe(@RequestParam("id") Long id) {
        TenantPackageSubscribeDO tenantPackageSubscribe = tenantPackageSubscribeService.getTenantPackageSubscribe(id);
        return success(BeanUtils.toBean(tenantPackageSubscribe, TenantPackageSubscribeRespVO.class));
    }

    @GetMapping("/page")
    @Operation(summary = "获得租户套餐订阅分页")
    @PreAuthorize("@ss.hasPermission('system:tenantPackageSubscribe:query')")
    public CommonResult<PageResult<TenantPackageSubscribeRespVO>> getTenantPackageSubscribePage(@Valid TenantPackageSubscribePageReqVO pageReqVO) {
        PageResult<TenantPackageSubscribeDO> pageResult = tenantPackageSubscribeService.getTenantPackageSubscribePage(pageReqVO);
        return success(BeanUtils.toBean(pageResult, TenantPackageSubscribeRespVO.class));
    }

    @GetMapping("/export-excel")
    @Operation(summary = "导出租户套餐订阅 Excel")
    @PreAuthorize("@ss.hasPermission('system:tenantPackageSubscribe:export')")
    @ApiAccessLog(operateType = EXPORT)
    public void exportTenantPackageSubscribeExcel(@Valid TenantPackageSubscribePageReqVO pageReqVO,
              HttpServletResponse response) throws IOException {
        pageReqVO.setPageSize(PageParam.PAGE_SIZE_NONE);
        List<TenantPackageSubscribeDO> list = tenantPackageSubscribeService.getTenantPackageSubscribePage(pageReqVO).getList();
        // 导出 Excel
        ExcelUtils.write(response, "租户套餐订阅.xls", "数据", TenantPackageSubscribeRespVO.class,
                        BeanUtils.toBean(list, TenantPackageSubscribeRespVO.class));
    }

}