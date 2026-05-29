package com.lz.module.erp.controller.admin.product.vo.product;

import com.alibaba.excel.annotation.ExcelIgnoreUnannotated;
import com.alibaba.excel.annotation.ExcelProperty;
import com.lz.framework.excel.core.annotations.ExcelI18n;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.math.BigDecimal;
import java.time.LocalDateTime;

@Schema(description = "管理后台 - ERP 产品 Response VO")
@Data
@ExcelIgnoreUnannotated
public class ErpProductRespVO {

    @Schema(description = "产品编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "15672")
    @ExcelProperty("产品编号")
    @ExcelI18n(i18nKey = "erp.product.field.id")
    private Long id;

    @Schema(description = "产品名称", requiredMode = Schema.RequiredMode.REQUIRED, example = "李四")
    @ExcelProperty("产品名称")
    @ExcelI18n(i18nKey = "erp.product.field.name")
    private String name;

    @Schema(description = "产品条码", requiredMode = Schema.RequiredMode.REQUIRED, example = "X110")
    @ExcelProperty("产品条码")
    @ExcelI18n(i18nKey = "erp.product.field.barCode")
    private String barCode;

    @Schema(description = "产品分类编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "11161")
    private Long categoryId;
    @Schema(description = "产品分类", requiredMode = Schema.RequiredMode.REQUIRED, example = "水果")
    @ExcelProperty("产品分类")
    @ExcelI18n(i18nKey = "erp.product.field.categoryName")
    private String categoryName;

    @Schema(description = "单位编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "8869")
    private Long unitId;
    @Schema(description = "单位", requiredMode = Schema.RequiredMode.REQUIRED, example = "个")
    @ExcelProperty("单位")
    @ExcelI18n(i18nKey = "erp.product.field.unitName")
    private String unitName;

    @Schema(description = "产品状态", requiredMode = Schema.RequiredMode.REQUIRED, example = "2")
    @ExcelProperty("产品状态")
    @ExcelI18n(i18nKey = "erp.product.field.status")
    private Integer status;

    @Schema(description = "产品规格", example = "红色")
    @ExcelProperty("产品规格")
    @ExcelI18n(i18nKey = "erp.product.field.standard")
    private String standard;

    @Schema(description = "产品备注", example = "你猜")
    @ExcelProperty("产品备注")
    @ExcelI18n(i18nKey = "erp.product.field.remark")
    private String remark;

    @Schema(description = "保质期天数", example = "10")
    @ExcelProperty("保质期天数")
    @ExcelI18n(i18nKey = "erp.product.field.expiryDay")
    private Integer expiryDay;

    @Schema(description = "基础重量（kg）", example = "1.00")
    @ExcelProperty("基础重量（kg）")
    @ExcelI18n(i18nKey = "erp.product.field.weight")
    private BigDecimal weight;

    @Schema(description = "采购价格，单位：元", example = "10.30")
    @ExcelProperty("采购价格，单位：元")
    @ExcelI18n(i18nKey = "erp.product.field.purchasePrice")
    private BigDecimal purchasePrice;

    @Schema(description = "销售价格，单位：元", example = "74.32")
    @ExcelProperty("销售价格，单位：元")
    @ExcelI18n(i18nKey = "erp.product.field.salePrice")
    private BigDecimal salePrice;

    @Schema(description = "最低价格，单位：元", example = "161.87")
    @ExcelProperty("最低价格，单位：元")
    @ExcelI18n(i18nKey = "erp.product.field.minPrice")
    private BigDecimal minPrice;

    @Schema(description = "创建时间", requiredMode = Schema.RequiredMode.REQUIRED)
    @ExcelProperty("创建时间")
    @ExcelI18n(i18nKey = "erp.product.field.createTime")
    private LocalDateTime createTime;

}