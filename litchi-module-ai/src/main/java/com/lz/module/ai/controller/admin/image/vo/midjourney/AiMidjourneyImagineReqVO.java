package com.lz.module.ai.controller.admin.image.vo.midjourney;

import com.lz.framework.common.validation.i18n.I18nNotEmpty;
import com.lz.framework.common.validation.i18n.I18nNotNull;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

@Schema(description = "管理后台 - AI 绘画生成（Midjourney） Request VO")
@Data
public class AiMidjourneyImagineReqVO {

    @Schema(description = "提示词", requiredMode = Schema.RequiredMode.REQUIRED, example = "中国神龙")
    @I18nNotEmpty(i18nKey = "ai.image.back.prompt.notEmpty", message = "提示词不能为空!")
    private String prompt;

    @Schema(description = "模型编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @I18nNotNull(i18nKey = "ai.image.back.modelId.notNull", message = "模型编号不能为空")
    private Long modelId;

    @Schema(description = "图片宽度", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @I18nNotNull(i18nKey = "ai.image.back.width.notNull", message = "图片宽度不能为空")
    private Integer width;

    @Schema(description = "图片高度", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @I18nNotNull(i18nKey = "ai.image.back.height.notNull", message = "图片高度不能为空")
    private Integer height;

    @Schema(description = "版本号", requiredMode = Schema.RequiredMode.REQUIRED, example = "6.0")
    @I18nNotEmpty(i18nKey = "ai.image.back.version.notEmpty", message = "版本号不能为空")
    private String version;

    @Schema(description = "参考图", example = "https://www.iocoder.cn/x.png")
    private String referImageUrl;

}
