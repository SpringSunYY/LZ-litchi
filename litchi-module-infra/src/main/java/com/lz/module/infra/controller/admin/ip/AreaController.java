package com.lz.module.infra.controller.admin.ip;

import com.lz.framework.apilog.core.annotation.ApiAccessLog;
import com.lz.framework.common.pojo.CommonResult;
import com.lz.framework.common.util.object.BeanUtils;
import com.lz.framework.excel.core.util.ExcelUtils;
import com.lz.framework.ip.core.Area;
import com.lz.framework.ip.core.utils.AreaUtils;
import com.lz.framework.ip.core.utils.IPUtils;
import com.lz.module.infra.controller.admin.ip.vo.*;
import com.lz.module.infra.dal.dataobject.area.AreaDO;
import com.lz.module.infra.service.area.AreaService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.annotation.Resource;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.validation.Valid;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.Collections;
import java.util.List;

import static com.lz.framework.apilog.core.enums.OperateTypeEnum.EXPORT;
import static com.lz.framework.apilog.core.enums.OperateTypeEnum.IMPORT;
import static com.lz.framework.common.pojo.CommonResult.success;
import static com.lz.framework.excel.core.annotations.ExcelDirection.ONLY_IMPORT;

@Tag(name = "管理后台 - 地区")
@RestController
@RequestMapping("/infra/area")
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

    /**
     * 清除缓存
     * @return
     */
    @DeleteMapping("/clear-cache")
    @Operation(summary = "清除缓存")
    @PreAuthorize("@ss.hasPermission('infra:area:create')")
    public CommonResult<Boolean> clearCache() {
        areaService.clearCache();
        return success(true);
    }

    @PostMapping("/create")
    @Operation(summary = "创建地区信息")
    @PreAuthorize("@ss.hasPermission('infra:area:create')")
    public CommonResult<Long> createArea(@Valid @RequestBody AreaSaveReqVO createReqVO) {
        return success(areaService.createArea(createReqVO));
    }

    @PutMapping("/update")
    @Operation(summary = "更新地区信息")
    @PreAuthorize("@ss.hasPermission('infra:area:update')")
    public CommonResult<Boolean> updateArea(@Valid @RequestBody AreaSaveReqVO updateReqVO) {
        areaService.updateArea(updateReqVO);
        return success(true);
    }

    @DeleteMapping("/delete")
    @Operation(summary = "删除地区信息")
    @Parameter(name = "id", description = "编号", required = true)
    @PreAuthorize("@ss.hasPermission('infra:area:delete')")
    public CommonResult<Boolean> deleteArea(@RequestParam("id") Long id) {
        areaService.deleteArea(id);
        return success(true);
    }


    @GetMapping("/get")
    @Operation(summary = "获得地区信息")
    @Parameter(name = "id", description = "编号", required = true, example = "1024")
    @PreAuthorize("@ss.hasPermission('infra:area:query')")
    public CommonResult<AreaRespVO> getArea(@RequestParam("id") Long id) {
        AreaDO area = areaService.getArea(id);
        return success(BeanUtils.toBean(area, AreaRespVO.class));
    }

    @GetMapping("/list")
    @Operation(summary = "获得地区信息列表")
    @PreAuthorize("@ss.hasPermission('infra:area:query')")
    public CommonResult<List<AreaRespVO>> getAreaList(@Valid AreaListReqVO listReqVO) {
        List<AreaDO> list = areaService.getAreaList(listReqVO);
        return success(BeanUtils.toBean(list, AreaRespVO.class));
    }

    @GetMapping("/export-excel")
    @Operation(summary = "导出地区信息 Excel")
    @PreAuthorize("@ss.hasPermission('infra:area:export')")
    @ApiAccessLog(operateType = EXPORT)
    public void exportAreaExcel(@Valid AreaListReqVO listReqVO,
                                HttpServletResponse response) throws IOException {
        List<AreaDO> list = areaService.getAreaList(listReqVO);
        // 导出 Excel
        ExcelUtils.write(response, "地区信息.xls", "数据", AreaExcelVO.class,
                BeanUtils.toBean(list, AreaExcelVO.class));
    }


    /**
     * 获取地区信息导入模板
     */
    @GetMapping("/get-import-template")
    @PreAuthorize("@ss.hasPermission('infra:area:import')")
    @Operation(summary = "获得地区信息导入模板")
    public void importTemplate(HttpServletResponse response) throws IOException {
        // 手动创建导出 demo
        List<AreaExcelVO> list = Collections.singletonList(
                AreaExcelVO.builder()
                        .code(null)
                        .name("赵六")
                        .postalCode(null)
                        .parentCode("0")
                        .level(null)
                        .longitude(null)
                        .latitude(null)
                        .source(null)
                        .geoJson(null)
                        .sortNum(null)
                        .ancestors(null)
                        .build());
        // 输出
        ExcelUtils.write(response, "地区信息导入模板.xls", "地区信息模板", AreaExcelVO.class, list,ONLY_IMPORT);
    }

    /**
     * 导入地区信息
     */
    @PostMapping("/import")
    @Operation(summary = "导入地区信息")
    @Parameter(name = "file", description = "Excel 文件", required = true)
    @PreAuthorize("@ss.hasPermission('infra:area:import')")
    @ApiAccessLog(operateType = IMPORT)
    public CommonResult<AreaExcelRespVO> importExcel(@RequestParam("file") MultipartFile file) throws Exception {
        List<AreaExcelVO> list = ExcelUtils.read(file, AreaExcelVO.class);
        return success(areaService.importAreaList(list));
    }

}
