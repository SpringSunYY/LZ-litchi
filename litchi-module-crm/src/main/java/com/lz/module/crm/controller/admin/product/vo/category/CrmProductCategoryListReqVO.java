package com.lz.module.crm.controller.admin.product.vo.category;

import com.lz.framework.excel.core.annotations.ExcelI18n;
import com.alibaba.excel.annotation.ExcelProperty;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.time.LocalDateTime;

@Schema(description = "管理后台 - CRM 产品分类列表 Request VO")
@Data
public class CrmProductCategoryListReqVO {

    @ExcelProperty("名称")
    @ExcelI18n(i18nKey = "crm.productCategory.field.name")
    private String name;

    @ExcelProperty("父级 id")
    @ExcelI18n(i18nKey = "crm.productCategory.field.parentId")
    private Long parentId;

    @ExcelProperty("创建时间")
    @ExcelI18n(i18nKey = "crm.productCategory.field.createTime")
    private LocalDateTime createTime;

}
