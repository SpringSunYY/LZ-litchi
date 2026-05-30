package com.lz.module.bpm.controller.admin.task.vo.task;

import io.swagger.v3.oas.annotations.media.Schema;
import com.lz.framework.common.validation.i18n.I18nNotEmpty;
import lombok.Data;

@Schema(description = "管理后台 - 不通过流程任务的 Request VO")
@Data
public class BpmTaskRejectReqVO {

    @Schema(description = "任务编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "1024")
    @I18nNotEmpty(i18nKey = "bpm.task.back.id.notEmpty", message = "任务编号不能为空")
    private String id;

    @Schema(description = "审批意见", requiredMode = Schema.RequiredMode.REQUIRED, example = "不错不错！")
    private String reason;

}
