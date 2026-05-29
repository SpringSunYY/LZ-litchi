package com.lz.module.system.controller.admin.tenant.vo.packages;

import com.lz.framework.common.validation.i18n.I18nNotNull;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.math.BigDecimal;
import java.util.Set;

@Schema(description = "管理后台 - 租户套餐创建/修改 Request VO")
@Data
public class TenantPackageGrantReqVO {

    @Schema(description = "套餐编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "5465")
    @I18nNotNull(i18nKey = "system.tenantPackage.back.id.notNull", message = "套餐编号不能为空")
    private Long id;

    @Schema(description = "关联的菜单编号", requiredMode = Schema.RequiredMode.REQUIRED)
    @I18nNotNull(i18nKey = "system.tenantPackage.back.menuIds.notNull", message = "关联的菜单编号不能为空")
    private Set<Long> menuIds;
}
