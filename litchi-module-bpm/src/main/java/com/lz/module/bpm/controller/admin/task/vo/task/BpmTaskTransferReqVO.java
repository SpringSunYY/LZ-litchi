package com.lz.module.bpm.controller.admin.task.vo.task;

import com.lz.framework.common.validation.i18n.I18nNotNull;
import io.swagger.v3.oas.annotations.media.Schema;
import com.lz.framework.common.validation.i18n.I18nNotEmpty;
import lombok.Data;

@Schema(description = "管理后台 - 流程任务的转办 Request VO")
@Data
public class BpmTaskTransferReqVO {

    @Schema(description = "任务编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "1024")
    @I18nNotEmpty(i18nKey = "bpm.task.back.id.notEmpty", message = "任务编号不能为空")
    private String id;

    @Schema(description = "新审批人的用户编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "2048")
    @I18nNotNull(i18nKey = "bpm.taskTransfer.back.assigneeUserId.notNull", message = "新审批人的用户编号不能为空")
    private Long assigneeUserId;

    @Schema(description = "转办原因", requiredMode = Schema.RequiredMode.REQUIRED, example = "做不了决定，需要你先帮忙瞅瞅")
    @I18nNotEmpty(i18nKey = "bpm.taskTransfer.back.reason.notEmpty", message = "转办原因不能为空")
    private String reason;

}
