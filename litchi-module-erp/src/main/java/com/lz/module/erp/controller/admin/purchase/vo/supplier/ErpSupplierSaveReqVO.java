package com.lz.module.erp.controller.admin.purchase.vo.supplier;

import com.lz.framework.common.enums.CommonStatusEnum;
import com.lz.framework.common.validation.InEnum;
import com.lz.framework.common.validation.Mobile;
import com.lz.framework.common.validation.Telephone;
import com.lz.framework.common.validation.i18n.I18nEmail;
import com.lz.framework.common.validation.i18n.I18nNotBlank;
import com.lz.framework.common.validation.i18n.I18nNotNull;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.math.BigDecimal;

@Schema(description = "管理后台 - ERP 供应商新增/修改 Request VO")
@Data
public class ErpSupplierSaveReqVO {

    @Schema(description = "供应商编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "17791")
    private Long id;

    @Schema(description = "供应商名称", requiredMode = Schema.RequiredMode.REQUIRED, example = "荔枝源码")
    @I18nNotBlank(i18nKey = "erp.supplier.back.name.notBlank", message = "供应商名称不能为空")
    private String name;

    @Schema(description = "联系人", example = "YY")
    private String contact;

    @Schema(description = "手机号码", example = "15601691300")
    @Mobile
    private String mobile;

    @Schema(description = "联系电话", example = "18818288888")
    @Telephone
    private String telephone;

    @Schema(description = "电子邮箱", example = "76853@qq.com")
    @I18nEmail(i18nKey = "erp.supplier.back.email.email", message = "电子邮箱格式不正确")
    private String email;

    @Schema(description = "传真", example = "20 7123 4567")
    private String fax;

    @Schema(description = "备注", example = "你猜")
    private String remark;

    @Schema(description = "开启状态", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @I18nNotNull(i18nKey = "erp.supplier.back.status.notNull", message = "开启状态不能为空")
    @InEnum(value = CommonStatusEnum.class)
    private Integer status;

    @Schema(description = "排序", requiredMode = Schema.RequiredMode.REQUIRED, example = "10")
    @I18nNotNull(i18nKey = "erp.supplier.back.sort.notNull", message = "排序不能为空")
    private Integer sort;

    @Schema(description = "纳税人识别号", example = "91130803MA098BY05W")
    private String taxNo;

    @Schema(description = "税率", example = "10")
    private BigDecimal taxPercent;

    @Schema(description = "开户行", example = "张三")
    private String bankName;

    @Schema(description = "开户账号", example = "622908212277228617")
    private String bankAccount;

    @Schema(description = "开户地址", example = "兴业银行浦东支行")
    private String bankAddress;

}
