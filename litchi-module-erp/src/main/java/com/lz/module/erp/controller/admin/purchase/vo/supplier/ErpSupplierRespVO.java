package com.lz.module.erp.controller.admin.purchase.vo.supplier;

import com.lz.framework.excel.core.annotations.ExcelColumnSelect;
import com.lz.framework.excel.core.annotations.ExcelI18n;
import com.lz.module.system.enums.DictTypeConstants;
import com.alibaba.excel.annotation.ExcelIgnoreUnannotated;
import com.alibaba.excel.annotation.ExcelProperty;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.math.BigDecimal;
import java.time.LocalDateTime;

@Schema(description = "管理后台 - ERP 供应商 Response VO")
@Data
@ExcelIgnoreUnannotated
public class ErpSupplierRespVO {

    @Schema(description = "供应商编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "17791")
    @ExcelProperty("供应商编号")
    @ExcelI18n(i18nKey = "erp.supplier.field.id")
    private Long id;

    @Schema(description = "供应商名称", requiredMode = Schema.RequiredMode.REQUIRED, example = "荔枝源码")
    @ExcelProperty("供应商名称")
    @ExcelI18n(i18nKey = "erp.supplier.field.name")
    private String name;

    @Schema(description = "联系人", example = "YY")
    @ExcelProperty("联系人")
    @ExcelI18n(i18nKey = "erp.supplier.field.contact")
    private String contact;

    @Schema(description = "手机号码", example = "15601691300")
    @ExcelProperty("手机号码")
    @ExcelI18n(i18nKey = "erp.supplier.field.mobile")
    private String mobile;

    @Schema(description = "联系电话", example = "18818288888")
    @ExcelProperty("联系电话")
    @ExcelI18n(i18nKey = "erp.supplier.field.telephone")
    private String telephone;

    @Schema(description = "电子邮箱", example = "76853@qq.com")
    @ExcelProperty("电子邮箱")
    @ExcelI18n(i18nKey = "erp.supplier.field.email")
    private String email;

    @Schema(description = "传真", example = "20 7123 4567")
    @ExcelProperty("传真")
    @ExcelI18n(i18nKey = "erp.supplier.field.fax")
    private String fax;

    @Schema(description = "备注", example = "你猜")
    @ExcelProperty("备注")
    @ExcelI18n(i18nKey = "erp.supplier.field.remark")
    private String remark;

    @Schema(description = "开启状态", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @ExcelProperty(value = "开启状态")
    @ExcelColumnSelect(dictType = DictTypeConstants.COMMON_STATUS, i18n = true)
    @ExcelI18n(i18nKey = "erp.supplier.field.status")
    private Integer status;

    @Schema(description = "排序", requiredMode = Schema.RequiredMode.REQUIRED, example = "10")
    @ExcelProperty("排序")
    @ExcelI18n(i18nKey = "erp.supplier.field.sort")
    private Integer sort;

    @Schema(description = "纳税人识别号", example = "91130803MA098BY05W")
    @ExcelProperty("纳税人识别号")
    @ExcelI18n(i18nKey = "erp.supplier.field.taxNo")
    private String taxNo;

    @Schema(description = "税率", example = "10")
    @ExcelProperty("税率")
    @ExcelI18n(i18nKey = "erp.supplier.field.taxPercent")
    private BigDecimal taxPercent;

    @Schema(description = "开户行", example = "张三")
    @ExcelProperty("开户行")
    @ExcelI18n(i18nKey = "erp.supplier.field.bankName")
    private String bankName;

    @Schema(description = "开户账号", example = "622908212277228617")
    @ExcelProperty("开户账号")
    @ExcelI18n(i18nKey = "erp.supplier.field.bankAccount")
    private String bankAccount;

    @Schema(description = "开户地址", example = "兴业银行浦东支行")
    @ExcelProperty("开户地址")
    @ExcelI18n(i18nKey = "erp.supplier.field.bankAddress")
    private String bankAddress;

    @Schema(description = "创建时间", requiredMode = Schema.RequiredMode.REQUIRED)
    @ExcelProperty("创建时间")
    @ExcelI18n(i18nKey = "erp.supplier.field.createTime")
    private LocalDateTime createTime;

}
