package com.lz.module.erp.controller.admin.stock.vo.warehouse;

import com.lz.framework.common.enums.CommonStatusEnum;
import com.lz.framework.common.validation.InEnum;
import com.lz.framework.common.validation.i18n.I18nNotBlank;
import com.lz.framework.common.validation.i18n.I18nNotNull;
import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import lombok.Data;

import java.math.BigDecimal;

@Schema(description = "管理后台 - ERP 仓库新增/修改 Request VO")
@Data
public class ErpWarehouseSaveReqVO {

    @Schema(description = "仓库编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "11614")
    private Long id;

    @Schema(description = "仓库名称", requiredMode = Schema.RequiredMode.REQUIRED, example = "李四")
    @I18nNotBlank(i18nKey = "erp.warehouse.back.name.notBlank", message = "仓库名称不能为空")
    private String name;

    @Schema(description = "仓库地址", example = "上海陆家嘴")
    private String address;

    @Schema(description = "排序", requiredMode = Schema.RequiredMode.REQUIRED, example = "10")
    @I18nNotNull(i18nKey = "erp.warehouse.back.sort.notNull", message = "排序不能为空")
    private Long sort;

    @Schema(description = "备注", example = "随便")
    private String remark;

    @Schema(description = "负责人", example = "芋头")
    private String principal;

    @Schema(description = "仓储费，单位：元", example = "13973")
    private BigDecimal warehousePrice;

    @Schema(description = "搬运费，单位：元", example = "9903")
    private BigDecimal truckagePrice;

    @Schema(description = "开启状态", requiredMode = Schema.RequiredMode.REQUIRED, example = "2")
    @I18nNotNull(i18nKey = "erp.warehouse.back.status.notNull", message = "开启状态不能为空")
    @InEnum(CommonStatusEnum.class)
    private Integer status;

}
