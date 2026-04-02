package com.lz.module.system.controller.admin.tenant.vo.tenant;

import com.lz.framework.common.pojo.PageParam;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;
import org.springframework.format.annotation.DateTimeFormat;

import java.math.BigDecimal;
import java.time.LocalDateTime;

import static com.lz.framework.common.util.date.DateUtils.FORMAT_YEAR_MONTH_DAY_HOUR_MINUTE_SECOND;

@Schema(description = "管理后台 - 租户分页 Request VO")
@Data
@EqualsAndHashCode(callSuper = true)
@ToString(callSuper = true)
public class TenantPageReqVO extends PageParam {

    @Schema(description = "租户名", example = "张三")
    private String name;

    @Schema(description = "编码")
    private String code;

    @Schema(description = "联系人", example = "王五")
    private String contactName;

    @Schema(description = "联系手机")
    private String contactMobile;

    @Schema(description = "行业")
    private Integer industry;

    @Schema(description = "类型", example = "2")
    private Integer type;

    @Schema(description = "租户状态（0正常 1停用）", example = "1")
    private Integer status;

    @Schema(description = "地区",example = "100000")
    private String addressCode;

    @Schema(description = "创建时间")
    @DateTimeFormat(pattern = FORMAT_YEAR_MONTH_DAY_HOUR_MINUTE_SECOND)
    private LocalDateTime[] createTime;

}
