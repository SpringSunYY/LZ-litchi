package com.lz.module.ai.controller.admin.image.vo;

import com.lz.framework.common.validation.i18n.I18nNotEmpty;
import com.lz.framework.common.validation.i18n.I18nNotNull;
import com.lz.framework.common.validation.i18n.I18nSize;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;
import org.springframework.ai.openai.OpenAiImageOptions;
import org.springframework.ai.stabilityai.api.StabilityAiImageOptions;

import java.util.Map;

@Schema(description = "管理后台 - AI 绘画 Request VO")
@Data
public class AiImageDrawReqVO {

    @Schema(description = "模型编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "1024")
    @I18nNotNull(i18nKey = "ai.image.back.modelId.notNull", message = "模型编号不能为空")
    private Long modelId;

    @Schema(description = "提示词", requiredMode = Schema.RequiredMode.REQUIRED, example = "画一个长城")
    @I18nNotEmpty(i18nKey = "ai.image.back.prompt.notEmpty", message = "提示词不能为空")
    @I18nSize(i18nKey = "ai.image.back.prompt.length", max = 1200, message = "提示词最大 1200")
    private String prompt;

    /**
     * 1. dall-e-2 模型：256x256、512x512、1024x1024
     * 2. dall-e-3 模型：1024x1024, 1792x1024, 或 1024x1792
     */
    @Schema(description = "图片高度")
    @I18nNotNull(i18nKey = "ai.image.back.height.notNull", message = "图片高度不能为空")
    private Integer height;

    @Schema(description = "图片宽度")
    @I18nNotNull(i18nKey = "ai.image.back.width.notNull", message = "图片宽度不能为空")
    private Integer width;

    // ========== 各平台绘画的拓展参数 ==========

    /**
     * 绘制参数，不同 platform 的不同参数
     *
     * 1. {@link OpenAiImageOptions}
     * 2. {@link StabilityAiImageOptions}
     */
    @Schema(description = "绘制参数")
    private Map<String, String> options;

}
