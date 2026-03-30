package com.lz.module.system.controller.admin.tenant.vo.packages;

import com.alibaba.excel.annotation.ExcelProperty;
import com.lz.framework.excel.core.annotations.DictFormat;
import com.lz.framework.excel.core.convert.DictConvert;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.Set;

@Schema(description = "管理后台 - 租户套餐 Response VO")
@Data
public class TenantPackageRespVO {

    @Schema(description = "套餐编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "5465")
    private Long id;

    @Schema(description = "套餐名", requiredMode = Schema.RequiredMode.REQUIRED, example = "李四")
    private String name;

    @Schema(description = "套餐编码", requiredMode = Schema.RequiredMode.REQUIRED)
    private String code;

    @Schema(description = "套餐类型", requiredMode = Schema.RequiredMode.REQUIRED, example = "2")
    private String type;

    @Schema(description = "LOGO", requiredMode = Schema.RequiredMode.REQUIRED)
    private String logo;

    @Schema(description = "套餐价格", requiredMode = Schema.RequiredMode.REQUIRED, example = "12109")
    private BigDecimal price;

    @Schema(description = "套餐描述", example = "你说的对")
    private String description;

    @Schema(description = "套餐状态", requiredMode = Schema.RequiredMode.REQUIRED, example = "2")
    private Integer status;

    @Schema(description = "排序", requiredMode = Schema.RequiredMode.REQUIRED)
    private Integer orderNum;

    @Schema(description = "订阅数", requiredMode = Schema.RequiredMode.REQUIRED)
    private Integer subscriptionNum;

    @Schema(description = "订阅总额", requiredMode = Schema.RequiredMode.REQUIRED)
    private BigDecimal subscriptionTotalAmount;

    @Schema(description = "备注", example = "你猜")
    private String remark;

    @Schema(description = "关联的菜单编号", requiredMode = Schema.RequiredMode.REQUIRED)
    private Set<Long> menuIds;

    @Schema(description = "创建时间", requiredMode = Schema.RequiredMode.REQUIRED)
    private LocalDateTime createTime;

}
