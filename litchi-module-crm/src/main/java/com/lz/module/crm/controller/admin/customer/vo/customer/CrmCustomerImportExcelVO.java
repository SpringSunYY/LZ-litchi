package com.lz.module.crm.controller.admin.customer.vo.customer;

import com.lz.framework.excel.core.annotations.DictFormat;
import com.lz.framework.excel.core.annotations.ExcelColumnSelect;
import com.lz.framework.excel.core.annotations.ExcelI18n;
import com.lz.framework.excel.core.convert.AreaConvert;
import com.lz.framework.excel.core.convert.DictConvert;
import com.lz.module.crm.framework.excel.core.AreaExcelColumnSelectFunction;
import com.alibaba.excel.annotation.ExcelProperty;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

import static com.lz.module.crm.enums.DictTypeConstants.*;

/**
 * 客户 Excel 导入 VO
 */
@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Accessors(chain = false)
public class CrmCustomerImportExcelVO {

    @ExcelProperty("客户名称")
    @ExcelI18n(i18nKey = "crm.customer.field.name")
    private String name;

    @ExcelProperty("手机")
    @ExcelI18n(i18nKey = "crm.customer.field.mobile")
    private String mobile;

    @ExcelProperty("电话")
    @ExcelI18n(i18nKey = "crm.customer.field.telephone")
    private String telephone;

    @ExcelProperty("QQ")
    @ExcelI18n(i18nKey = "crm.customer.field.qq")
    private String qq;

    @ExcelProperty("微信")
    @ExcelI18n(i18nKey = "crm.customer.field.wechat")
    private String wechat;

    @ExcelProperty("邮箱")
    @ExcelI18n(i18nKey = "crm.customer.field.email")
    private String email;

    @ExcelProperty(value = "地区", converter = AreaConvert.class)
    @ExcelColumnSelect(functionName = AreaExcelColumnSelectFunction.NAME, i18n = true)
    @ExcelI18n(i18nKey = "crm.customer.field.areaCode")
    private String areaCode;

    @ExcelProperty("详细地址")
    @ExcelI18n(i18nKey = "crm.customer.field.detailAddress")
    private String detailAddress;

    @ExcelProperty(value = "所属行业", converter = DictConvert.class)
    @DictFormat(CRM_CUSTOMER_INDUSTRY)
    @ExcelColumnSelect(dictType = CRM_CUSTOMER_INDUSTRY, i18n = true)
    @ExcelI18n(i18nKey = "crm.customer.field.industryId")
    private Integer industryId;

    @ExcelProperty(value = "客户等级", converter = DictConvert.class)
    @DictFormat(CRM_CUSTOMER_LEVEL)
    @ExcelColumnSelect(dictType = CRM_CUSTOMER_LEVEL, i18n = true)
    @ExcelI18n(i18nKey = "crm.customer.field.level")
    private Integer level;

    @ExcelProperty(value = "客户来源", converter = DictConvert.class)
    @DictFormat(CRM_CUSTOMER_SOURCE)
    @ExcelColumnSelect(dictType = CRM_CUSTOMER_SOURCE, i18n = true)
    @ExcelI18n(i18nKey = "crm.customer.field.source")
    private Integer source;

    @ExcelProperty("备注")
    @ExcelI18n(i18nKey = "crm.customer.field.remark")
    private String remark;

}
