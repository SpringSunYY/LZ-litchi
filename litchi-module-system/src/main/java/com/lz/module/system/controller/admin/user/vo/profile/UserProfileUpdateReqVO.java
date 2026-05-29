package com.lz.module.system.controller.admin.user.vo.profile;

import com.lz.framework.common.validation.i18n.I18nEmail;
import com.lz.framework.common.validation.i18n.I18nLength;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;


@Schema(description = "管理后台 - 用户个人信息更新 Request VO")
@Data
public class UserProfileUpdateReqVO {

    @Schema(description = "用户昵称", example = "YY")
    @I18nLength(i18nKey = "system.userProfile.back.nickname.length", max = 30, message = "用户昵称长度不能超过 30 个字符")
    private String nickname;

    @Schema(description = "用户邮箱", example = "litchi@iocoder.cn")
    @I18nEmail(i18nKey = "system.userProfile.back.email.email")
    @I18nLength(i18nKey = "system.userProfile.back.email.length", max = 50, message = "邮箱长度不能超过 50 个字符")
    private String email;

    @Schema(description = "手机号码", example = "15601691300")
    @I18nLength(i18nKey = "system.userProfile.back.mobile.length", min = 11, max = 11, message = "手机号长度必须 11 位")
    private String mobile;

    @Schema(description = "用户性别，参见 SexEnum 枚举类", example = "1")
    private Integer sex;

    @Schema(description = "角色头像", example = "https://www.iocoder.cn/1.png")
    private String avatar;

}
