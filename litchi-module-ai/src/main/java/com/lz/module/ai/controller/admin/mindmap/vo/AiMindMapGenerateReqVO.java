package com.lz.module.ai.controller.admin.mindmap.vo;

import com.lz.framework.common.validation.i18n.I18nNotBlank;
import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.validation.constraints.NotBlank;
import lombok.Data;

@Schema(description = "管理后台 - AI 思维导图生成 Request VO")
@Data
public class AiMindMapGenerateReqVO {

    @Schema(description = "思维导图内容提示", example = "Java 学习路线")
    @I18nNotBlank(i18nKey = "ai.mindMap.back.prompt.notBlank", message = "思维导图内容提示不能为空")
    private String prompt;

}
