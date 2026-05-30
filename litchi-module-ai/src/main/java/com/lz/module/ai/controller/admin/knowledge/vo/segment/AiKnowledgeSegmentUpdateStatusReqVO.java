package com.lz.module.ai.controller.admin.knowledge.vo.segment;

import com.lz.framework.common.enums.CommonStatusEnum;
import com.lz.framework.common.validation.InEnum;
import com.lz.framework.common.validation.i18n.I18nNotNull;
import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.validation.constraints.NotNull;
import lombok.Data;


@Schema(description = "管理后台 - AI 知识库段落的更新状态 Request VO")
@Data
public class AiKnowledgeSegmentUpdateStatusReqVO {

    @Schema(description = "编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "24790")
    private Long id;

    @Schema(description = "是否启用", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @I18nNotNull(i18nKey = "ai.knowledgeSegment.back.status.notNull", message = "是否启用不能为空")
    @InEnum(value = CommonStatusEnum.class, i18nKey = "ai.knowledgeSegment.back.status.inEnum")
    private Integer status;

}
