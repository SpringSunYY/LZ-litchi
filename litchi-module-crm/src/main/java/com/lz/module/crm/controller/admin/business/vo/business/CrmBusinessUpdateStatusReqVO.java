package com.lz.module.crm.controller.admin.business.vo.business;

import com.lz.framework.common.validation.InEnum;
import com.lz.framework.common.validation.i18n.I18nAssertTrue;
import com.lz.framework.common.validation.i18n.I18nNotNull;
import com.lz.module.crm.enums.business.CrmBusinessEndStatusEnum;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

@Schema(description = "管理后台 - CRM 商机更新状态 Request VO")
@Data
public class CrmBusinessUpdateStatusReqVO {

    @Schema(description = "商机编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "32129")
    @I18nNotNull(i18nKey = "crm.business.back.id.notNull", message = "商机编号不能为空")
    private Long id;

    @Schema(description = "状态编号", example = "1")
    private Long statusId;

    @Schema(description = "结束状态", example = "1")
    @InEnum(value = CrmBusinessEndStatusEnum.class)
    private Integer endStatus;

    @I18nAssertTrue(i18nKey = "crm.business.back.statusValid.assertTrue", message = "变更状态不正确")
    public boolean isStatusValid() {
        return statusId != null || endStatus != null;
    }

}
