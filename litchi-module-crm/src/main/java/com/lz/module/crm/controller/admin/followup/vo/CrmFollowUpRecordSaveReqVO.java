package com.lz.module.crm.controller.admin.followup.vo;

import com.lz.framework.common.validation.i18n.I18nNotEmpty;
import com.lz.framework.common.validation.i18n.I18nNotNull;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.time.LocalDateTime;
import java.util.List;

@Schema(description = "管理后台 - 跟进记录新增/修改 Request VO")
@Data
public class CrmFollowUpRecordSaveReqVO {

    @Schema(description = "编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "28800")
    private Long id;

    @Schema(description = "数据类型", requiredMode = Schema.RequiredMode.REQUIRED, example = "2")
    @I18nNotNull(i18nKey = "crm.followUpRecord.back.bizType.notNull", message = "数据类型不能为空")
    private Integer bizType;

    @Schema(description = "数据编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "5564")
    @I18nNotNull(i18nKey = "crm.followUpRecord.back.bizId.notNull", message = "数据编号不能为空")
    private Long bizId;

    @Schema(description = "跟进类型", requiredMode = Schema.RequiredMode.REQUIRED, example = "2")
    @I18nNotNull(i18nKey = "crm.followUpRecord.back.type.notNull", message = "跟进类型不能为空")
    private Integer type;

    @Schema(description = "跟进内容", requiredMode = Schema.RequiredMode.REQUIRED)
    @I18nNotEmpty(i18nKey = "crm.followUpRecord.back.content.notEmpty", message = "跟进内容不能为空")
    private String content;

    @Schema(description = "下次联系时间", requiredMode = Schema.RequiredMode.REQUIRED)
    @I18nNotNull(i18nKey = "crm.followUpRecord.back.nextTime.notNull", message = "下次联系时间不能为空")
    private LocalDateTime nextTime;

    @Schema(description = "关联的商机编号数组")
    private List<Long> businessIds;
    @Schema(description = "关联的联系人编号数组")
    private List<Long> contactIds;

    @Schema(description = "图片")
    private List<String> picUrls;
    @Schema(description = "附件")
    private List<String> fileUrls;

}