package com.lz.module.erp.controller.admin.stock.vo.record;

import com.lz.framework.excel.core.annotations.ExcelColumnSelect;
import com.lz.framework.excel.core.annotations.ExcelI18n;
import com.lz.framework.excel.core.convert.DictConvert;
import com.lz.module.erp.enums.DictTypeConstants;
import com.alibaba.excel.annotation.ExcelIgnoreUnannotated;
import com.alibaba.excel.annotation.ExcelProperty;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.math.BigDecimal;
import java.time.LocalDateTime;

@Schema(description = "管理后台 - ERP 产品库存明细 Response VO")
@Data
@ExcelIgnoreUnannotated
public class ErpStockRecordRespVO {

    @Schema(description = "编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "18909")
    @ExcelProperty("编号")
    @ExcelI18n(i18nKey = "erp.stockRecord.field.id")
    private Long id;

    @Schema(description = "产品编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "10625")
    private Long productId;

    @Schema(description = "仓库编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "32407")
    private Long warehouseId;

    @Schema(description = "出入库数量", requiredMode = Schema.RequiredMode.REQUIRED, example = "11084")
    @ExcelProperty("出入库数量")
    @ExcelI18n(i18nKey = "erp.stockRecord.field.count")
    private BigDecimal count;

    @Schema(description = "总库存量", requiredMode = Schema.RequiredMode.REQUIRED, example = "4307")
    @ExcelProperty("总库存量")
    @ExcelI18n(i18nKey = "erp.stockRecord.field.totalCount")
    private BigDecimal totalCount;

    @Schema(description = "业务类型", requiredMode = Schema.RequiredMode.REQUIRED, example = "10")
    @ExcelProperty(value = "业务类型", converter = DictConvert.class)
    @ExcelColumnSelect(dictType = DictTypeConstants.STOCK_RECORD_BIZ_TYPE, i18n = true)
    @ExcelI18n(i18nKey = "erp.stockRecord.field.bizType")
    private Integer bizType;

    @Schema(description = "业务编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "27093")
    @ExcelProperty("业务编号")
    @ExcelI18n(i18nKey = "erp.stockRecord.field.bizId")
    private Long bizId;

    @Schema(description = "业务项编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "23516")
    @ExcelProperty("业务项编号")
    @ExcelI18n(i18nKey = "erp.stockRecord.field.bizItemId")
    private Long bizItemId;

    @Schema(description = "业务单号", requiredMode = Schema.RequiredMode.REQUIRED, example = "Z110")
    @ExcelProperty("业务单号")
    @ExcelI18n(i18nKey = "erp.stockRecord.field.bizNo")
    private String bizNo;

    @Schema(description = "创建时间", requiredMode = Schema.RequiredMode.REQUIRED)
    @ExcelProperty("创建时间")
    @ExcelI18n(i18nKey = "erp.stockRecord.field.createTime")
    private LocalDateTime createTime;

    @Schema(description = "创建人", requiredMode = Schema.RequiredMode.REQUIRED, example = "25682")
    private String creator;

    // ========== 产品信息 ==========

    @Schema(description = "产品名称", requiredMode = Schema.RequiredMode.REQUIRED, example = "苹果")
    @ExcelProperty("产品名称")
    @ExcelI18n(i18nKey = "erp.stockRecord.field.productName")
    private String productName;

    @Schema(description = "产品分类", requiredMode = Schema.RequiredMode.REQUIRED, example = "水果")
    @ExcelProperty("产品分类")
    @ExcelI18n(i18nKey = "erp.stockRecord.field.categoryName")
    private String categoryName;

    @Schema(description = "单位", requiredMode = Schema.RequiredMode.REQUIRED, example = "个")
    @ExcelProperty("单位")
    @ExcelI18n(i18nKey = "erp.stockRecord.field.unitName")
    private String unitName;

    // ========== 仓库信息 ==========

    @Schema(description = "仓库名称", requiredMode = Schema.RequiredMode.REQUIRED, example = "李四")
    @ExcelProperty("仓库名称")
    @ExcelI18n(i18nKey = "erp.stockRecord.field.warehouseName")
    private String warehouseName;

    // ========== 用户信息 ==========

    @Schema(description = "创建人", requiredMode = Schema.RequiredMode.REQUIRED, example = "张三")
    @ExcelProperty("创建人")
    @ExcelI18n(i18nKey = "erp.stockRecord.field.creatorName")
    private String creatorName;

}
