package com.lz.module.infra.controller.admin.i18n;

import com.lz.framework.apilog.core.annotation.ApiAccessLog;
import com.lz.framework.common.pojo.CommonResult;
import com.lz.framework.common.pojo.PageParam;
import com.lz.framework.common.pojo.PageResult;
import com.lz.framework.common.util.object.BeanUtils;
import com.lz.framework.excel.core.util.ExcelUtils;
import com.lz.module.infra.controller.admin.i18n.vo.I18nMessagePageReqVO;
import com.lz.module.infra.controller.admin.i18n.vo.I18nMessageRespVO;
import com.lz.module.infra.controller.admin.i18n.vo.I18nMessageSaveReqVO;
import com.lz.module.infra.dal.dataobject.i18n.I18nMessageDO;
import com.lz.module.infra.service.i18n.I18nMessageService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.annotation.Resource;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.validation.Valid;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.util.List;

import static com.lz.framework.apilog.core.enums.OperateTypeEnum.EXPORT;
import static com.lz.framework.common.pojo.CommonResult.success;

@Tag(name = "管理后台 - 国际化信息")
@RestController
@RequestMapping("/infra/i18n/message")
@Validated
public class I18nMessageController {

    @Resource
    private I18nMessageService i18nMessageService;

    @PostMapping("/create")
    @Operation(summary = "创建国际化信息")
    @PreAuthorize("@ss.hasPermission('infra:message:create')")
    public CommonResult<Long> createI18nMessage(@Valid @RequestBody I18nMessageSaveReqVO createReqVO) {
        return success(i18nMessageService.createI18nMessage(createReqVO));
    }

    @PutMapping("/update")
    @Operation(summary = "更新国际化信息")
    @PreAuthorize("@ss.hasPermission('infra:message:update')")
    public CommonResult<Boolean> updateI18nMessage(@Valid @RequestBody I18nMessageSaveReqVO updateReqVO) {
        i18nMessageService.updateI18nMessage(updateReqVO);
        return success(true);
    }

    @DeleteMapping("/delete")
    @Operation(summary = "删除国际化信息")
    @Parameter(name = "id", description = "编号", required = true)
    @PreAuthorize("@ss.hasPermission('infra:message:delete')")
    public CommonResult<Boolean> deleteI18nMessage(@RequestParam("id") Long id) {
        i18nMessageService.deleteI18nMessage(id);
        return success(true);
    }

    @DeleteMapping("/delete-list")
    @Parameter(name = "ids", description = "编号", required = true)
    @Operation(summary = "批量删除国际化信息")
    @PreAuthorize("@ss.hasPermission('infra:message:delete')")
    public CommonResult<Boolean> deleteI18nMessageList(@RequestParam("ids") List<Long> ids) {
        i18nMessageService.deleteI18nMessageListByIds(ids);
        return success(true);
    }

    @GetMapping("/get")
    @Operation(summary = "获得国际化信息")
    @Parameter(name = "id", description = "编号", required = true, example = "1024")
    @PreAuthorize("@ss.hasPermission('infra:message:query')")
    public CommonResult<I18nMessageRespVO> getI18nMessage(@RequestParam("id") Long id) {
        I18nMessageDO i18nMessage = i18nMessageService.getI18nMessage(id);
        return success(BeanUtils.toBean(i18nMessage, I18nMessageRespVO.class));
    }

    @GetMapping("/page")
    @Operation(summary = "获得国际化信息分页")
    @PreAuthorize("@ss.hasPermission('infra:message:query')")
    public CommonResult<PageResult<I18nMessageRespVO>> getI18nMessagePage(@Valid I18nMessagePageReqVO pageReqVO) {
        PageResult<I18nMessageDO> pageResult = i18nMessageService.getI18nMessagePage(pageReqVO);
        return success(BeanUtils.toBean(pageResult, I18nMessageRespVO.class));
    }

    @GetMapping("/export-excel")
    @Operation(summary = "导出国际化信息 Excel")
    @PreAuthorize("@ss.hasPermission('infra:message:export')")
    @ApiAccessLog(operateType = EXPORT)
    public void exportI18nMessageExcel(@Valid I18nMessagePageReqVO pageReqVO,
                                       HttpServletResponse response) throws IOException {
        pageReqVO.setPageSize(PageParam.PAGE_SIZE_NONE);
        List<I18nMessageDO> list = i18nMessageService.getI18nMessagePage(pageReqVO).getList();
        // 导出 Excel
        ExcelUtils.write(response, "国际化信息.xls", "数据", I18nMessageRespVO.class,
                BeanUtils.toBean(list, I18nMessageRespVO.class));
    }

}