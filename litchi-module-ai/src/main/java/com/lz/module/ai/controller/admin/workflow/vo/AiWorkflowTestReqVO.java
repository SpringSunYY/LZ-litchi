package com.lz.module.ai.controller.admin.workflow.vo;

import cn.hutool.core.util.StrUtil;
import com.lz.framework.common.validation.i18n.I18nAssertTrue;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.util.Map;

@Schema(description = "管理后台 - AI 工作流测试 Request VO")
@Data
public class AiWorkflowTestReqVO {

    @Schema(description = "工作流编号", example = "1024")
    private Long id;

    @Schema(description = "工作流模型", example = "{}")
    private String graph;

    @Schema(description = "参数", requiredMode = Schema.RequiredMode.REQUIRED, example = "{}")
    private Map<String, Object> params;

    @I18nAssertTrue(i18nKey = "ai.workflow.back.assertTrue", message = "工作流或模型，必须传递一个")
    public boolean isGraphValid() {
        return id != null || StrUtil.isNotEmpty(graph);
    }

}
