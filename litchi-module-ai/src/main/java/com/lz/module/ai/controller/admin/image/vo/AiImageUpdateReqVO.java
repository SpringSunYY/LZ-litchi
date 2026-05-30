package com.lz.module.ai.controller.admin.image.vo;

import com.lz.framework.common.validation.i18n.I18nNotNull;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

@Schema(description = "管理后台 - AI 绘画修改 Request VO")
@Data
public class AiImageUpdateReqVO {

    @Schema(description = "编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "15583")
    @I18nNotNull(i18nKey = "ai.image.back.id.notNull", message = "编号不能为空")
    private Long id;

    @Schema(description = "是否发布", example = "true")
    private Boolean publicStatus;

}
