package com.lz.module.system.controller.admin.auth.vo;

import com.lz.framework.common.validation.Mobile;
import com.lz.framework.common.validation.i18n.I18nNotEmpty;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Schema(description = "管理后台 - 短信验证码的登录 Request VO")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class AuthSmsLoginReqVO {

    @Schema(description = "手机号", requiredMode = Schema.RequiredMode.REQUIRED, example = "litchiyuanma")
    @I18nNotEmpty(i18nKey = "system.smsCode.back.mobile.notEmpty", message = "手机号不能为空")
    @Mobile
    private String mobile;

    @Schema(description = "短信验证码", requiredMode = Schema.RequiredMode.REQUIRED, example = "1024")
    @I18nNotEmpty(i18nKey = "system.smsCode.back.code.notEmpty", message = "验证码不能为空")
    private String code;

}
