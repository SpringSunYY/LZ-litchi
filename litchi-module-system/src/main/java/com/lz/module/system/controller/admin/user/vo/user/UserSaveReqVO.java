package com.lz.module.system.controller.admin.user.vo.user;

import cn.hutool.core.util.ObjectUtil;
import com.lz.framework.common.validation.Mobile;
import com.lz.framework.common.validation.i18n.I18nAssertTrue;
import com.lz.framework.common.validation.i18n.I18nEmail;
import com.lz.framework.common.validation.i18n.I18nLength;
import com.lz.framework.common.validation.i18n.I18nNotBlank;
import com.lz.framework.common.validation.i18n.I18nPattern;
import com.lz.module.system.framework.operatelog.core.DeptParseFunction;
import com.lz.module.system.framework.operatelog.core.PostParseFunction;
import com.lz.module.system.framework.operatelog.core.SexParseFunction;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.mzt.logapi.starter.annotation.DiffLogField;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.util.Set;

@Schema(description = "管理后台 - 用户创建/修改 Request VO")
@Data
public class UserSaveReqVO {

    @Schema(description = "用户编号", example = "1024")
    private Long id;

    @Schema(description = "用户账号", requiredMode = Schema.RequiredMode.REQUIRED, example = "litchi")
    @I18nNotBlank(i18nKey = "system.user.back.username.notBlank", message = "用户账号不能为空")
    @I18nPattern(i18nKey = "system.user.back.username.pattern", regexp = "^[a-zA-Z0-9]+$", message = "用户账号由 数字、字母 组成")
    @I18nLength(i18nKey = "system.user.back.username.length", min = 4, max = 30, message = "用户账号长度为 4-30 个字符")
    @DiffLogField(name = "用户账号")
    private String username;

    @Schema(description = "用户昵称", requiredMode = Schema.RequiredMode.REQUIRED, example = "YY")
    @I18nLength(i18nKey = "system.user.back.nickname.length", max = 30, message = "用户昵称长度不能超过30个字符")
    @DiffLogField(name = "用户昵称")
    private String nickname;

    @Schema(description = "备注", example = "我是一个用户")
    @DiffLogField(name = "备注")
    private String remark;

    @Schema(description = "部门编号", example = "我是一个用户")
    @DiffLogField(name = "部门", function = DeptParseFunction.NAME)
    private Long deptId;

    @Schema(description = "岗位编号数组", example = "1")
    @DiffLogField(name = "岗位", function = PostParseFunction.NAME)
    private Set<Long> postIds;

    @Schema(description = "用户邮箱", example = "litchi@iocoder.cn")
    @I18nEmail(i18nKey = "system.user.back.email.email")
    @I18nLength(i18nKey = "system.user.back.email.length", max = 50, message = "邮箱长度不能超过 50 个字符")
    @DiffLogField(name = "用户邮箱")
    private String email;

    @Schema(description = "手机号码", example = "15601691300")
    @Mobile
    @DiffLogField(name = "手机号码")
    private String mobile;

    @Schema(description = "用户性别，参见 SexEnum 枚举类", example = "1")
    @DiffLogField(name = "用户性别", function = SexParseFunction.NAME)
    private Integer sex;

    @Schema(description = "用户头像", example = "https://www.iocoder.cn/xxx.png")
    @DiffLogField(name = "用户头像")
    private String avatar;

    // ========== 仅【创建】时，需要传递的字段 ==========

    @Schema(description = "密码", requiredMode = Schema.RequiredMode.REQUIRED, example = "123456")
    @I18nLength(i18nKey = "system.user.back.password.length", min = 4, max = 16, message = "密码长度为 4-16 位")
    private String password;

    @I18nAssertTrue(i18nKey = "system.user.back.password.notBlank", message = "密码不能为空")
    @JsonIgnore
    public boolean isPasswordValid() {
        return id != null // 修改时，不需要传递
                || (ObjectUtil.isAllNotEmpty(password)); // 新增时，必须都传递 password
    }

}
