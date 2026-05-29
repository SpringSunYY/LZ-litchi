package com.lz.module.infra.controller.admin.config.vo;

import com.lz.framework.common.validation.i18n.I18nLength;
import com.lz.framework.common.validation.i18n.I18nNotBlank;
import com.lz.framework.common.validation.i18n.I18nNotEmpty;
import com.lz.framework.common.validation.i18n.I18nNotNull;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

@Schema(description = "管理后台 - 参数配置创建/修改 Request VO")
@Data
public class ConfigSaveReqVO {

    @Schema(description = "参数配置序号", example = "1024")
    private Long id;

    @Schema(description = "参数分组", requiredMode = Schema.RequiredMode.REQUIRED, example = "biz")
    @I18nNotEmpty(i18nKey = "infra.config.back.category.notEmpty", message = "参数分组不能为空")
    @I18nLength(i18nKey = "infra.config.back.category.length", max = 50, message = "参数名称不能超过 50 个字符")
    private String category;

    @Schema(description = "参数名称", requiredMode = Schema.RequiredMode.REQUIRED, example = "数据库名")
    @I18nNotBlank(i18nKey = "infra.config.back.name.notBlank", message = "参数名称不能为空")
    @I18nLength(i18nKey = "infra.config.back.name.length", max = 100, message = "参数名称不能超过 100 个字符")
    private String name;

    @Schema(description = "参数键名", requiredMode = Schema.RequiredMode.REQUIRED, example = "yunai.db.username")
    @I18nNotBlank(i18nKey = "infra.config.back.key.notBlank", message = "参数键名长度不能为空")
    @I18nLength(i18nKey = "infra.config.back.key.length", max = 100, message = "参数键名长度不能超过 100 个字符")
    private String key;

    @Schema(description = "参数键值", requiredMode = Schema.RequiredMode.REQUIRED, example = "1024")
    @I18nNotBlank(i18nKey = "infra.config.back.value.notBlank", message = "参数键值不能为空")
    @I18nLength(i18nKey = "infra.config.back.value.length", max = 500, message = "参数键值长度不能超过 500 个字符")
    private String value;

    @Schema(description = "是否可见", requiredMode = Schema.RequiredMode.REQUIRED, example = "true")
    @I18nNotNull(i18nKey = "infra.config.back.visible.notNull", message = "是否可见不能为空")
    private Boolean visible;

    @Schema(description = "备注", example = "备注一下很帅气！")
    private String remark;

}
