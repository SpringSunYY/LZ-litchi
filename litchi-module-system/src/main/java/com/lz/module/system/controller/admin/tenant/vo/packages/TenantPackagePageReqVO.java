package com.lz.module.system.controller.admin.tenant.vo.packages;

import com.lz.framework.common.pojo.PageParam;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;
import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDateTime;

import static com.lz.framework.common.util.date.DateUtils.FORMAT_YEAR_MONTH_DAY_HOUR_MINUTE_SECOND;

@Schema(description = "管理后台 - 租户套餐分页 Request VO")
@Data
@EqualsAndHashCode(callSuper = true)
@ToString(callSuper = true)
public class TenantPackagePageReqVO extends PageParam {

    @Schema(description = "套餐名", example = "李四")
    private String name;

    @Schema(description = "套餐编码")
    private String code;

    @Schema(description = "套餐类型", example = "2")
    private Integer type;

    @Schema(description = "套餐描述", example = "你说的对")
    private String description;

    @Schema(description = "套餐状态", example = "2")
    private Integer status;

    @Schema(description = "是否发布")
    private Integer published;

    @Schema(description = "创建时间")
    @DateTimeFormat(pattern = FORMAT_YEAR_MONTH_DAY_HOUR_MINUTE_SECOND)
    private LocalDateTime[] createTime;
}
