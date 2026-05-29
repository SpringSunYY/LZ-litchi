package com.lz.module.crm.controller.admin.product.vo.category;

import com.lz.framework.common.validation.i18n.I18nNotNull;
import com.mzt.logapi.starter.annotation.DiffLogField;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

@Schema(description = "管理后台 - CRM 产品分类创建/更新 Request VO")
@Data
public class CrmProductCategoryCreateReqVO{

    @Schema(description = "分类编号", example = "23902")
    private Long id;

    @Schema(description = "分类名称", requiredMode = Schema.RequiredMode.REQUIRED, example = "赵六")
    @I18nNotNull(i18nKey = "crm.productCategory.back.name.notNull", message = "分类名称不能为空")
    @DiffLogField(name = "分类名称")
    private String name;

    @Schema(description = "父级编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "4680")
    @I18nNotNull(i18nKey = "crm.productCategory.back.parentId.notNull", message = "父级编号不能为空")
    private Long parentId;

}
