package com.lz.module.system.controller.admin.ip;

import cn.hutool.core.lang.Assert;
import com.lz.framework.apilog.core.annotation.ApiAccessLog;
import com.lz.framework.common.pojo.CommonResult;
import com.lz.framework.common.util.object.BeanUtils;
import com.lz.framework.excel.core.util.ExcelUtils;
import com.lz.framework.ip.core.Area;
import com.lz.framework.ip.core.utils.AreaUtils;
import com.lz.framework.ip.core.utils.IPUtils;
import com.lz.module.system.controller.admin.ip.vo.AreaListReqVO;
import com.lz.module.system.controller.admin.ip.vo.AreaNodeRespVO;
import com.lz.module.system.controller.admin.ip.vo.AreaRespVO;
import com.lz.module.system.controller.admin.ip.vo.AreaSaveReqVO;
import com.lz.module.system.dal.dataobject.area.AreaDO;
import com.lz.module.system.service.area.AreaService;
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
@Tag(name = "管理后台 - 地区")
@RestController
@RequestMapping("/system/area")
@Validated
public class AreaController {
    @Resource
    private AreaService areaService;

    @GetMapping("/tree")
    @Operation(summary = "获得地区树")
    public CommonResult<List<AreaNodeRespVO>> getAreaTree(@Valid AreaListReqVO req) {
        return success(areaService.getAreaTree(req));
    }

    @GetMapping("/get-by-ip")
    @Operation(summary = "获得 IP 对应的地区名")
    @Parameter(name = "ip", description = "IP", required = true)
    public CommonResult<String> getAreaByIp(@RequestParam("ip") String ip) {
        // 获得城市
        Area area = IPUtils.getArea(ip);
        if (area == null) {
            return success("未知");
        }
        // 格式化返回
        return success(AreaUtils.format(area.getId()));
    }

    @PostMapping("/create")
    @Operation(summary = "创建地区信息")
    @PreAuthorize("@ss.hasPermission('system:area:create')")
    public CommonResult<Long> createArea(@Valid @RequestBody AreaSaveReqVO createReqVO) {
        return success(areaService.createArea(createReqVO));
    }

    @PutMapping("/update")
    @Operation(summary = "更新地区信息")
    @PreAuthorize("@ss.hasPermission('system:area:update')")
    public CommonResult<Boolean> updateArea(@Valid @RequestBody AreaSaveReqVO updateReqVO) {
        areaService.updateArea(updateReqVO);
        return success(true);
    }

    @DeleteMapping("/delete")
    @Operation(summary = "删除地区信息")
    @Parameter(name = "id", description = "编号", required = true)
    @PreAuthorize("@ss.hasPermission('system:area:delete')")
    public CommonResult<Boolean> deleteArea(@RequestParam("id") Long id) {
        areaService.deleteArea(id);
        return success(true);
    }


    @GetMapping("/get")
    @Operation(summary = "获得地区信息")
    @Parameter(name = "id", description = "编号", required = true, example = "1024")
    @PreAuthorize("@ss.hasPermission('system:area:query')")
    public CommonResult<AreaRespVO> getArea(@RequestParam("id") Long id) {
        AreaDO area = areaService.getArea(id);
        return success(BeanUtils.toBean(area, AreaRespVO.class));
    }

    @GetMapping("/list")
    @Operation(summary = "获得地区信息列表")
    @PreAuthorize("@ss.hasPermission('system:area:query')")
    public CommonResult<List<AreaRespVO>> getAreaList(@Valid AreaListReqVO listReqVO) {
        List<AreaDO> list = areaService.getAreaList(listReqVO);
        return success(BeanUtils.toBean(list, AreaRespVO.class));
    }

    @GetMapping("/export-excel")
    @Operation(summary = "导出地区信息 Excel")
    @PreAuthorize("@ss.hasPermission('system:area:export')")
    @ApiAccessLog(operateType = EXPORT)
    public void exportAreaExcel(@Valid AreaListReqVO listReqVO,
                                HttpServletResponse response) throws IOException {
        List<AreaDO> list = areaService.getAreaList(listReqVO);
        // 导出 Excel
        ExcelUtils.write(response, "地区信息.xls", "数据", AreaRespVO.class,
                BeanUtils.toBean(list, AreaRespVO.class));
    }

}
