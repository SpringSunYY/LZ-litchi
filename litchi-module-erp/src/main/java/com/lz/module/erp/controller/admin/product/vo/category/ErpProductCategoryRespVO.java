package com.lz.module.erp.controller.admin.product.vo.category;

import com.lz.framework.excel.core.annotations.ExcelColumnSelect;
import com.lz.module.system.enums.DictTypeConstants;
import com.alibaba.excel.annotation.ExcelIgnoreUnannotated;
import com.alibaba.excel.annotation.ExcelProperty;
import com.lz.framework.excel.core.annotations.ExcelI18n;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.time.LocalDateTime;

@Schema(description = "管理后台 - ERP 产品分类 Response VO")
@Data
@ExcelIgnoreUnannotated
public class ErpProductCategoryRespVO {

    @Schema(description = "分类编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "5860")
    @ExcelProperty("分类编号")
    @ExcelI18n(i18nKey = "erp.productCategory.field.id")
    private Long id;

    @Schema(description = "父分类编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "21829")
    @ExcelProperty("父分类编号")
    @ExcelI18n(i18nKey = "erp.productCategory.field.parentId")
    private Long parentId;

    @Schema(description = "分类名称", requiredMode = Schema.RequiredMode.REQUIRED, example = "YY")
    @ExcelProperty("分类名称")
    @ExcelI18n(i18nKey = "erp.productCategory.field.name")
    private String name;

    @Schema(description = "分类编码", requiredMode = Schema.RequiredMode.REQUIRED, example = "S110")
    @ExcelProperty("分类编码")
    @ExcelI18n(i18nKey = "erp.productCategory.field.code")
    private String code;

    @Schema(description = "分类排序", example = "10")
    @ExcelProperty("分类排序")
    @ExcelI18n(i18nKey = "erp.productCategory.field.sort")
    private Integer sort;

    @Schema(description = "开启状态", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @ExcelProperty("开启状态")
    @ExcelColumnSelect(dictType = DictTypeConstants.COMMON_STATUS, i18n = true)
    @ExcelI18n(i18nKey = "erp.productCategory.field.status")
    private Integer status;

    @Schema(description = "创建时间", requiredMode = Schema.RequiredMode.REQUIRED)
    @ExcelProperty("创建时间")
    @ExcelI18n(i18nKey = "erp.productCategory.field.createTime")
    private LocalDateTime createTime;

}
