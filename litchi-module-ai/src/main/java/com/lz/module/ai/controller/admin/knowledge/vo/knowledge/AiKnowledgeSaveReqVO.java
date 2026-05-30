package com.lz.module.ai.controller.admin.knowledge.vo.knowledge;

import com.lz.framework.common.enums.CommonStatusEnum;
import com.lz.framework.common.validation.InEnum;
import com.lz.framework.common.validation.i18n.I18nNotBlank;
import com.lz.framework.common.validation.i18n.I18nNotNull;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

@Schema(description = "管理后台 - AI 知识库新增/修改 Request VO")
@Data
public class AiKnowledgeSaveReqVO {

    @Schema(description = "对话编号", example = "1204")
    private Long id;

    @Schema(description = "知识库名称", requiredMode = Schema.RequiredMode.REQUIRED, example = "litchi 用户指南")
    @I18nNotBlank(i18nKey = "ai.knowledge.back.name.notBlank", message = "知识库名称不能为空")
    private String name;

    @Schema(description = "知识库描述", requiredMode = Schema.RequiredMode.REQUIRED, example = "存储 litchi 操作文档")
    private String description;

    @Schema(description = "向量模型编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @I18nNotNull(i18nKey = "ai.knowledge.back.embeddingModelId.notNull", message = "向量模型不能为空")
    private Long embeddingModelId;

    @Schema(description = "topK", requiredMode = Schema.RequiredMode.REQUIRED, example = "3")
    @I18nNotNull(i18nKey = "ai.knowledge.back.topK.notNull", message = "topK 不能为空")
    private Integer topK;

    @Schema(description = "相似性阈值", requiredMode = Schema.RequiredMode.REQUIRED, example = "0.5")
    @I18nNotNull(i18nKey = "ai.knowledge.back.similarityThreshold.notNull", message = "相似性阈值不能为空")
    private Double similarityThreshold;

    @Schema(description = "是否启用",  requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @I18nNotNull(i18nKey = "ai.knowledge.back.status.notNull", message = "是否启用不能为空")
    @InEnum(value = CommonStatusEnum.class, i18nKey = "ai.knowledge.back.status.inEnum")
    private Integer status;

}
