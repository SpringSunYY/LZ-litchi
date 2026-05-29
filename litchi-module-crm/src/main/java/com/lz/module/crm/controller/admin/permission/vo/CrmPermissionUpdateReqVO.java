package com.lz.module.crm.controller.admin.permission.vo;

import com.lz.framework.common.validation.InEnum;
import com.lz.framework.common.validation.i18n.I18nNotNull;
import com.lz.module.crm.enums.common.CrmBizTypeEnum;
import com.lz.module.crm.enums.permission.CrmPermissionLevelEnum;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;
import java.util.List;

@Schema(description = "管理后台 - CRM 数据权限更新 Request VO")
@Data
public class CrmPermissionUpdateReqVO {

    @Schema(description = "数据权限编号列表", requiredMode = Schema.RequiredMode.REQUIRED, example = "[1,2]")
    @I18nNotNull(i18nKey = "crm.permission.back.ids.notNull", message = "数据权限编号列表不能为空")
    private List<Long> ids;

    @Schema(description = "Crm 类型", requiredMode = Schema.RequiredMode.REQUIRED, example = "2")
    @InEnum(CrmBizTypeEnum.class)
    @I18nNotNull(i18nKey = "crm.permission.back.bizType.notNull", message = "Crm 类型不能为空")
    private Integer bizType;

    @Schema(description = "Crm 类型数据编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "1024")
    @I18nNotNull(i18nKey = "crm.permission.back.bizId.notNull", message = "Crm 类型数据编号不能为空")
    private Long bizId;

    @Schema(description = "权限级别", requiredMode = Schema.RequiredMode.REQUIRED, example = "2")
    @InEnum(CrmPermissionLevelEnum.class)
    @I18nNotNull(i18nKey = "crm.permission.back.level.notNull", message = "权限级别不能为空")
    private Integer level;

}
