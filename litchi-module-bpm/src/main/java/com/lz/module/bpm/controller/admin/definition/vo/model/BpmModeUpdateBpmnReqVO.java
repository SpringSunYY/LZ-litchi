package com.lz.module.bpm.controller.admin.definition.vo.model;

import com.lz.framework.common.validation.i18n.I18nNotEmpty;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

@Schema(description = "管理后台 - 流程模型的更新 BPMN XML Request VO")
@Data
public class BpmModeUpdateBpmnReqVO {

    @Schema(description = "流程编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "1024")
    @I18nNotEmpty(i18nKey = "bpm.processDefinitionInfo.back.id.notEmpty", message = "流程编号不能为空")
    private String id;

    @Schema(description = "BPMN XML", requiredMode = Schema.RequiredMode.REQUIRED)
    @I18nNotEmpty(i18nKey = "bpm.processDefinitionInfo.back.bpmnXml.notEmpty", message = "BPMN XML 不能为空")
    private String bpmnXml;

}
