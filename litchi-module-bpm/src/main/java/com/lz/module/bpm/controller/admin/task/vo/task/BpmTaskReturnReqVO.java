package com.lz.module.bpm.controller.admin.task.vo.task;

import io.swagger.v3.oas.annotations.media.Schema;
import com.lz.framework.common.validation.i18n.I18nNotEmpty;
import lombok.Data;

@Schema(description = "管理后台 - 退回流程任务的 Request VO")
@Data
public class BpmTaskReturnReqVO {

    @Schema(description = "任务编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "1024")
    @I18nNotEmpty(i18nKey = "bpm.task.back.id.notEmpty", message = "任务编号不能为空")
    private String id;

    @Schema(description = "退回到的任务 Key", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @I18nNotEmpty(i18nKey = "bpm.task.back.targetTaskDefinitionKey.notEmpty", message = "退回到的任务 Key 不能为空")
    private String targetTaskDefinitionKey;

    @Schema(description = "退回意见", requiredMode = Schema.RequiredMode.REQUIRED, example = "我就是想驳回")
    @I18nNotEmpty(i18nKey = "bpm.task.back.reason.notEmpty", message = "退回意见不能为空")
    private String reason;

}
