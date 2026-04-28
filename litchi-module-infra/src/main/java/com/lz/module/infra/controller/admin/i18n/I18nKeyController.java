package com.lz.module.infra.controller.admin.i18n;

import com.lz.module.infra.controller.admin.i18n.vo.I18nKeyPageReqVO;
import com.lz.module.infra.controller.admin.i18n.vo.I18nKeyRespVO;
import com.lz.module.infra.controller.admin.i18n.vo.I18nKeySaveReqVO;
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

import com.lz.module.infra.dal.dataobject.i18n.I18nKeyDO;
import com.lz.module.infra.service.i18n.I18nKeyService;

@Tag(name = "管理后台 - 国际化键名")
@RestController
@RequestMapping("/infra/i18n/key")
@Validated
public class I18nKeyController {

    @Resource
    private I18nKeyService i18nKeyService;

    @PostMapping("/create")
    @Operation(summary = "创建国际化键名")
    @PreAuthorize("@ss.hasPermission('infra:message:create')")
    public CommonResult<Long> createI18nKey(@Valid @RequestBody I18nKeySaveReqVO createReqVO) {
        return success(i18nKeyService.createI18nKey(createReqVO));
    }

    @PutMapping("/update")
    @Operation(summary = "更新国际化键名")
    @PreAuthorize("@ss.hasPermission('infra:message:update')")
    public CommonResult<Boolean> updateI18nKey(@Valid @RequestBody I18nKeySaveReqVO updateReqVO) {
        i18nKeyService.updateI18nKey(updateReqVO);
        return success(true);
    }

    @DeleteMapping("/delete")
    @Operation(summary = "删除国际化键名")
    @Parameter(name = "id", description = "编号", required = true)
    @PreAuthorize("@ss.hasPermission('infra:message:delete')")
    public CommonResult<Boolean> deleteI18nKey(@RequestParam("id") Long id,
                                               @RequestParam("isDeleteChildren") Boolean isDeleteChildren) {
        i18nKeyService.deleteI18nKey(id,isDeleteChildren);
        return success(true);
    }

    @DeleteMapping("/delete-list")
    @Parameter(name = "ids", description = "编号", required = true)
    @Operation(summary = "批量删除国际化键名")
                @PreAuthorize("@ss.hasPermission('infra:message:delete')")
    public CommonResult<Boolean> deleteI18nKeyList(@RequestParam("ids") List<Long> ids) {
        i18nKeyService.deleteI18nKeyListByIds(ids);
        return success(true);
    }

    @GetMapping("/get")
    @Operation(summary = "获得国际化键名")
    @Parameter(name = "id", description = "编号", required = true, example = "1024")
    @PreAuthorize("@ss.hasPermission('infra:message:query')")
    public CommonResult<I18nKeyRespVO> getI18nKey(@RequestParam("id") Long id) {
        I18nKeyDO i18nKey = i18nKeyService.getI18nKey(id);
        return success(BeanUtils.toBean(i18nKey, I18nKeyRespVO.class));
    }

    @GetMapping("/page")
    @Operation(summary = "获得国际化键名分页")
    @PreAuthorize("@ss.hasPermission('infra:message:query')")
    public CommonResult<PageResult<I18nKeyRespVO>> getI18nKeyPage(@Valid I18nKeyPageReqVO pageReqVO) {
        PageResult<I18nKeyDO> pageResult = i18nKeyService.getI18nKeyPage(pageReqVO);
        return success(BeanUtils.toBean(pageResult, I18nKeyRespVO.class));
    }

    @GetMapping("/export-excel")
    @Operation(summary = "导出国际化键名 Excel")
    @PreAuthorize("@ss.hasPermission('infra:message:export')")
    @ApiAccessLog(operateType = EXPORT)
    public void exportI18nKeyExcel(@Valid I18nKeyPageReqVO pageReqVO,
              HttpServletResponse response) throws IOException {
        pageReqVO.setPageSize(PageParam.PAGE_SIZE_NONE);
        List<I18nKeyDO> list = i18nKeyService.getI18nKeyPage(pageReqVO).getList();
        // 导出 Excel
        ExcelUtils.write(response, "国际化键名.xls", "数据", I18nKeyRespVO.class,
                        BeanUtils.toBean(list, I18nKeyRespVO.class));
    }

}