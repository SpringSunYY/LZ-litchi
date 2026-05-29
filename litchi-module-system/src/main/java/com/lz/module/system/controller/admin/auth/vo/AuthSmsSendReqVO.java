package com.lz.module.system.controller.admin.auth.vo;

import com.lz.framework.common.validation.InEnum;
import com.lz.framework.common.validation.Mobile;
import com.lz.framework.common.validation.i18n.I18nNotEmpty;
import com.lz.framework.common.validation.i18n.I18nNotNull;
import com.lz.module.system.enums.sms.SmsSceneEnum;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Schema(description = "管理后台 - 发送手机验证码 Request VO")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class AuthSmsSendReqVO extends CaptchaVerificationReqVO {

    @Schema(description = "手机号", requiredMode = Schema.RequiredMode.REQUIRED, example = "litchiyuanma")
    @I18nNotEmpty(i18nKey = "system.smsCode.back.mobile.notEmpty", message = "手机号不能为空")
    @Mobile
    private String mobile;

    @Schema(description = "短信场景", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @I18nNotNull(i18nKey = "system.smsCode.back.scene.notNull", message = "发送场景不能为空")
    @InEnum(SmsSceneEnum.class)
    private Integer scene;

}
