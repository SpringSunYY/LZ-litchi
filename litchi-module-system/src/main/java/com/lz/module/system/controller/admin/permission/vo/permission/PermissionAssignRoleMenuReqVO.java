package com.lz.module.system.controller.admin.permission.vo.permission;

import com.lz.framework.common.validation.i18n.I18nNotNull;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.util.Collections;
import java.util.Set;

@Schema(description = "管理后台 - 赋予角色菜单 Request VO")
@Data
public class PermissionAssignRoleMenuReqVO {

    @Schema(description = "角色编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @I18nNotNull(i18nKey = "system.permission.back.roleId.notNull", message = "角色编号不能为空")
    private Long roleId;

    @Schema(description = "菜单编号列表", example = "1,3,5")
    private Set<Long> menuIds = Collections.emptySet(); // 兜底

}
