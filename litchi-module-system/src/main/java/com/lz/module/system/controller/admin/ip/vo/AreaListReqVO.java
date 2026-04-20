package com.lz.module.system.controller.admin.ip.vo;

import lombok.*;
import java.util.*;
import io.swagger.v3.oas.annotations.media.Schema;
import com.lz.framework.common.pojo.PageParam;
import java.math.BigDecimal;
import java.time.LocalDateTime;
import org.springframework.format.annotation.DateTimeFormat;

import static com.lz.framework.common.util.date.DateUtils.FORMAT_YEAR_MONTH_DAY_HOUR_MINUTE_SECOND;

@Schema(description = "管理后台 - 地区信息列表 Request VO")
@Data
public class AreaListReqVO {

    @Schema(description = "地区名称", example = "张三")
    private String name;

    @Schema(description = "邮政编码")
    private String postalCode;

    @Schema(description = "父级ID", example = "9750")
    private Long parentId;

    @Schema(description = "层级")
    private Integer level;

    @Schema(description = "创建时间")
    @DateTimeFormat(pattern = FORMAT_YEAR_MONTH_DAY_HOUR_MINUTE_SECOND)
    private LocalDateTime[] createTime;

}