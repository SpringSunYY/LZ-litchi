package com.lz.module.system.controller.admin.auth.vo;

import cn.hutool.core.util.StrUtil;
import com.lz.framework.common.validation.InEnum;
import com.lz.framework.common.validation.i18n.I18nAssertTrue;
import com.lz.framework.common.validation.i18n.I18nLength;
import com.lz.framework.common.validation.i18n.I18nNotEmpty;
import com.lz.framework.common.validation.i18n.I18nPattern;
import com.lz.module.system.enums.social.SocialTypeEnum;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Schema(description = "管理后台 - 账号密码登录 Request VO，如果登录并绑定社交用户，需要传递 social 开头的参数")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class AuthLoginReqVO extends CaptchaVerificationReqVO {

    @Schema(description = "账号", requiredMode = Schema.RequiredMode.REQUIRED, example = "litchiyuanma")
    @I18nNotEmpty(i18nKey = "system.authLogin.back.username.notEmpty", message = "账号不能为空")
    @I18nLength(i18nKey = "system.authLogin.back.username.length", min = 4, max = 16, message = "账号长度为 4-16 位")
    @I18nPattern(i18nKey = "system.authLogin.back.username.pattern", regexp = "^[A-Za-z0-9]+$", message = "账号格式为数字以及字母")
    private String username;

    @Schema(description = "密码", requiredMode = Schema.RequiredMode.REQUIRED, example = "buzhidao")
    @I18nNotEmpty(i18nKey = "system.authLogin.back.password.notEmpty", message = "密码不能为空")
    @I18nLength(i18nKey = "system.authLogin.back.password.length", min = 4, max = 16, message = "密码长度为 4-16 位")
    private String password;

    // ========== 绑定社交登录时，需要传递如下参数 ==========

    @Schema(description = "社交平台的类型，参见 SocialTypeEnum 枚举值", requiredMode = Schema.RequiredMode.REQUIRED, example = "10")
    @InEnum(SocialTypeEnum.class)
    private Integer socialType;

    @Schema(description = "授权码", requiredMode = Schema.RequiredMode.REQUIRED, example = "1024")
    private String socialCode;

    @Schema(description = "state", requiredMode = Schema.RequiredMode.REQUIRED, example = "9b2ffbc1-7425-4155-9894-9d5c08541d62")
    private String socialState;

    @I18nAssertTrue(i18nKey = "system.authLogin.back.socialCode.assertTrue", message = "授权码不能为空")
    public boolean isSocialCodeValid() {
        return socialType == null || StrUtil.isNotEmpty(socialCode);
    }

    @I18nAssertTrue(i18nKey = "system.authLogin.back.socialState.assertTrue", message = "授权 state 不能为空")
    public boolean isSocialState() {
        return socialType == null || StrUtil.isNotEmpty(socialState);
    }

}