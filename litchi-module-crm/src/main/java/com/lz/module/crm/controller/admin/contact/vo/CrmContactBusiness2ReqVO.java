package com.lz.module.crm.controller.admin.contact.vo;

import com.lz.framework.common.validation.i18n.I18nNotEmpty;
import com.lz.framework.common.validation.i18n.I18nNotNull;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.util.List;

@Schema(description = "管理后台 - CRM 联系人商机 Request VO") // 【商机关联联系人】用于关联，取消关联的操作
@Data
public class CrmContactBusiness2ReqVO {

    @Schema(description = "商机编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "7638")
    @I18nNotNull(i18nKey = "crm.contact.back.businessId.notNull", message = "商机不能为空")
    private Long businessId;

    @Schema(description = "联系人编号数组", requiredMode = Schema.RequiredMode.REQUIRED, example = "20878")
    @I18nNotEmpty(i18nKey = "crm.contact.back.contactIds.notEmpty", message = "联系人数组不能为空")
    private List<Long> contactIds;

}