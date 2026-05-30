package com.lz.module.ai.controller.admin.knowledge.vo.document;

import com.lz.framework.common.validation.i18n.I18nNotNull;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

@Schema(description = "管理后台 - AI 知识库文档更新 Request VO")
@Data
public class AiKnowledgeDocumentUpdateReqVO {

    @Schema(description = "编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "15583")
    @I18nNotNull(i18nKey = "ai.knowledgeDocument.back.id.notNull", message = "编号不能为空")
    private Long id;

    @Schema(description = "名称", example = "Java 开发手册")
    private String name;

    @Schema(description = "分片最大 Token 数", example = "1000")
    private Integer segmentMaxTokens;

}
