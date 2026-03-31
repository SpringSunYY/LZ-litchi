package com.lz.module.system.controller.admin.tenant.vo.packageSubscribe;

import lombok.*;
import io.swagger.v3.oas.annotations.media.Schema;
import com.lz.framework.common.pojo.PageParam;
import org.springframework.format.annotation.DateTimeFormat;
import java.time.LocalDateTime;

import static com.lz.framework.common.util.date.DateUtils.FORMAT_YEAR_MONTH_DAY_HOUR_MINUTE_SECOND;

@Schema(description = "管理后台 - 租户套餐订阅分页 Request VO")
@Data
public class TenantPackageSubscribePageReqVO extends PageParam {

    @Schema(description = "套餐名", example = "王五")
    private String packageName;

    @Schema(description = "套餐编码")
    private String packageCode;

    @Schema(description = "套餐类型", example = "1")
    private Boolean type;

    @Schema(description = "租户名", example = "赵六")
    private String tenantName;

    @Schema(description = "租户编码")
    private String tenantCode;

    @Schema(description = "订阅状态", example = "1")
    private Integer status;

    @Schema(description = "支付状态", example = "1")
    private Integer payStatus;

    @Schema(description = "开始时间")
    @DateTimeFormat(pattern = FORMAT_YEAR_MONTH_DAY_HOUR_MINUTE_SECOND)
    private LocalDateTime[] startTime;

    @Schema(description = "结束时间")
    @DateTimeFormat(pattern = FORMAT_YEAR_MONTH_DAY_HOUR_MINUTE_SECOND)
    private LocalDateTime[] endTime;

    @Schema(description = "创建时间")
    @DateTimeFormat(pattern = FORMAT_YEAR_MONTH_DAY_HOUR_MINUTE_SECOND)
    private LocalDateTime[] createTime;

}