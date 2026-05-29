package com.lz.module.system.controller.admin.permission.vo.menu;

import com.lz.framework.common.validation.i18n.I18nLength;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

@Schema(description = "管理后台 - 菜单精简信息 Response VO")
@Data
public class MenuSimpleRespVO {

    @Schema(description = "菜单编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "1024")
    private Long id;

    @Schema(description = "菜单名称", requiredMode = Schema.RequiredMode.REQUIRED, example = "荔枝")
    private String name;

    @Schema(description = "国际化", example = "system.menu.menu")
    @I18nLength(i18nKey = "system.menu.back.i18n.length", max = 100, message = "国际化长度不能超过 100 个字符")
    private String i18n;

    @Schema(description = "父菜单 ID", requiredMode = Schema.RequiredMode.REQUIRED, example = "1024")
    private Long parentId;

    @Schema(description = "类型，参见 MenuTypeEnum 枚举类", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    private Integer type;

    @Schema(description = "备注", example = "备注")
    private String remark;

}
