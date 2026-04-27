package com.lz.module.infra.controller.admin.i18n;

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

import com.lz.module.infra.controller.admin.i18n.vo.*;
import com.lz.module.infra.dal.dataobject.i18n.I18nLocaleDO;
import com.lz.module.infra.service.i18n.I18nLocaleService;

@Tag(name = "管理后台 - 国际化国家")
@RestController
@RequestMapping("/infra/i18n/locale")
@Validated
public class I18nLocaleController {

    @Resource
    private I18nLocaleService i18nLocaleService;

    @PostMapping("/create")
    @Operation(summary = "创建国际化国家")
    @PreAuthorize("@ss.hasPermission('infra:i18n-locale:create')")
    public CommonResult<Long> createI18nLocale(@Valid @RequestBody I18nLocaleSaveReqVO createReqVO) {
        return success(i18nLocaleService.createI18nLocale(createReqVO));
    }

    @PutMapping("/update")
    @Operation(summary = "更新国际化国家")
    @PreAuthorize("@ss.hasPermission('infra:i18n-locale:update')")
    public CommonResult<Boolean> updateI18nLocale(@Valid @RequestBody I18nLocaleSaveReqVO updateReqVO) {
        i18nLocaleService.updateI18nLocale(updateReqVO);
        return success(true);
    }

    @DeleteMapping("/delete")
    @Operation(summary = "删除国际化国家")
    @Parameter(name = "id", description = "编号", required = true)
    @PreAuthorize("@ss.hasPermission('infra:i18n-locale:delete')")
    public CommonResult<Boolean> deleteI18nLocale(@RequestParam("id") Long id) {
        i18nLocaleService.deleteI18nLocale(id);
        return success(true);
    }

    @DeleteMapping("/delete-list")
    @Parameter(name = "ids", description = "编号", required = true)
    @Operation(summary = "批量删除国际化国家")
                @PreAuthorize("@ss.hasPermission('infra:i18n-locale:delete')")
    public CommonResult<Boolean> deleteI18nLocaleList(@RequestParam("ids") List<Long> ids) {
        i18nLocaleService.deleteI18nLocaleListByIds(ids);
        return success(true);
    }

    @GetMapping("/get")
    @Operation(summary = "获得国际化国家")
    @Parameter(name = "id", description = "编号", required = true, example = "1024")
    @PreAuthorize("@ss.hasPermission('infra:i18n-locale:query')")
    public CommonResult<I18nLocaleRespVO> getI18nLocale(@RequestParam("id") Long id) {
        I18nLocaleDO i18nLocale = i18nLocaleService.getI18nLocale(id);
        return success(BeanUtils.toBean(i18nLocale, I18nLocaleRespVO.class));
    }

    @GetMapping("/page")
    @Operation(summary = "获得国际化国家分页")
    @PreAuthorize("@ss.hasPermission('infra:i18n-locale:query')")
    public CommonResult<PageResult<I18nLocaleRespVO>> getI18nLocalePage(@Valid I18nLocalePageReqVO pageReqVO) {
        PageResult<I18nLocaleDO> pageResult = i18nLocaleService.getI18nLocalePage(pageReqVO);
        return success(BeanUtils.toBean(pageResult, I18nLocaleRespVO.class));
    }

    @GetMapping("/export-excel")
    @Operation(summary = "导出国际化国家 Excel")
    @PreAuthorize("@ss.hasPermission('infra:i18n-locale:export')")
    @ApiAccessLog(operateType = EXPORT)
    public void exportI18nLocaleExcel(@Valid I18nLocalePageReqVO pageReqVO,
              HttpServletResponse response) throws IOException {
        pageReqVO.setPageSize(PageParam.PAGE_SIZE_NONE);
        List<I18nLocaleDO> list = i18nLocaleService.getI18nLocalePage(pageReqVO).getList();
        // 导出 Excel
        ExcelUtils.write(response, "国际化国家.xls", "数据", I18nLocaleRespVO.class,
                        BeanUtils.toBean(list, I18nLocaleRespVO.class));
    }

}