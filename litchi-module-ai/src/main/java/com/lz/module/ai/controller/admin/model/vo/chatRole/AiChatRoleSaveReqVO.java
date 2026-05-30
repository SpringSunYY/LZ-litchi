package com.lz.module.ai.controller.admin.model.vo.chatRole;

import com.lz.framework.common.enums.CommonStatusEnum;
import com.lz.framework.common.validation.InEnum;
import com.lz.framework.common.validation.i18n.I18nNotEmpty;
import com.lz.framework.common.validation.i18n.I18nNotNull;
import com.lz.framework.common.validation.i18n.I18nURL;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.*;
import jakarta.validation.constraints.*;

import java.util.List;

@Schema(description = "管理后台 - AI 聊天角色新增/修改 Request VO")
@Data
public class AiChatRoleSaveReqVO {

    @Schema(description = "角色编号", example = "32746")
    private Long id;

    @Schema(description = "模型编号", example = "17640")
    private Long modelId;

    @Schema(description = "角色名称", requiredMode = Schema.RequiredMode.REQUIRED, example = "李四")
    @I18nNotEmpty(i18nKey = "ai.chatRole.back.name.notEmpty", message = "角色名称不能为空")
    private String name;

    @Schema(description = "角色头像", requiredMode = Schema.RequiredMode.REQUIRED, example = "https://www.iocoder.cn/1.png")
    @I18nNotEmpty(i18nKey = "ai.chatRole.back.avatar.notEmpty", message = "角色头像不能为空")
    @I18nURL(i18nKey = "ai.chatRole.back.avatar.url", message = "角色头像必须是 URL 格式")
    private String avatar;

    @Schema(description = "角色类别", requiredMode = Schema.RequiredMode.REQUIRED, example = "创作")
    @I18nNotEmpty(i18nKey = "ai.chatRole.back.category.notEmpty", message = "角色类别不能为空")
    private String category;

    @Schema(description = "角色排序", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @I18nNotNull(i18nKey = "ai.chatRole.back.sort.notNull", message = "角色排序不能为空")
    private Integer sort;

    @Schema(description = "角色描述", requiredMode = Schema.RequiredMode.REQUIRED, example = "你说的对")
    @I18nNotEmpty(i18nKey = "ai.chatRole.back.description.notEmpty", message = "角色描述不能为空")
    private String description;

    @Schema(description = "角色设定", requiredMode = Schema.RequiredMode.REQUIRED, example = "现在开始你扮演一位程序员，你是一名优秀的程序员，具有很强的逻辑思维能力，总能高效的解决问题")
    @I18nNotEmpty(i18nKey = "ai.chatRole.back.systemMessage.notEmpty", message = "角色设定不能为空")
    private String systemMessage;

    @Schema(description = "引用的知识库编号列表", example = "1,2,3")
    private List<Long> knowledgeIds;

    @Schema(description = "引用的工具编号列表", example = "1,2,3")
    private List<Long> toolIds;

    @Schema(description = "是否公开", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @I18nNotNull(i18nKey = "ai.chatRole.back.publicStatus.notNull", message = "是否公开不能为空")
    private Boolean publicStatus;

    @Schema(description = "状态", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @I18nNotNull(i18nKey = "ai.chatRole.back.status.notNull", message = "状态不能为空")
    @InEnum(CommonStatusEnum.class)
    private Integer status;

}
