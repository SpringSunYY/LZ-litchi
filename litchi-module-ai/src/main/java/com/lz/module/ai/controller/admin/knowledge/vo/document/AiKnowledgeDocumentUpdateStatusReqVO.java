package com.lz.module.ai.controller.admin.knowledge.vo.document;

import com.lz.framework.common.enums.CommonStatusEnum;
import com.lz.framework.common.validation.InEnum;
import com.lz.framework.common.validation.i18n.I18nNotNull;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

@Schema(description = "管理后台 - AI 知识库文档更新状态 Request VO")
@Data
public class AiKnowledgeDocumentUpdateStatusReqVO {

    @Schema(description = "编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "15583")
    @I18nNotNull(i18nKey = "ai.knowledgeDocument.back.id.notNull", message = "编号不能为空")
    private Long id;

    @Schema(description = "状态", requiredMode = Schema.RequiredMode.REQUIRED, example = "0")
    @I18nNotNull(i18nKey = "ai.knowledgeDocument.back.status.notNull", message = "状态不能为空")
    @InEnum(value = CommonStatusEnum.class, i18nKey = "ai.knowledgeDocument.back.status.inEnum")
    private Integer status;

}
