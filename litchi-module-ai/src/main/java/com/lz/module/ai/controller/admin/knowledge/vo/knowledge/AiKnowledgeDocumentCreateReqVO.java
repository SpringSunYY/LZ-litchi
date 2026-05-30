package com.lz.module.ai.controller.admin.knowledge.vo.knowledge;

import com.lz.framework.common.validation.i18n.I18nNotBlank;
import com.lz.framework.common.validation.i18n.I18nNotNull;
import com.lz.framework.common.validation.i18n.I18nURL;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;


@Schema(description = "管理后台 - AI 知识库文档的创建 Request VO")
@Data
public class AiKnowledgeDocumentCreateReqVO {

    @Schema(description = "知识库编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "1204")
    @I18nNotNull(i18nKey = "ai.knowledgeDocument.back.knowledgeId.notNull", message = "知识库编号不能为空")
    private Long knowledgeId;

    @Schema(description = "文档名称", requiredMode = Schema.RequiredMode.REQUIRED, example = "三方登陆")
    @I18nNotBlank(i18nKey = "ai.knowledgeDocument.back.name.notBlank", message = "文档名称不能为空")
    private String name;

    @Schema(description = "文档 URL", requiredMode = Schema.RequiredMode.REQUIRED, example = "https://doc.iocoder.cn")
    @I18nURL(i18nKey = "ai.knowledgeDocument.back.url.url", message = "文档 URL 格式不正确")
    private String url;

    @Schema(description = "分段的最大 Token 数", requiredMode = Schema.RequiredMode.REQUIRED, example = "800")
    @I18nNotNull(i18nKey = "ai.knowledgeDocument.back.segmentMaxTokens.notNull", message = "分段的最大 Token 数不能为空")
    private Integer segmentMaxTokens;

}
