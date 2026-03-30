package com.lz.module.system.controller.admin.tenant.vo.packages;

import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import lombok.Data;

import java.math.BigDecimal;
import java.util.Set;

@Schema(description = "管理后台 - 租户套餐创建/修改 Request VO")
@Data
public class TenantPackageSaveReqVO {

    @Schema(description = "套餐编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "5465")
    private Long id;

    @Schema(description = "套餐名", requiredMode = Schema.RequiredMode.REQUIRED, example = "李四")
    @NotEmpty(message = "套餐名不能为空")
    private String name;

    @Schema(description = "套餐编码", requiredMode = Schema.RequiredMode.REQUIRED)
    @NotEmpty(message = "套餐编码不能为空")
    private String code;

    @Schema(description = "套餐类型", requiredMode = Schema.RequiredMode.REQUIRED, example = "2")
    @NotNull(message = "套餐类型不能为空")
    private String type;

    @Schema(description = "LOGO", requiredMode = Schema.RequiredMode.REQUIRED)
    @NotEmpty(message = "LOGO不能为空")
    private String logo;

    @Schema(description = "套餐价格", requiredMode = Schema.RequiredMode.REQUIRED, example = "12109")
    @NotNull(message = "套餐价格不能为空")
    private BigDecimal price;

    @Schema(description = "套餐描述", example = "你说的对")
    private String description;

    @Schema(description = "套餐状态", requiredMode = Schema.RequiredMode.REQUIRED, example = "2")
    @NotNull(message = "套餐状态不能为空")
    private Integer status;

    @Schema(description = "排序", requiredMode = Schema.RequiredMode.REQUIRED)
    @NotNull(message = "排序不能为空")
    private Integer orderNum;

    @Schema(description = "订阅数", requiredMode = Schema.RequiredMode.REQUIRED)
    @NotNull(message = "订阅数不能为空")
    private Integer subscriptionNum;

    @Schema(description = "订阅总额", requiredMode = Schema.RequiredMode.REQUIRED)
    @NotNull(message = "订阅总额不能为空")
    private BigDecimal subscriptionTotalAmount;

    @Schema(description = "备注", example = "你猜")
    private String remark;

    @Schema(description = "关联的菜单编号", requiredMode = Schema.RequiredMode.REQUIRED)
    private Set<Long> menuIds;

}
