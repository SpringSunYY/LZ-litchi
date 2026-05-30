package com.lz.module.ai.controller.admin.knowledge.vo.segment;

import com.lz.framework.common.validation.i18n.I18nNotEmpty;
import com.lz.framework.common.validation.i18n.I18nNotNull;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

@Schema(description = "管理后台 - AI 知识库段落搜索 Request VO")
@Data
public class AiKnowledgeSegmentSearchReqVO {

    @Schema(description = "知识库编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "1024")
    @I18nNotNull(i18nKey = "ai.knowledgeSegment.back.knowledgeId.notNull", message = "知识库编号不能为空")
    private Long knowledgeId;

    @Schema(description = "内容", requiredMode = Schema.RequiredMode.REQUIRED, example = "如何使用这个产品")
    @I18nNotEmpty(i18nKey = "ai.knowledgeSegment.back.content.notEmpty", message = "内容不能为空")
    private String content;

    @Schema(description = "最大返回数量", example = "5")
    private Integer topK;

    @Schema(description = "相似度阈值", example = "0.7")
    private Double similarityThreshold;

}
