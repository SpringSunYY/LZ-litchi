package com.lz.module.ai.controller.admin.workflow.vo;

import com.lz.framework.common.validation.i18n.I18nNotEmpty;
import com.lz.framework.common.validation.i18n.I18nNotNull;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

@Schema(description = "管理后台 - AI 工作流新增/修改 Request VO")
@Data
public class AiWorkflowSaveReqVO {

    @Schema(description = "编号", example = "1")
    private Long id;

    @Schema(description = "工作流标识", requiredMode = Schema.RequiredMode.REQUIRED, example = "FLOW")
    @I18nNotEmpty(i18nKey = "ai.workflow.back.code.notEmpty", message = "工作流标识不能为空")
    private String code;

    @Schema(description = "工作流名称", requiredMode = Schema.RequiredMode.REQUIRED, example = "工作流")
    @I18nNotEmpty(i18nKey = "ai.workflow.back.name.notBlank", message = "工作流名称不能为空")
    private String name;

    @Schema(description = "备注", example = "FLOW")
    private String remark;

    @Schema(description = "工作流模型", requiredMode = Schema.RequiredMode.REQUIRED, example = "{}")
    @I18nNotEmpty(i18nKey = "ai.workflow.back.graph.notBlank", message = "工作流模型不能为空")
    private String graph;

    @Schema(description = "状态", requiredMode = Schema.RequiredMode.REQUIRED, example = "FLOW")
    @I18nNotNull(i18nKey = "ai.workflow.back.status.notNull", message = "状态不能为空")
    private Integer status;

}
