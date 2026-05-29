package com.lz.module.system.controller.admin.user.vo.user;

import com.lz.framework.common.validation.i18n.I18nLength;
import com.lz.framework.common.validation.i18n.I18nNotEmpty;
import com.lz.framework.common.validation.i18n.I18nNotNull;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

@Schema(description = "管理后台 - 用户更新密码 Request VO")
@Data
public class UserUpdatePasswordReqVO {

    @Schema(description = "用户编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "1024")
    @I18nNotNull(i18nKey = "system.user.back.id.notNull", message = "用户编号不能为空")
    private Long id;

    @Schema(description = "密码", requiredMode = Schema.RequiredMode.REQUIRED, example = "123456")
    @I18nNotEmpty(i18nKey = "system.user.back.password.notBlank", message = "密码不能为空")
    @I18nLength(i18nKey = "system.user.back.password.length", min = 4, max = 16, message = "密码长度为 4-16 位")
    private String password;

}
