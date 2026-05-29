package com.lz.module.erp.controller.admin.product.vo.category;

import com.lz.framework.common.validation.i18n.I18nNotEmpty;
import com.lz.framework.common.validation.i18n.I18nNotNull;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

@Schema(description = "管理后台 - ERP 产品分类新增/修改 Request VO")
@Data
public class ErpProductCategorySaveReqVO {

    @Schema(description = "分类编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "5860")
    private Long id;

    @Schema(description = "父分类编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "21829")
    @I18nNotNull(i18nKey = "erp.productCategory.back.parentId.notNull", message = "父分类编号不能为空")
    private Long parentId;

    @Schema(description = "分类名称", requiredMode = Schema.RequiredMode.REQUIRED, example = "YY")
    @I18nNotEmpty(i18nKey = "erp.productCategory.back.name.notEmpty", message = "分类名称不能为空")
    private String name;

    @Schema(description = "分类编码", requiredMode = Schema.RequiredMode.REQUIRED, example = "S110")
    @I18nNotEmpty(i18nKey = "erp.productCategory.back.code.notEmpty", message = "分类编码不能为空")
    private String code;

    @Schema(description = "分类排序", requiredMode = Schema.RequiredMode.REQUIRED, example = "10")
    @I18nNotNull(i18nKey = "erp.productCategory.back.sort.notNull", message = "分类排序不能为空")
    private Integer sort;

    @Schema(description = "开启状态", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @I18nNotNull(i18nKey = "erp.productCategory.back.status.notNull", message = "开启状态不能为空")
    private Integer status;

}
