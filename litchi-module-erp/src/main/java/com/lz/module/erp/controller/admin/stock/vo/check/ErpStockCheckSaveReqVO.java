package com.lz.module.erp.controller.admin.stock.vo.check;

import com.lz.framework.common.validation.i18n.I18nNotEmpty;
import com.lz.framework.common.validation.i18n.I18nNotNull;
import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.validation.Valid;
import lombok.Data;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;

@Schema(description = "管理后台 - ERP 其它出库单新增/修改 Request VO")
@Data
public class ErpStockCheckSaveReqVO {

    @Schema(description = "出库编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "11756")
    private Long id;

    @Schema(description = "出库时间", requiredMode = Schema.RequiredMode.REQUIRED)
    @I18nNotNull(i18nKey = "erp.stockCheck.back.checkTime.notNull", message = "出库时间不能为空")
    private LocalDateTime checkTime;

    @Schema(description = "备注", example = "随便")
    private String remark;

    @Schema(description = "附件 URL", example = "https://www.iocoder.cn/1.doc")
    private String fileUrl;

    @Schema(description = "出库项列表", requiredMode = Schema.RequiredMode.REQUIRED)
    @I18nNotEmpty(i18nKey = "erp.stockCheck.back.items.notEmpty", message = "出库项列表不能为空")
    @Valid
    private List<Item> items;

    @Data
    public static class Item {

        @Schema(description = "出库项编号", example = "11756")
        private Long id;

        @Schema(description = "仓库编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "3113")
        @I18nNotNull(i18nKey = "erp.stockCheckItem.back.warehouseId.notNull", message = "仓库编号不能为空")
        private Long warehouseId;

        @Schema(description = "产品编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "3113")
        @I18nNotNull(i18nKey = "erp.stockCheckItem.back.productId.notNull", message = "产品编号不能为空")
        private Long productId;

        @Schema(description = "产品单价", example = "100.00")
        private BigDecimal productPrice;

        @Schema(description = "账面数量（当前库存）", requiredMode = Schema.RequiredMode.REQUIRED, example = "100.00")
        @I18nNotNull(i18nKey = "erp.stockCheckItem.back.stockCount.notNull", message = "账面数量不能为空")
        private BigDecimal stockCount;

        @Schema(description = "实际数量（实际库存）", requiredMode = Schema.RequiredMode.REQUIRED, example = "100.00")
        @I18nNotNull(i18nKey = "erp.stockCheckItem.back.actualCount.notNull", message = "实际数量不能为空")
        private BigDecimal actualCount;

        @Schema(description = "盈亏数量", requiredMode = Schema.RequiredMode.REQUIRED, example = "100.00")
        @I18nNotNull(i18nKey = "erp.stockCheckItem.back.count.notNull", message = "盈亏数量不能为空")
        private BigDecimal count;

        @Schema(description = "备注", example = "随便")
        private String remark;

    }

}
