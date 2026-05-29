package com.lz.module.system.controller.admin.permission.vo.menu;

import com.lz.framework.common.validation.i18n.I18nLength;
import com.lz.framework.common.validation.i18n.I18nNotBlank;
import com.lz.framework.common.validation.i18n.I18nNotNull;
import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.validation.constraints.Size;
import lombok.Data;

import java.time.LocalDateTime;

@Schema(description = "管理后台 - 菜单信息 Response VO")
@Data
public class MenuRespVO {

    @Schema(description = "菜单编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "1024")
    private Long id;

    @Schema(description = "菜单名称", requiredMode = Schema.RequiredMode.REQUIRED, example = "荔枝")
    @I18nNotBlank(i18nKey = "system.menu.back.name.notBlank", message = "菜单名称不能为空")
    @I18nLength(i18nKey = "system.menu.back.name.length", max = 50, message = "菜单名称长度不能超过 50 个字符")
    private String name;

    @Schema(description = "国际化", example = "system.menu.menu")
    @I18nLength(i18nKey = "system.menu.back.i18n.length", max = 100, message = "国际化长度不能超过 100 个字符")
    private String i18n;

    @Schema(description = "权限标识,仅菜单类型为按钮时，才需要传递", example = "sys:menu:add")
    @I18nLength(i18nKey = "system.menu.back.permission.length", max = 100, message = "权限标识长度不能超过 100 个字符")
    private String permission;

    @Schema(description = "类型，参见 MenuTypeEnum 枚举类", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @I18nNotNull(i18nKey = "system.menu.back.type.notNull", message = "菜单类型不能为空")
    private Integer type;

    @Schema(description = "显示顺序", requiredMode = Schema.RequiredMode.REQUIRED, example = "1024")
    @I18nNotNull(i18nKey = "system.menu.back.sort.notNull", message = "显示顺序不能为空")
    private Integer sort;

    @Schema(description = "父菜单 ID", requiredMode = Schema.RequiredMode.REQUIRED, example = "1024")
    @I18nNotNull(i18nKey = "system.menu.back.parentId.notNull", message = "父菜单 ID 不能为空")
    private Long parentId;

    @Schema(description = "路由地址,仅菜单类型为菜单或者目录时，才需要传", example = "post")
    @I18nLength(i18nKey = "system.menu.back.path.length", max = 200, message = "路由地址长度不能超过 200 个字符")
    private String path;

    @Schema(description = "菜单图标,仅菜单类型为菜单或者目录时，才需要传", example = "/menu/list")
    private String icon;

    @Schema(description = "组件路径,仅菜单类型为菜单时，才需要传", example = "system/post/index")
    @I18nLength(i18nKey = "system.menu.back.component.length", max = 200, message = "组件路径长度不能超过 200 个字符")
    private String component;

    @Schema(description = "组件名", example = "SystemUser")
    private String componentName;

    @Schema(description = "状态,见 CommonStatusEnum 枚举", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @I18nNotNull(i18nKey = "system.menu.back.status.notNull", message = "状态不能为空")
    private Integer status;

    @Schema(description = "是否可见", example = "false")
    private Boolean visible;

    @Schema(description = "是否缓存", example = "false")
    private Boolean keepAlive;

    @Schema(description = "是否总是显示", example = "false")
    private Boolean alwaysShow;

    @Schema(description = "布局", example = "BasicLayout")
    private String layout;

    @Schema(description = "新窗口", example = "false")
    private Boolean newWindows;

    @Schema(description = "创建时间", requiredMode = Schema.RequiredMode.REQUIRED, example = "时间戳格式")
    private LocalDateTime createTime;

    @Schema(description = "备注", example = "备注")
    private String remark;

}
