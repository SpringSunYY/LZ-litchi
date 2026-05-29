package com.lz.module.erp.controller.admin.stock.vo.warehouse;

import com.lz.framework.excel.core.annotations.ExcelColumnSelect;
import com.lz.framework.excel.core.annotations.ExcelI18n;
import com.lz.framework.excel.core.convert.DictConvert;
import com.lz.module.system.enums.DictTypeConstants;
import com.alibaba.excel.annotation.ExcelIgnoreUnannotated;
import com.alibaba.excel.annotation.ExcelProperty;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.math.BigDecimal;
import java.time.LocalDateTime;

@Schema(description = "管理后台 - ERP 仓库 Response VO")
@Data
@ExcelIgnoreUnannotated
public class ErpWarehouseRespVO {

    @Schema(description = "仓库编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "11614")
    @ExcelProperty("仓库编号")
    @ExcelI18n(i18nKey = "erp.warehouse.field.id")
    private Long id;

    @Schema(description = "仓库名称", requiredMode = Schema.RequiredMode.REQUIRED, example = "李四")
    @ExcelProperty("仓库名称")
    @ExcelI18n(i18nKey = "erp.warehouse.field.name")
    private String name;

    @Schema(description = "仓库地址", example = "上海陆家嘴")
    @ExcelProperty("仓库地址")
    @ExcelI18n(i18nKey = "erp.warehouse.field.address")
    private String address;

    @Schema(description = "排序", requiredMode = Schema.RequiredMode.REQUIRED, example = "10")
    @ExcelProperty("排序")
    @ExcelI18n(i18nKey = "erp.warehouse.field.sort")
    private Long sort;

    @Schema(description = "备注", example = "随便")
    @ExcelProperty("备注")
    @ExcelI18n(i18nKey = "erp.warehouse.field.remark")
    private String remark;

    @Schema(description = "负责人", example = "芋头")
    @ExcelProperty("负责人")
    @ExcelI18n(i18nKey = "erp.warehouse.field.principal")
    private String principal;

    @Schema(description = "仓储费，单位：元", example = "13973")
    @ExcelProperty("仓储费，单位：元")
    @ExcelI18n(i18nKey = "erp.warehouse.field.warehousePrice")
    private BigDecimal warehousePrice;

    @Schema(description = "搬运费，单位：元", example = "9903")
    @ExcelProperty("搬运费，单位：元")
    @ExcelI18n(i18nKey = "erp.warehouse.field.truckagePrice")
    private BigDecimal truckagePrice;

    @Schema(description = "开启状态", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @ExcelProperty(value = "开启状态", converter = DictConvert.class)
    @ExcelColumnSelect(dictType = DictTypeConstants.COMMON_STATUS, i18n = true)
    @ExcelI18n(i18nKey = "erp.warehouse.field.status")
    private Integer status;

    @Schema(description = "是否默认", example = "1")
    @ExcelProperty("是否默认")
    @ExcelI18n(i18nKey = "erp.warehouse.field.defaultStatus")
    private Boolean defaultStatus;

    @Schema(description = "创建时间", requiredMode = Schema.RequiredMode.REQUIRED)
    @ExcelProperty("创建时间")
    @ExcelI18n(i18nKey = "erp.warehouse.field.createTime")
    private LocalDateTime createTime;

}
