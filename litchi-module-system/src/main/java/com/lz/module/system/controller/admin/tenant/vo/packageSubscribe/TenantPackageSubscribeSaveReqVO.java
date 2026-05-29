package com.lz.module.system.controller.admin.tenant.vo.packageSubscribe;

import com.lz.framework.common.validation.i18n.I18nNotEmpty;
import com.lz.framework.common.validation.i18n.I18nNotNull;
import com.lz.framework.common.validation.i18n.I18nSize;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.math.BigDecimal;
import java.time.LocalDateTime;

@Schema(description = "管理后台 - 租户套餐订阅新增/修改 Request VO")
@Data
public class TenantPackageSubscribeSaveReqVO {

    @Schema(description = "订阅编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "15016")
    private Long id;

    @Schema(description = "套餐名", requiredMode = Schema.RequiredMode.REQUIRED, example = "王五")
    @I18nNotEmpty(i18nKey = "system.tenantPackageSubscribe.back.packageName.notEmpty", message = "套餐名不能为空")
    @I18nSize(i18nKey = "system.tenantPackageSubscribe.back.packageName.size", min = 2, max = 32, message = "套餐名长度为2~32个字符")
    private String packageName;

    @Schema(description = "套餐编码", requiredMode = Schema.RequiredMode.REQUIRED)
    @I18nNotEmpty(i18nKey = "system.tenantPackageSubscribe.back.packageCode.notEmpty", message = "套餐编码不能为空")
    @I18nSize(i18nKey = "system.tenantPackageSubscribe.back.packageCode.size", min = 2, max = 32, message = "套餐编码长度为2~32个字符")
    private String packageCode;


    @Schema(description = "租户名", requiredMode = Schema.RequiredMode.REQUIRED, example = "赵六")
    @I18nNotEmpty(i18nKey = "system.tenantPackageSubscribe.back.tenantName.notEmpty", message = "租户名不能为空")
    private String tenantName;

    @Schema(description = "租户编码", requiredMode = Schema.RequiredMode.REQUIRED)
    @I18nNotEmpty(i18nKey = "system.tenantPackageSubscribe.back.tenantCode.notEmpty", message = "租户编码不能为空")
    private String tenantCode;

    @Schema(description = "套餐价格", requiredMode = Schema.RequiredMode.REQUIRED, example = "11901")
    @I18nNotNull(i18nKey = "system.tenantPackageSubscribe.back.price.notNull", message = "套餐价格不能为空")
    private BigDecimal price;

    @Schema(description = "优惠价格", requiredMode = Schema.RequiredMode.REQUIRED, example = "28891")
    @I18nNotNull(i18nKey = "system.tenantPackageSubscribe.back.discountPrice.notNull", message = "优惠价格不能为空")
    private BigDecimal discountPrice;

    @Schema(description = "天数", requiredMode = Schema.RequiredMode.REQUIRED)
    @I18nNotNull(i18nKey = "system.tenantPackageSubscribe.back.days.notNull", message = "天数不能为空")
    private Integer days;

    @Schema(description = "总价格", requiredMode = Schema.RequiredMode.REQUIRED, example = "18219")
    @I18nNotNull(i18nKey = "system.tenantPackageSubscribe.back.totalPrice.notNull", message = "总价格不能为空")
    private BigDecimal totalPrice;

    @Schema(description = "订阅状态", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @I18nNotNull(i18nKey = "system.tenantPackageSubscribe.back.status.notNull", message = "订阅状态不能为空")
    private Integer status;

    @Schema(description = "支付状态", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @I18nNotNull(i18nKey = "system.tenantPackageSubscribe.back.payStatus.notNull", message = "支付状态不能为空")
    private Integer payStatus;

    @Schema(description = "开始时间", requiredMode = Schema.RequiredMode.REQUIRED)
    @I18nNotNull(i18nKey = "system.tenantPackageSubscribe.back.startTime.notNull", message = "开始时间不能为空")
    private LocalDateTime startTime;

    @Schema(description = "结束时间", requiredMode = Schema.RequiredMode.REQUIRED)
    @I18nNotNull(i18nKey = "system.tenantPackageSubscribe.back.endTime.notNull", message = "结束时间不能为空")
    private LocalDateTime endTime;

    @Schema(description = "备注", example = "你说的对")
    private String remark;

}