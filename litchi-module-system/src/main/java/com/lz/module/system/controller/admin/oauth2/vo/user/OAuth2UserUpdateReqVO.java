package com.lz.module.system.controller.admin.oauth2.vo.user;

import com.lz.framework.common.validation.i18n.I18nEmail;
import com.lz.framework.common.validation.i18n.I18nLength;
import com.lz.framework.common.validation.i18n.I18nSize;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Schema(description = "管理后台 - OAuth2 更新用户基本信息 Request VO")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class OAuth2UserUpdateReqVO {

    @Schema(description = "用户昵称", requiredMode = Schema.RequiredMode.REQUIRED, example = "YY")
    @I18nSize(i18nKey = "system.oauth2UserUpdate.back.nickname.size", max = 30, message = "用户昵称长度不能超过 30 个字符")
    private String nickname;

    @Schema(description = "用户邮箱", example = "litchi@iocoder.cn")
    @I18nEmail(i18nKey = "system.oauth2UserUpdate.back.email.email", message = "邮箱格式不正确")
    @I18nLength(i18nKey = "system.oauth2UserUpdate.back.email.length", max = 50, message = "邮箱长度不能超过 50 个字符")
    private String email;

    @Schema(description = "手机号码", example = "15601691300")
    @I18nLength(i18nKey = "system.oauth2UserUpdate.back.mobile.length", min = 11, max = 11, message = "手机号长度必须 11 位")
    private String mobile;

    @Schema(description = "用户性别，参见 SexEnum 枚举类", example = "1")
    private Integer sex;

}
