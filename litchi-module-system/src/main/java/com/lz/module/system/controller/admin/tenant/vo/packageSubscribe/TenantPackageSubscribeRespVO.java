package com.lz.module.system.controller.admin.tenant.vo.packageSubscribe;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.*;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import com.alibaba.excel.annotation.*;
import com.lz.framework.excel.core.annotations.DictFormat;
import com.lz.framework.excel.core.convert.DictConvert;

@Schema(description = "管理后台 - 租户套餐订阅 Response VO")
@Data
@ExcelIgnoreUnannotated
public class TenantPackageSubscribeRespVO {

    @Schema(description = "套餐编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "15016")
    @ExcelProperty("套餐编号")
    private Long id;

    @Schema(description = "套餐名", requiredMode = Schema.RequiredMode.REQUIRED, example = "王五")
    @ExcelProperty("套餐名")
    private String packageName;

    @Schema(description = "套餐编码", requiredMode = Schema.RequiredMode.REQUIRED)
    @ExcelProperty("套餐编码")
    private String packageCode;

    @Schema(description = "套餐类型", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @ExcelProperty(value = "套餐类型", converter = DictConvert.class)
    @DictFormat("system_tenant_package_type") // TODO 代码优化：建议设置到对应的 DictTypeConstants 枚举类中
    private Boolean type;

    @Schema(description = "LOGO", requiredMode = Schema.RequiredMode.REQUIRED)
    @ExcelProperty("LOGO")
    private String logo;

    @Schema(description = "租户名", requiredMode = Schema.RequiredMode.REQUIRED, example = "赵六")
    @ExcelProperty("租户名")
    private String tenantName;

    @Schema(description = "租户编码", requiredMode = Schema.RequiredMode.REQUIRED)
    @ExcelProperty("租户编码")
    private String tenantCode;

    @Schema(description = "套餐价格", requiredMode = Schema.RequiredMode.REQUIRED, example = "11901")
    @ExcelProperty("套餐价格")
    private BigDecimal price;

    @Schema(description = "优惠价格", requiredMode = Schema.RequiredMode.REQUIRED, example = "28891")
    @ExcelProperty("优惠价格")
    private BigDecimal discountPrice;

    @Schema(description = "天数", requiredMode = Schema.RequiredMode.REQUIRED)
    @ExcelProperty("天数")
    private Integer days;

    @Schema(description = "总价格", requiredMode = Schema.RequiredMode.REQUIRED, example = "18219")
    @ExcelProperty("总价格")
    private BigDecimal totalPrice;

    @Schema(description = "订阅状态", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @ExcelProperty(value = "订阅状态", converter = DictConvert.class)
    @DictFormat("system_tenant_package_subscribe_status") // TODO 代码优化：建议设置到对应的 DictTypeConstants 枚举类中
    private Integer status;

    @Schema(description = "支付状态", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @ExcelProperty(value = "支付状态", converter = DictConvert.class)
    @DictFormat("system_tenant_package_subscribe_pay_status") // TODO 代码优化：建议设置到对应的 DictTypeConstants 枚举类中
    private Integer payStatus;

    @Schema(description = "开始时间", requiredMode = Schema.RequiredMode.REQUIRED)
    @ExcelProperty("开始时间")
    private LocalDateTime startTime;

    @Schema(description = "结束时间", requiredMode = Schema.RequiredMode.REQUIRED)
    @ExcelProperty("结束时间")
    private LocalDateTime endTime;

    @Schema(description = "备注", example = "你说的对")
    @ExcelProperty("备注")
    private String remark;

    @Schema(description = "创建时间", requiredMode = Schema.RequiredMode.REQUIRED)
    @ExcelProperty("创建时间")
    private LocalDateTime createTime;

}