package com.lz.module.crm.controller.admin.customer.vo.customer;

import com.lz.framework.excel.core.annotations.DictFormat;
import com.lz.framework.excel.core.annotations.ExcelColumnSelect;
import com.lz.framework.excel.core.annotations.ExcelI18n;
import com.lz.framework.excel.core.convert.DictConvert;
import com.lz.module.infra.enums.DictTypeConstants;
import com.alibaba.excel.annotation.ExcelIgnoreUnannotated;
import com.alibaba.excel.annotation.ExcelProperty;
import com.lz.module.crm.framework.excel.core.AreaExcelColumnSelectFunction;
import com.lz.framework.excel.core.convert.AreaConvert;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.time.LocalDateTime;

@Schema(description = "管理后台 - CRM 客户 Response VO")
@Data
@ExcelIgnoreUnannotated
public class CrmCustomerRespVO {

    @Schema(description = "编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "13563")
    @ExcelProperty("编号")
    @ExcelI18n(i18nKey = "crm.customer.field.id")
    private Long id;

    @Schema(description = "客户名称", requiredMode = Schema.RequiredMode.REQUIRED, example = "13563")
    @ExcelProperty("客户名称")
    @ExcelI18n(i18nKey = "crm.customer.field.name")
    private String name;

    @Schema(description = "跟进状态", requiredMode = Schema.RequiredMode.REQUIRED, example = "13563")
    @ExcelProperty(value = "跟进状态", converter = DictConvert.class)
    @DictFormat(DictTypeConstants.BOOLEAN_STRING)
    @ExcelI18n(i18nKey = "crm.customer.field.followUpStatus")
    private Boolean followUpStatus;

    @Schema(description = "最后跟进时间")
    @ExcelProperty("最后跟进时间")
    @ExcelI18n(i18nKey = "crm.customer.field.contactLastTime")
    private LocalDateTime contactLastTime;

    @Schema(description = "最后跟进内容", example = "吃饭、睡觉、打逗逗")
    @ExcelProperty("最后跟进内容")
    @ExcelI18n(i18nKey = "crm.customer.field.contactLastContent")
    private String contactLastContent;

    @Schema(description = "下次联系时间")
    @ExcelProperty("下次联系时间")
    @ExcelI18n(i18nKey = "crm.customer.field.contactNextTime")
    private LocalDateTime contactNextTime;

    @Schema(description = "负责人的用户编号", example = "25682")
    @ExcelProperty("负责人的用户编号")
    @ExcelI18n(i18nKey = "crm.customer.field.ownerUserId")
    private Long ownerUserId;
    @Schema(description = "负责人名字", example = "25682")
    @ExcelProperty("负责人名字")
    @ExcelI18n(i18nKey = "crm.customer.field.ownerUserName")
    private String ownerUserName;
    @Schema(description = "负责人部门")
    @ExcelProperty("负责人部门")
    @ExcelI18n(i18nKey = "crm.customer.field.ownerUserDeptName")
    private String ownerUserDeptName;

    @Schema(description = "锁定状态", requiredMode = Schema.RequiredMode.REQUIRED, example = "13563")
    @ExcelProperty(value = "锁定状态", converter = DictConvert.class)
    @DictFormat(DictTypeConstants.BOOLEAN_STRING)
    @ExcelI18n(i18nKey = "crm.customer.field.lockStatus")
    private Boolean lockStatus;

    @Schema(description = "成交状态", requiredMode = Schema.RequiredMode.REQUIRED, example = "13563")
    @ExcelProperty(value = "成交状态", converter = DictConvert.class)
    @DictFormat(DictTypeConstants.BOOLEAN_STRING)
    @ExcelI18n(i18nKey = "crm.customer.field.dealStatus")
    private Boolean dealStatus;

    @Schema(description = "手机", example = "25682")
    @ExcelProperty("手机")
    @ExcelI18n(i18nKey = "crm.customer.field.mobile")
    private String mobile;

    @Schema(description = "电话", example = "25682")
    @ExcelProperty("电话")
    @ExcelI18n(i18nKey = "crm.customer.field.telephone")
    private String telephone;

    @Schema(description = "QQ", example = "25682")
    @ExcelProperty("QQ")
    @ExcelI18n(i18nKey = "crm.customer.field.qq")
    private String qq;

    @Schema(description = "wechat", example = "25682")
    @ExcelProperty("wechat")
    @ExcelI18n(i18nKey = "crm.customer.field.wechat")
    private String wechat;

    @Schema(description = "email", example = "25682")
    @ExcelProperty("email")
    @ExcelI18n(i18nKey = "crm.customer.field.email")
    private String email;

    @Schema(description = "地区编号", example = "1024")
    @ExcelProperty(value = "地区", converter = AreaConvert.class)
    @ExcelColumnSelect(functionName = AreaExcelColumnSelectFunction.NAME, i18n = true)
    @ExcelI18n(i18nKey = "crm.customer.field.areaCode")
    private String areaCode;
    @Schema(description = "地区名称", example = "北京市")
    @ExcelProperty("地区名称")
    @ExcelI18n(i18nKey = "crm.customer.field.areaName")
    private String areaName;
    @Schema(description = "详细地址", example = "北京市成华大道")
    @ExcelProperty("详细地址")
    @ExcelI18n(i18nKey = "crm.customer.field.detailAddress")
    private String detailAddress;

    @Schema(description = "所属行业", requiredMode = Schema.RequiredMode.REQUIRED, example = "13563")
    @ExcelProperty(value = "所属行业", converter = DictConvert.class)
    @DictFormat(com.lz.module.crm.enums.DictTypeConstants.CRM_CUSTOMER_INDUSTRY)
    @ExcelColumnSelect(dictType = com.lz.module.crm.enums.DictTypeConstants.CRM_CUSTOMER_INDUSTRY, i18n = true)
    @ExcelI18n(i18nKey = "crm.customer.field.industryId")
    private Integer industryId;

    @Schema(description = "客户等级", requiredMode = Schema.RequiredMode.REQUIRED, example = "13563")
    @ExcelProperty(value = "客户等级", converter = DictConvert.class)
    @DictFormat(com.lz.module.crm.enums.DictTypeConstants.CRM_CUSTOMER_LEVEL)
    @ExcelColumnSelect(dictType = com.lz.module.crm.enums.DictTypeConstants.CRM_CUSTOMER_LEVEL, i18n = true)
    @ExcelI18n(i18nKey = "crm.customer.field.level")
    private Integer level;

    @Schema(description = "客户来源", requiredMode = Schema.RequiredMode.REQUIRED, example = "13563")
    @ExcelProperty(value = "客户来源", converter = DictConvert.class)
    @DictFormat(com.lz.module.crm.enums.DictTypeConstants.CRM_CUSTOMER_SOURCE)
    @ExcelColumnSelect(dictType = com.lz.module.crm.enums.DictTypeConstants.CRM_CUSTOMER_SOURCE, i18n = true)
    @ExcelI18n(i18nKey = "crm.customer.field.source")
    private Integer source;

    @Schema(description = "备注", example = "25682")
    @ExcelProperty("备注")
    @ExcelI18n(i18nKey = "crm.customer.field.remark")
    private String remark;

    @Schema(description = "创建时间", requiredMode = Schema.RequiredMode.REQUIRED)
    @ExcelProperty("创建时间")
    @ExcelI18n(i18nKey = "crm.customer.field.createTime")
    private LocalDateTime createTime;

    @Schema(description = "更新时间", requiredMode = Schema.RequiredMode.REQUIRED)
    @ExcelProperty("更新时间")
    @ExcelI18n(i18nKey = "crm.customer.field.updateTime")
    private LocalDateTime updateTime;

    @Schema(description = "创建人", example = "1024")
    @ExcelProperty("创建人")
    @ExcelI18n(i18nKey = "crm.customer.field.creator")
    private String creator;
    @Schema(description = "创建人名字", example = "荔枝源码")
    @ExcelProperty("创建人名字")
    @ExcelI18n(i18nKey = "crm.customer.field.creatorName")
    private String creatorName;

    @Schema(description = "距离加入公海时间", example = "1")
    private Long poolDay;

}
