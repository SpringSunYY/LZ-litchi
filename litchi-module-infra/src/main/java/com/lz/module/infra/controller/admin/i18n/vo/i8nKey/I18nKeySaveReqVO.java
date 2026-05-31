package com.lz.module.infra.controller.admin.i18n.vo.i8nKey;

import com.lz.framework.common.validation.i18n.I18nNotEmpty;
import com.lz.framework.common.validation.i18n.I18nNotNull;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

@Schema(description = "管理后台 - 国际化键名新增/修改 Request VO")
@Data
public class I18nKeySaveReqVO {

    @Schema(description = "编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "985")
    private Long id;

    @Schema(description = "名称", requiredMode = Schema.RequiredMode.REQUIRED, example = "李四")
    @I18nNotEmpty(i18nKey = "infra.i18nKey.back.messageName.notEmpty", message = "名称不能为空")
    private String messageName;

    @Schema(description = "键", requiredMode = Schema.RequiredMode.REQUIRED)
    @I18nNotEmpty(i18nKey = "infra.i18nKey.back.messageKey.notEmpty", message = "键不能为空")
    private String messageKey;

    @Schema(description = "是否内置", requiredMode = Schema.RequiredMode.REQUIRED)
    @I18nNotNull(i18nKey = "infra.i18nKey.back.isSystem.notNull", message = "是否内置不能为空")
    private Integer isSystem;

    @Schema(description = "模块", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @I18nNotNull(i18nKey = "infra.i18nKey.back.moduleType.notNull", message = "模块不能为空")
    private String moduleType;

    @Schema(description = "使用类型", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @I18nNotNull(i18nKey = "infra.i18nKey.back.useType.notNull", message = "使用类型不能为空")
    private Integer useType;

    @Schema(description = "显示顺序")
    private Integer orderNum;

    @Schema(description = "备注", example = "你说的对")
    private String remark;

}
