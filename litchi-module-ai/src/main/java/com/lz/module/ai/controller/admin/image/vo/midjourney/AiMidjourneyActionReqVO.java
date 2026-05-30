package com.lz.module.ai.controller.admin.image.vo.midjourney;

import com.lz.framework.common.validation.i18n.I18nNotEmpty;
import com.lz.framework.common.validation.i18n.I18nNotNull;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

@Schema(description = "管理后台 - AI 绘图操作（Midjourney） Request VO")
@Data
public class AiMidjourneyActionReqVO {

    @Schema(description = "图片编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @I18nNotNull(i18nKey = "ai.image.back.id.notNull", message = "图片编号不能为空")
    private Long id;

    @Schema(description = "操作按钮编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "MJ::JOB::variation::4::06aa3e66-0e97-49cc-8201-e0295d883de4")
    @I18nNotEmpty(i18nKey = "ai.image.back.customId.notEmpty", message = "操作按钮编号不能为空")
    private String customId;

}
