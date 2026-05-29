package com.lz.module.system.controller.admin.tenant.vo.packages;

import com.lz.framework.common.validation.i18n.I18nNotEmpty;
import com.lz.framework.common.validation.i18n.I18nNotNull;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.math.BigDecimal;

@Schema(description = "管理后台 - 租户套餐精简 Response VO")
@Data
public class TenantPackageSimpleRespVO {

    @Schema(description = "套餐编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "1024")
    @I18nNotNull(i18nKey = "system.tenantPackage.back.id.notNull", message = "套餐编号不能为空")
    private Long id;

    @Schema(description = "套餐编码", requiredMode = Schema.RequiredMode.REQUIRED)
    @I18nNotEmpty(i18nKey = "system.tenantPackage.back.code.notEmpty", message = "套餐编码不能为空")
    private String code;

    @Schema(description = "套餐名", requiredMode = Schema.RequiredMode.REQUIRED, example = "VIP")
    @I18nNotNull(i18nKey = "system.tenantPackage.back.name.notNull", message = "套餐名不能为空")
    private String name;

    @Schema(description = "套餐价格", requiredMode = Schema.RequiredMode.REQUIRED, example = "12109")
    private BigDecimal price;

}
