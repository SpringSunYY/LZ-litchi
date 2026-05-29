package com.lz.module.erp.controller.admin.finance.vo.payment;

import com.lz.framework.common.validation.i18n.I18nNotEmpty;
import com.lz.framework.common.validation.i18n.I18nNotNull;
import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.validation.Valid;
import lombok.Data;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;

@Schema(description = "管理后台 - ERP 付款单新增/修改 Request VO")
@Data
public class ErpFinancePaymentSaveReqVO {

    @Schema(description = "编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "23752")
    private Long id;

    @Schema(description = "付款时间", requiredMode = Schema.RequiredMode.REQUIRED)
    @I18nNotNull(i18nKey = "erp.financePayment.back.paymentTime.notNull", message = "付款时间不能为空")
    private LocalDateTime paymentTime;

    @Schema(description = "财务人员编号", example = "19690")
    private Long financeUserId;

    @Schema(description = "供应商编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "29399")
    @I18nNotNull(i18nKey = "erp.financePayment.back.supplierId.notNull", message = "供应商编号不能为空")
    private Long supplierId;

    @Schema(description = "付款账户编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "28989")
    @I18nNotNull(i18nKey = "erp.financePayment.back.accountId.notNull", message = "付款账户编号不能为空")
    private Long accountId;

    @Schema(description = "优惠金额，单位：元", requiredMode = Schema.RequiredMode.REQUIRED, example = "11600")
    @I18nNotNull(i18nKey = "erp.financePayment.back.discountPrice.notNull", message = "优惠金额不能为空")
    private BigDecimal discountPrice;

    @Schema(description = "备注", example = "你猜")
    private String remark;

    @Schema(description = "付款项列表", requiredMode = Schema.RequiredMode.REQUIRED)
    @I18nNotEmpty(i18nKey = "erp.financePayment.back.items.notEmpty", message = "付款项列表不能为空")
    @Valid
    private List<Item> items;

    @Data
    public static class Item {

        @Schema(description = "付款项编号", example = "11756")
        private Long id;

        @Schema(description = "业务类型", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
        @I18nNotNull(i18nKey = "erp.financePaymentItem.back.bizType.notNull", message = "业务类型不能为空")
        private Integer bizType;

        @Schema(description = "业务编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "11756")
        @I18nNotNull(i18nKey = "erp.financePaymentItem.back.bizId.notNull", message = "业务编号不能为空")
        private Long bizId;

        @Schema(description = "已付金额，单位：分", requiredMode = Schema.RequiredMode.REQUIRED, example = "10000")
        @I18nNotNull(i18nKey = "erp.financePaymentItem.back.paidPrice.notNull", message = "已付金额不能为空")
        private BigDecimal paidPrice;

        @Schema(description = "本次付款，单位：分", requiredMode = Schema.RequiredMode.REQUIRED, example = "10000")
        @I18nNotNull(i18nKey = "erp.financePaymentItem.back.paymentPrice.notNull", message = "本次付款不能为空")
        private BigDecimal paymentPrice;

        @Schema(description = "备注", example = "随便")
        private String remark;

    }

}