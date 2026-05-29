package com.lz.module.system.controller.admin.dept.vo.dept;

import com.lz.framework.common.enums.CommonStatusEnum;
import com.lz.framework.common.validation.InEnum;
import com.lz.framework.common.validation.i18n.I18nEmail;
import com.lz.framework.common.validation.i18n.I18nLength;
import com.lz.framework.common.validation.i18n.I18nNotBlank;
import com.lz.framework.common.validation.i18n.I18nNotNull;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

@Schema(description = "管理后台 - 部门创建/修改 Request VO")
@Data
public class DeptSaveReqVO {

    @Schema(description = "部门编号", example = "1024")
    private Long id;

    @Schema(description = "部门名称", requiredMode = Schema.RequiredMode.REQUIRED, example = "荔枝")
    @I18nNotBlank(i18nKey = "system.dept.back.name.notBlank", message = "部门名称不能为空")
    @I18nLength(i18nKey = "system.dept.back.name.length", max = 30, message = "部门名称长度不能超过 30 个字符")
    private String name;

    @Schema(description = "父部门 ID", example = "1024")
    private Long parentId;

    @Schema(description = "显示顺序", requiredMode = Schema.RequiredMode.REQUIRED, example = "1024")
    @I18nNotNull(i18nKey = "system.dept.back.sort.notNull", message = "显示顺序不能为空")
    private Integer sort;

    @Schema(description = "负责人的用户编号", example = "2048")
    private Long leaderUserId;

    @Schema(description = "联系电话", example = "15601691000")
    @I18nLength(i18nKey = "system.dept.back.phone.length", max = 11, message = "联系电话长度不能超过11个字符")
    private String phone;

    @Schema(description = "邮箱", example = "litchi@iocoder.cn")
    @I18nEmail(i18nKey = "system.dept.back.email.email", message = "邮箱格式不正确")
    @I18nLength(i18nKey = "system.dept.back.email.length", max = 50, message = "邮箱长度不能超过 50 个字符")
    private String email;

    @Schema(description = "状态,见 CommonStatusEnum 枚举", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @I18nNotNull(i18nKey = "system.dept.back.status.notNull", message = "状态不能为空")
    @InEnum(value = CommonStatusEnum.class, message = "修改状态必须是 {value}")
    private Integer status;

}
