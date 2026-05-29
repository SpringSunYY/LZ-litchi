package com.lz.module.infra.controller.admin.i18n.vo;

import com.lz.framework.common.validation.i18n.I18nNotEmpty;
import com.lz.framework.common.validation.i18n.I18nNotNull;
import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import lombok.Data;

@Schema(description = "管理后台 - 国际化信息新增/修改 Request VO")
@Data
public class I18nMessageSaveReqVO {

    @Schema(description = "主键", requiredMode = Schema.RequiredMode.REQUIRED, example = "22458")
    private Long id;

    @Schema(description = "名称", requiredMode = Schema.RequiredMode.REQUIRED, example = "赵六")
    @I18nNotEmpty(i18nKey = "infra.i18nMessage.back.messageName.notEmpty", message = "名称不能为空")
    private String messageName;

    @Schema(description = "键", requiredMode = Schema.RequiredMode.REQUIRED)
    @I18nNotEmpty(i18nKey = "infra.i18nMessage.back.messageKey.notEmpty", message = "键不能为空")
    private String messageKey;

    @Schema(description = "简称", requiredMode = Schema.RequiredMode.REQUIRED)
    @I18nNotEmpty(i18nKey = "infra.i18nMessage.back.locale.notEmpty", message = "简称不能为空")
    private String locale;

    @Schema(description = "使用端", requiredMode = Schema.RequiredMode.REQUIRED)
    @I18nNotNull(i18nKey = "infra.i18nMessage.back.localeTarget.notNull", message = "使用端不能为空")
    private Integer localeTarget;

    @Schema(description = "是否内置", requiredMode = Schema.RequiredMode.REQUIRED)
    @I18nNotNull(i18nKey = "infra.i18nMessage.back.isSystem.notNull", message = "是否内置不能为空")
    private Integer isSystem;

    @Schema(description = "模块", requiredMode = Schema.RequiredMode.REQUIRED, example = "2")
    @I18nNotNull(i18nKey = "infra.i18nMessage.back.moduleType.notNull", message = "模块不能为空")
    private String moduleType;

    @Schema(description = "使用类型", requiredMode = Schema.RequiredMode.REQUIRED, example = "2")
    @I18nNotNull(i18nKey = "infra.i18nMessage.back.useType.notNull", message = "使用类型不能为空")
    private Integer useType;

    @Schema(description = "消息", requiredMode = Schema.RequiredMode.REQUIRED)
    @I18nNotEmpty(i18nKey = "infra.i18nMessage.back.message.notEmpty", message = "消息不能为空")
    private String message;

    @Schema(description = "备注", example = "你说的对")
    private String remark;

}