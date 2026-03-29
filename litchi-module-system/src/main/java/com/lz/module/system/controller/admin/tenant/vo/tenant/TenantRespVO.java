package com.lz.module.system.controller.admin.tenant.vo.tenant;

import com.alibaba.excel.annotation.ExcelIgnoreUnannotated;
import com.alibaba.excel.annotation.ExcelProperty;
import com.lz.framework.excel.core.annotations.DictFormat;
import com.lz.framework.excel.core.convert.DictConvert;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.math.BigDecimal;
import java.time.LocalDateTime;

@Schema(description = "管理后台 - 租户 Response VO")
@Data
@ExcelIgnoreUnannotated
public class TenantRespVO {

    @Schema(description = "租户编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "22788")
    @ExcelProperty("租户编号")
    private Long id;

    @Schema(description = "租户名", requiredMode = Schema.RequiredMode.REQUIRED, example = "张三")
    @ExcelProperty("租户名")
    private String name;

    @Schema(description = "编码", requiredMode = Schema.RequiredMode.REQUIRED)
    @ExcelProperty("编码")
    private String code;

    @Schema(description = "联系人的用户编号", example = "24903")
    @ExcelProperty("联系人的用户编号")
    private Long contactUserId;

    @Schema(description = "联系人", requiredMode = Schema.RequiredMode.REQUIRED, example = "王五")
    @ExcelProperty("联系人")
    private String contactName;

    @Schema(description = "联系手机")
    @ExcelProperty("联系手机")
    private String contactMobile;

    @Schema(description = "行业", requiredMode = Schema.RequiredMode.REQUIRED)
    @ExcelProperty(value = "行业", converter = DictConvert.class)
    @DictFormat("system_tenant_industry")
    private Integer industry;

    @Schema(description = "类型", requiredMode = Schema.RequiredMode.REQUIRED, example = "2")
    @ExcelProperty(value = "类型", converter = DictConvert.class)
    @DictFormat("system_tenant_type")
    private Integer type;

    @Schema(description = "地区")
    @ExcelProperty("地区")
    private String addressCode;

    @Schema(description = "地址")
    @ExcelProperty("地址")
    private String addressDetail;

    @Schema(description = "相关资质")
    @ExcelProperty("相关资质")
    private String qualifications;

    @Schema(description = "租户状态", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @ExcelProperty(value = "租户状态", converter = DictConvert.class)
    @DictFormat("system_tenant_status")
    private Integer status;

    @Schema(description = "绑定域名")
    @ExcelProperty("绑定域名")
    private String website;

    @Schema(description = "充值金额", requiredMode = Schema.RequiredMode.REQUIRED)
    @ExcelProperty("充值金额")
    private BigDecimal rechargeAmount;

    @Schema(description = "支付金额", requiredMode = Schema.RequiredMode.REQUIRED)
    @ExcelProperty("支付金额")
    private BigDecimal paymentAmount;

    @Schema(description = "余额", requiredMode = Schema.RequiredMode.REQUIRED)
    @ExcelProperty("余额")
    private BigDecimal balanceAmount;

    @Schema(description = "账号数量", requiredMode = Schema.RequiredMode.REQUIRED, example = "9357")
    @ExcelProperty("账号数量")
    private Integer accountCount;

    @Schema(description = "当前数量", requiredMode = Schema.RequiredMode.REQUIRED, example = "23512")
    @ExcelProperty("当前数量")
    private Integer currentAccountCount;

    @Schema(description = "创建时间", requiredMode = Schema.RequiredMode.REQUIRED)
    @ExcelProperty("创建时间")
    private LocalDateTime createTime;

}
