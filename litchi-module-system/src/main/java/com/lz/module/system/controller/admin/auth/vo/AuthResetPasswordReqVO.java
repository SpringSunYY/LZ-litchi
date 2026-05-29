package com.lz.module.system.controller.admin.auth.vo;

import com.lz.framework.common.validation.Mobile;
import com.lz.framework.common.validation.i18n.I18nLength;
import com.lz.framework.common.validation.i18n.I18nNotEmpty;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Schema(description = "管理后台 - 短信重置账号密码 Request VO")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class AuthResetPasswordReqVO {

    @Schema(description = "密码", requiredMode = Schema.RequiredMode.REQUIRED, example = "1234")
    @I18nNotEmpty(i18nKey = "system.smsCode.back.password.notEmpty", message = "密码不能为空")
    @I18nLength(i18nKey = "system.smsCode.back.password.length", min = 4, max = 16, message = "密码长度为 4-16 位")
    private String password;

    @Schema(description = "手机号", requiredMode = Schema.RequiredMode.REQUIRED, example = "13312341234")
    @I18nNotEmpty(i18nKey = "system.smsCode.back.mobile.notEmpty", message = "手机号不能为空")
    @Mobile
    private String mobile;

    @Schema(description = "手机短信验证码", requiredMode = Schema.RequiredMode.REQUIRED, example = "123456")
    @I18nNotEmpty(i18nKey = "system.smsCode.back.code.notEmpty", message = "手机手机短信验证码不能为空")
    private String code;
}