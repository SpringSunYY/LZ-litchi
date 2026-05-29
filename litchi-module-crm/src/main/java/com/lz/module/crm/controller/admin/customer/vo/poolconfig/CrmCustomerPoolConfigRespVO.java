package com.lz.module.crm.controller.admin.customer.vo.poolconfig;

import com.lz.framework.common.validation.i18n.I18nNotNull;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

@Schema(description = "管理后台 - CRM 客户公海规则 Response VO")
@Data
public class CrmCustomerPoolConfigRespVO {

    @Schema(description = "是否启用客户公海", requiredMode = Schema.RequiredMode.REQUIRED, example = "true")
    @I18nNotNull(i18nKey = "crm.customerPoolConfig.resp.back.enabled.notNull", message = "是否启用客户公海不能为空")
    private Boolean enabled;

    @Schema(description = "未跟进放入公海天数", example = "2")
    private Integer contactExpireDays;

    @Schema(description = "未成交放入公海天数", example = "2")
    private Integer dealExpireDays;

    @Schema(description = "是否开启提前提醒", example = "true")
    private Boolean notifyEnabled;

    @Schema(description = "提前提醒天数", example = "2")
    private Integer notifyDays;

}
