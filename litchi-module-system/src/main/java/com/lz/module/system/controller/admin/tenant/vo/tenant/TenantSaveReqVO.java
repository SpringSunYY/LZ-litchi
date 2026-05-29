package com.lz.module.system.controller.admin.tenant.vo.tenant;

import cn.hutool.core.util.ObjectUtil;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.lz.framework.common.validation.i18n.I18nAssertTrue;
import com.lz.framework.common.validation.i18n.I18nLength;
import com.lz.framework.common.validation.i18n.I18nNotEmpty;
import com.lz.framework.common.validation.i18n.I18nNotNull;
import com.lz.framework.common.validation.i18n.I18nPattern;
import com.lz.framework.common.validation.i18n.I18nSize;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

@Schema(description = "管理后台 - 租户创建/修改 Request VO")
@Data
public class TenantSaveReqVO {

    @Schema(description = "租户编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "22788")
    private Long id;

    @Schema(description = "租户名", requiredMode = Schema.RequiredMode.REQUIRED, example = "张三")
    @I18nNotEmpty(i18nKey = "system.tenant.back.name.notEmpty", message = "租户名不能为空")
    @I18nSize(i18nKey = "system.tenant.back.name.size", min = 4, max = 32, message = "租户名长度为 4~32 个字符")
    private String name;

    @Schema(description = "编码", requiredMode = Schema.RequiredMode.REQUIRED)
    @I18nNotEmpty(i18nKey = "system.tenant.back.code.notEmpty", message = "编码不能为空")
    @I18nLength(i18nKey = "system.tenant.back.code.length", min = 4, max = 32, message = "编码长度为 4~32 个字符")
    private String code;

    @Schema(description = "联系人的用户编号", example = "24903")
    private Long contactUserId;

    @Schema(description = "联系人", requiredMode = Schema.RequiredMode.REQUIRED, example = "王五")
    @I18nNotEmpty(i18nKey = "system.tenant.back.contactName.notEmpty", message = "联系人不能为空")
    private String contactName;

    @Schema(description = "联系手机")
    private String contactMobile;

    @Schema(description = "行业", requiredMode = Schema.RequiredMode.REQUIRED)
    @I18nNotNull(i18nKey = "system.tenant.back.industry.notNull", message = "行业不能为空")
    private Integer industry;

    @Schema(description = "类型", requiredMode = Schema.RequiredMode.REQUIRED, example = "2")
    @I18nNotNull(i18nKey = "system.tenant.back.type.notNull", message = "类型不能为空")
    private Integer type;

    @Schema(description = "租户状态", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    private Integer status;

    @Schema(description = "地区")
    private String addressCode;

    @Schema(description = "地址")
    private String addressDetail;

    @Schema(description = "相关资质")
    private String qualifications;

    @Schema(description = "绑定域名")
    private String website;

    // ========== 仅【创建】时，需要传递的字段 ==========

    @Schema(description = "用户账号", requiredMode = Schema.RequiredMode.REQUIRED, example = "litchi")
    @I18nPattern(i18nKey = "system.tenant.back.username.pattern", regexp = "^[a-zA-Z0-9]{4,30}$", message = "用户账号由 数字、字母 组成")
    @I18nSize(i18nKey = "system.tenant.back.username.size", min = 4, max = 30, message = "用户账号长度为 4-30 个字符")
    private String username;

    @Schema(description = "密码", requiredMode = Schema.RequiredMode.REQUIRED, example = "123456")
    @I18nLength(i18nKey = "system.tenant.back.password.length", min = 4, max = 16, message = "密码长度为 4-16 位")
    private String password;

    @I18nAssertTrue(i18nKey = "system.tenant.back.usernameValid.assertTrue", message = "用户账号、密码不能为空")
    @JsonIgnore
    public boolean isUsernameValid() {
        return id != null // 修改时，不需要传递
                || (ObjectUtil.isAllNotEmpty(username, password)); // 新增时，必须都传递 username、password
    }

}
