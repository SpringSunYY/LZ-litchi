package com.lz.module.crm.controller.admin.customer.vo.customer;

import com.lz.framework.common.validation.i18n.I18nNotEmpty;
import com.lz.framework.common.validation.i18n.I18nNotNull;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.util.List;

@Schema(description = "管理后台 - CRM 客户分配公海给对应负责人 Request VO")
@Data
public class CrmCustomerDistributeReqVO {

    @Schema(description = "客户编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "[1024]")
    @I18nNotEmpty(i18nKey = "crm.customer.back.ids.notEmpty", message = "客户编号不能为空")
    private List<Long> ids;

    @Schema(description = "负责人", requiredMode = Schema.RequiredMode.REQUIRED, example = "1024")
    @I18nNotNull(i18nKey = "crm.customer.back.ownerUserId.distribute.notNull", message = "负责人不能为空")
    private Long ownerUserId;

}
