package com.lz.module.system.controller.admin.permission.vo.permission;

import com.lz.framework.common.validation.i18n.I18nNotNull;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.util.Collections;
import java.util.Set;

@Schema(description = "管理后台 - 赋予用户角色 Request VO")
@Data
public class PermissionAssignUserRoleReqVO {

    @Schema(description = "用户编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @I18nNotNull(i18nKey = "system.permission.back.userId.notNull", message = "用户编号不能为空")
    private Long userId;

    @Schema(description = "角色编号列表", example = "1,3,5")
    private Set<Long> roleIds = Collections.emptySet(); // 兜底

}
