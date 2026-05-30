package com.lz.module.ai.controller.admin.model.vo.model;

import com.lz.module.ai.enums.model.AiModelTypeEnum;
import com.lz.module.ai.enums.model.AiPlatformEnum;
import com.lz.framework.common.enums.CommonStatusEnum;
import com.lz.framework.common.validation.InEnum;
import com.lz.framework.common.validation.i18n.I18nNotEmpty;
import com.lz.framework.common.validation.i18n.I18nNotNull;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

@Schema(description = "管理后台 - API 模型新增/修改 Request VO")
@Data
public class AiModelSaveReqVO {

    @Schema(description = "编号", example = "2630")
    private Long id;

    @Schema(description = "API 秘钥编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "22042")
    @I18nNotNull(i18nKey = "ai.model.back.keyId.notNull", message = "API 秘钥编号不能为空")
    private Long keyId;

    @Schema(description = "模型名字", requiredMode = Schema.RequiredMode.REQUIRED, example = "张三")
    @I18nNotEmpty(i18nKey = "ai.model.back.name.notEmpty", message = "模型名字不能为空")
    private String name;

    @Schema(description = "模型标识", requiredMode = Schema.RequiredMode.REQUIRED, example = "gpt-3.5-turbo-0125")
    @I18nNotEmpty(i18nKey = "ai.model.back.model.notEmpty", message = "模型标识不能为空")
    private String model;

    @Schema(description = "模型平台", requiredMode = Schema.RequiredMode.REQUIRED, example = "OpenAI")
    @I18nNotEmpty(i18nKey = "ai.model.back.platform.notEmpty", message = "模型平台不能为空")
    @InEnum(AiPlatformEnum.class)
    private String platform;

    @Schema(description = "模型类型", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @I18nNotNull(i18nKey = "ai.model.back.type.notNull", message = "模型类型不能为空")
    @InEnum(AiModelTypeEnum.class)
    private Integer type;

    @Schema(description = "排序", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @I18nNotNull(i18nKey = "ai.model.back.sort.notNull", message = "排序不能为空")
    private Integer sort;

    @Schema(description = "状态", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @InEnum(CommonStatusEnum.class)
    @I18nNotNull(i18nKey = "ai.model.back.status.notNull", message = "状态不能为空")
    private Integer status;

    @Schema(description = "温度参数", example = "1")
    private Double temperature;

    @Schema(description = "单条回复的最大 Token 数量", example = "4096")
    private Integer maxTokens;

    @Schema(description = "上下文的最大 Message 数量", example = "8192")
    private Integer maxContexts;

}
