package com.lz.module.erp.controller.admin.product.vo.unit;

import com.lz.framework.common.enums.CommonStatusEnum;
import com.lz.framework.common.validation.InEnum;
import com.lz.framework.common.validation.i18n.I18nNotEmpty;
import com.lz.framework.common.validation.i18n.I18nNotNull;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

@Schema(description = "管理后台 - ERP 产品单位新增/修改 Request VO")
@Data
public class ErpProductUnitSaveReqVO {

    @Schema(description = "单位编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "31254")
    private Long id;

    @Schema(description = "单位名字", requiredMode = Schema.RequiredMode.REQUIRED, example = "YY")
    @I18nNotEmpty(i18nKey = "erp.productUnit.back.name.notEmpty", message = "单位名字不能为空")
    private String name;

    @Schema(description = "单位状态", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @I18nNotNull(i18nKey = "erp.productUnit.back.status.notNull", message = "单位状态不能为空")
    @InEnum(CommonStatusEnum.class)
    private Integer status;

}
