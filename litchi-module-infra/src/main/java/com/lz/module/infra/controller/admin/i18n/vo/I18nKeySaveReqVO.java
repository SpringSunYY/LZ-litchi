package com.lz.module.infra.controller.admin.i18n.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.*;
import jakarta.validation.constraints.*;

@Schema(description = "管理后台 - 国际化键名新增/修改 Request VO")
@Data
public class I18nKeySaveReqVO {

    @Schema(description = "编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "985")
    private Long id;

    @Schema(description = "名称", requiredMode = Schema.RequiredMode.REQUIRED, example = "李四")
    @NotEmpty(message = "名称不能为空")
    private String messageName;

    @Schema(description = "键", requiredMode = Schema.RequiredMode.REQUIRED)
    @NotEmpty(message = "键不能为空")
    private String messageKey;

    @Schema(description = "使用端", requiredMode = Schema.RequiredMode.REQUIRED)
    @NotNull(message = "使用端不能为空")
    private Integer localeTarget;

    @Schema(description = "是否内置", requiredMode = Schema.RequiredMode.REQUIRED)
    @NotNull(message = "是否内置不能为空")
    private Integer isSystem;

    @Schema(description = "模块", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @NotNull(message = "模块不能为空")
    private Integer moduleType;

    @Schema(description = "使用类型", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @NotNull(message = "使用类型不能为空")
    private Integer useType;

    @Schema(description = "显示顺序")
    private Integer orderNum;

    @Schema(description = "备注", example = "你说的对")
    private String remark;

}