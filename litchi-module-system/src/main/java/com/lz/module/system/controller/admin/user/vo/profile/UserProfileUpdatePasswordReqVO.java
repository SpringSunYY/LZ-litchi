package com.lz.module.system.controller.admin.user.vo.profile;

import com.lz.framework.common.validation.i18n.I18nLength;
import com.lz.framework.common.validation.i18n.I18nNotEmpty;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

@Schema(description = "管理后台 - 用户个人中心更新密码 Request VO")
@Data
public class UserProfileUpdatePasswordReqVO {

    @Schema(description = "旧密码", requiredMode = Schema.RequiredMode.REQUIRED, example = "123456")
    @I18nNotEmpty(i18nKey = "system.userProfile.back.oldPassword.notBlank", message = "旧密码不能为空")
    @I18nLength(i18nKey = "system.userProfile.back.oldPassword.length", min = 4, max = 16, message = "密码长度为 4-16 位")
    private String oldPassword;

    @Schema(description = "新密码", requiredMode = Schema.RequiredMode.REQUIRED, example = "654321")
    @I18nNotEmpty(i18nKey = "system.userProfile.back.newPassword.notBlank", message = "新密码不能为空")
    @I18nLength(i18nKey = "system.userProfile.back.newPassword.length", min = 4, max = 16, message = "密码长度为 4-16 位")
    private String newPassword;

}
