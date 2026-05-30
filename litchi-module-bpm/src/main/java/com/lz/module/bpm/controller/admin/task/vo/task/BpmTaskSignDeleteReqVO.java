package com.lz.module.bpm.controller.admin.task.vo.task;

import io.swagger.v3.oas.annotations.media.Schema;
import com.lz.framework.common.validation.i18n.I18nNotEmpty;
import lombok.Data;

@Schema(description = "管理后台 - 加签任务的删除（减签） Request VO")
@Data
public class BpmTaskSignDeleteReqVO {

    @Schema(description = "被减签的任务编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @I18nNotEmpty(i18nKey = "bpm.task.back.id.notEmpty", message = "任务编号不能为空")
    private String id;

    @Schema(description = "加签原因", requiredMode = Schema.RequiredMode.REQUIRED, example = "需要减签")
    @I18nNotEmpty(i18nKey = "bpm.taskSign.back.reason.notEmpty", message = "加签原因不能为空")
    private String reason;

}
