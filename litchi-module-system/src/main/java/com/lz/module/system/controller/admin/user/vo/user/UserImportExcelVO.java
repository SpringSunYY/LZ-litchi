package com.lz.module.system.controller.admin.user.vo.user;

import com.lz.framework.excel.core.convert.DictConvert;
import com.lz.module.system.enums.DictTypeConstants;
import com.alibaba.excel.annotation.ExcelProperty;
import com.lz.framework.excel.core.annotations.ExcelColumnSelect;
import com.lz.framework.excel.core.annotations.ExcelI18n;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

/**
 * 用户 Excel 导入 VO
 */
@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Accessors(chain = false) // 设置 chain = false，避免用户导入有问题
public class UserImportExcelVO {

    @ExcelProperty("登录名称")
    @ExcelI18n(i18nKey = "system.user.field.username")
    private String username;

    @ExcelProperty("用户名称")
    @ExcelI18n(i18nKey = "system.user.field.nickname")
    private String nickname;

    @ExcelProperty("部门编号")
    @ExcelI18n(i18nKey = "system.user.field.deptId")
    private Long deptId;

    @ExcelProperty("用户邮箱")
    @ExcelI18n(i18nKey = "system.user.field.email")
    private String email;

    @ExcelProperty("手机号码")
    @ExcelI18n(i18nKey = "system.user.field.mobile")
    private String mobile;

    @ExcelProperty(value = "用户性别", converter = DictConvert.class)
    @ExcelColumnSelect(dictType = DictTypeConstants.USER_SEX, i18n = true)
    @ExcelI18n(i18nKey = "system.user.field.sex")
    private Integer sex;

    @ExcelProperty(value = "账号状态", converter = DictConvert.class)
    @ExcelColumnSelect(dictType = DictTypeConstants.COMMON_STATUS, i18n = true)
    @ExcelI18n(i18nKey = "system.user.field.status")
    private Integer status;

}
