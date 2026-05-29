package com.lz.module.infra.controller.admin.i18n.vo;

import com.lz.framework.common.validation.i18n.I18nNotEmpty;
import com.lz.framework.common.validation.i18n.I18nNotNull;
import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import lombok.Data;

@Schema(description = "管理后台 - 国际化国家新增/修改 Request VO")
@Data
public class I18nLocaleSaveReqVO {

    @Schema(description = "编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "8807")
    private Long id;

    @Schema(description = "国家地区", requiredMode = Schema.RequiredMode.REQUIRED, example = "赵六")
    @I18nNotEmpty(i18nKey = "infra.i18nLocale.back.localeName.notEmpty", message = "国家地区不能为空")
    private String localeName;

    @Schema(description = "简称", requiredMode = Schema.RequiredMode.REQUIRED)
    @I18nNotEmpty(i18nKey = "infra.i18nLocale.back.locale.notEmpty", message = "简称不能为空")
    private String locale;

    @Schema(description = "显示顺序")
    private Integer orderNum;

    @Schema(description = "状态", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @I18nNotNull(i18nKey = "infra.i18nLocale.back.localeStatus.notNull", message = "状态不能为空")
    private Integer localeStatus;

    @Schema(description = "使用端", requiredMode = Schema.RequiredMode.REQUIRED, example = "2")
    @I18nNotNull(i18nKey = "infra.i18nLocale.back.localeTarget.notNull", message = "使用端不能为空")
    private Integer localeTarget;

    @Schema(description = "默认", requiredMode = Schema.RequiredMode.REQUIRED)
    @I18nNotNull(i18nKey = "infra.i18nLocale.back.isDefault.notNull", message = "默认不能为空")
    private Integer isDefault;

    @Schema(description = "备注", example = "你猜")
    private String remark;

}