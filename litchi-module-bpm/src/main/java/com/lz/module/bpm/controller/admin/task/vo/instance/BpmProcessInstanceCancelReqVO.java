package com.lz.module.bpm.controller.admin.task.vo.instance;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import com.lz.framework.common.validation.i18n.I18nNotEmpty;

@Schema(description = "管理后台 - 流程实例的取消 Request VO")
@Data
public class BpmProcessInstanceCancelReqVO {

    @Schema(description = "流程实例的编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "1024")
    @I18nNotEmpty(i18nKey = "bpm.processInstance.back.id.notEmpty", message = "流程实例的编号不能为空")
    private String id;

    @Schema(description = "取消原因", requiredMode = Schema.RequiredMode.REQUIRED, example = "不请假了！")
    @I18nNotEmpty(i18nKey = "bpm.processInstance.back.reason.notEmpty", message = "取消原因不能为空")
    private String reason;

}
