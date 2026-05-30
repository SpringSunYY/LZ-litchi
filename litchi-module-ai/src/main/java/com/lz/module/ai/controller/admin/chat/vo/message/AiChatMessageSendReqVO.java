package com.lz.module.ai.controller.admin.chat.vo.message;

import com.lz.framework.common.validation.i18n.I18nNotEmpty;
import com.lz.framework.common.validation.i18n.I18nNotNull;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;
import lombok.experimental.Accessors;

@Schema(description = "管理后台 - AI 聊天消息发送 Request VO")
@Data
public class AiChatMessageSendReqVO {

    @Schema(description = "聊天对话编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "1024")
    @I18nNotNull(i18nKey = "ai.chatMessage.back.conversationId.notNull", message = "聊天对话编号不能为空")
    private Long conversationId;

    @Schema(description = "聊天内容", requiredMode = Schema.RequiredMode.REQUIRED, example = "帮我写个 Java 算法")
    @I18nNotEmpty(i18nKey = "ai.chatMessage.back.content.notEmpty", message = "聊天内容不能为空")
    private String content;

    @Schema(description = "是否携带上下文", example = "true")
    private Boolean useContext;

}
