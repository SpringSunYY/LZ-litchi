package com.lz.module.system.controller.admin.auth.vo;


import cn.hutool.core.util.ObjectUtil;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.lz.framework.common.validation.i18n.I18nLength;
import com.lz.framework.common.validation.i18n.I18nNotBlank;
import com.lz.framework.common.validation.i18n.I18nNotEmpty;
import com.lz.framework.common.validation.i18n.I18nPattern;
import com.lz.framework.common.validation.i18n.I18nSize;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

@Schema(description = "管理后台 - Register Request VO")
@Data
public class AuthRegisterReqVO extends CaptchaVerificationReqVO {

    @Schema(description = "用户账号", requiredMode = Schema.RequiredMode.REQUIRED, example = "litchi")
    @I18nNotBlank(i18nKey = "system.authRegister.back.username.notBlank", message = "用户账号不能为空")
    @I18nPattern(i18nKey = "system.authRegister.back.username.pattern", regexp = "^[a-zA-Z0-9]{4,30}$", message = "用户账号由 数字、字母 组成")
    @I18nSize(i18nKey = "system.authRegister.back.username.size", min = 4, max = 30, message = "用户账号长度为 4-30 个字符")
    private String username;

    @Schema(description = "用户昵称", requiredMode = Schema.RequiredMode.REQUIRED, example = "YY")
    @I18nNotBlank(i18nKey = "system.authRegister.back.nickname.notBlank", message = "用户昵称不能为空")
    @I18nSize(i18nKey = "system.authRegister.back.nickname.size", max = 30, message = "用户昵称长度不能超过 30 个字符")
    private String nickname;

    @Schema(description = "密码", requiredMode = Schema.RequiredMode.REQUIRED, example = "123456")
    @I18nNotEmpty(i18nKey = "system.authRegister.back.password.notEmpty", message = "密码不能为空")
    @I18nLength(i18nKey = "system.authRegister.back.password.length", min = 4, max = 16, message = "密码长度为 4-16 位")
    private String password;

    // ========== 仅【开启租户】时，需要传递的字段 ==========
    private String tenantCode;
    @Schema(description = "租户名", requiredMode = Schema.RequiredMode.REQUIRED, example = "张三")
    @I18nNotEmpty(i18nKey = "system.authRegister.back.tenantName.notEmpty", message = "租户名不能为空")
    @I18nSize(i18nKey = "system.authRegister.back.tenantName.size", min = 4, max = 32, message = "租户名长度为 4~32 个字符")
    private String tenantName;

    @Schema(description = "联系人", requiredMode = Schema.RequiredMode.REQUIRED, example = "王五")
    @I18nNotEmpty(i18nKey = "system.authRegister.back.contactName.notEmpty", message = "联系人不能为空")
    private String contactName;

    @Schema(description = "联系手机")
    private String contactMobile;

}
