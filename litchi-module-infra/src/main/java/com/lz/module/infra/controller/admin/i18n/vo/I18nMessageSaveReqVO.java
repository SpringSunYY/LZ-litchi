package com.lz.module.infra.controller.admin.i18n.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.*;
import jakarta.validation.constraints.*;

@Schema(description = "管理后台 - 国际化信息新增/修改 Request VO")
@Data
public class I18nMessageSaveReqVO {

    @Schema(description = "主键", requiredMode = Schema.RequiredMode.REQUIRED, example = "22458")
    private Long id;

    @Schema(description = "名称", requiredMode = Schema.RequiredMode.REQUIRED, example = "赵六")
    @NotEmpty(message = "名称不能为空")
    private String messageName;

    @Schema(description = "键", requiredMode = Schema.RequiredMode.REQUIRED)
    @NotEmpty(message = "键不能为空")
    private String messageKey;

    @Schema(description = "简称", requiredMode = Schema.RequiredMode.REQUIRED)
    @NotEmpty(message = "简称不能为空")
    private String locale;

    @Schema(description = "使用端", requiredMode = Schema.RequiredMode.REQUIRED)
    @NotNull(message = "使用端不能为空")
    private Integer localeTarget;

    @Schema(description = "是否内置", requiredMode = Schema.RequiredMode.REQUIRED)
    @NotNull(message = "是否内置不能为空")
    private Integer isSystem;

    @Schema(description = "模块", requiredMode = Schema.RequiredMode.REQUIRED, example = "2")
    @NotNull(message = "模块不能为空")
    private String moduleType;

    @Schema(description = "使用类型", requiredMode = Schema.RequiredMode.REQUIRED, example = "2")
    @NotNull(message = "使用类型不能为空")
    private Integer useType;

    @Schema(description = "消息", requiredMode = Schema.RequiredMode.REQUIRED)
    @NotEmpty(message = "消息不能为空")
    private String message;

    @Schema(description = "备注", example = "你说的对")
    private String remark;

}