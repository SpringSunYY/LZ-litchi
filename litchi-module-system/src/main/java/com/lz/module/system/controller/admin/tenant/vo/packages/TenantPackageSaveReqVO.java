package com.lz.module.system.controller.admin.tenant.vo.packages;

import com.lz.framework.common.validation.i18n.I18nNotEmpty;
import com.lz.framework.common.validation.i18n.I18nNotNull;
import com.lz.framework.common.validation.i18n.I18nSize;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.math.BigDecimal;
import java.util.Set;

@Schema(description = "管理后台 - 租户套餐创建/修改 Request VO")
@Data
public class TenantPackageSaveReqVO {

    @Schema(description = "套餐编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "5465")
    private Long id;

    @Schema(description = "套餐名", requiredMode = Schema.RequiredMode.REQUIRED, example = "李四")
    @I18nNotEmpty(i18nKey = "system.tenantPackage.back.name.notEmpty", message = "套餐名不能为空")
    @I18nSize(i18nKey = "system.tenantPackage.back.name.size", min = 2, max = 32, message = "套餐名长度为2~32个字符")
    private String name;

    @Schema(description = "套餐编码", requiredMode = Schema.RequiredMode.REQUIRED)
    @I18nNotEmpty(i18nKey = "system.tenantPackage.back.code.notEmpty", message = "套餐编码不能为空")
    @I18nSize(i18nKey = "system.tenantPackage.back.code.size", min = 2, max = 32, message = "套餐编码长度为2~32个字符")
    private String code;

    @Schema(description = "套餐类型", requiredMode = Schema.RequiredMode.REQUIRED, example = "2")
    @I18nNotNull(i18nKey = "system.tenantPackage.back.type.notNull", message = "套餐类型不能为空")
    private Integer type;

    @Schema(description = "LOGO", requiredMode = Schema.RequiredMode.REQUIRED)
    @I18nNotEmpty(i18nKey = "system.tenantPackage.back.logo.notEmpty", message = "LOGO不能为空")
    private String logo;

    @Schema(description = "套餐价格", requiredMode = Schema.RequiredMode.REQUIRED, example = "12109")
    @I18nNotNull(i18nKey = "system.tenantPackage.back.price.notNull", message = "套餐价格不能为空")
    private BigDecimal price;

    @Schema(description = "套餐描述", example = "你说的对")
    private String description;

    @Schema(description = "套餐状态", requiredMode = Schema.RequiredMode.REQUIRED, example = "2")
    @I18nNotNull(i18nKey = "system.tenantPackage.back.status.notNull", message = "套餐状态不能为空")
    private Integer status;

    @Schema(description = "是否发布", requiredMode = Schema.RequiredMode.REQUIRED)
    @I18nNotNull(i18nKey = "system.tenantPackage.back.published.notNull", message = "是否发布不能为空")
    private Integer published;

    @Schema(description = "排序", requiredMode = Schema.RequiredMode.REQUIRED)
    @I18nNotNull(i18nKey = "system.tenantPackage.back.orderNum.notNull", message = "排序不能为空")
    private Integer orderNum;

    @Schema(description = "订阅数", requiredMode = Schema.RequiredMode.REQUIRED)
    @I18nNotNull(i18nKey = "system.tenantPackage.back.subscriptionNum.notNull", message = "订阅数不能为空")
    private Integer subscriptionNum;

    @Schema(description = "订阅总额", requiredMode = Schema.RequiredMode.REQUIRED)
    @I18nNotNull(i18nKey = "system.tenantPackage.back.subscriptionTotalAmount.notNull", message = "订阅总额不能为空")
    private BigDecimal subscriptionTotalAmount;

    @Schema(description = "备注", example = "你猜")
    private String remark;
}
