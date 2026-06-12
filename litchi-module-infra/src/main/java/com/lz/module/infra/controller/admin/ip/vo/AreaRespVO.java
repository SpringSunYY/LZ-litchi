package com.lz.module.infra.controller.admin.ip.vo;

import com.alibaba.excel.annotation.ExcelIgnoreUnannotated;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.math.BigDecimal;
import java.time.LocalDateTime;

@Schema(description = "管理后台 - 地区信息 Response VO")
@Data
@ExcelIgnoreUnannotated
public class AreaRespVO {

    @Schema(description = "ID", requiredMode = Schema.RequiredMode.REQUIRED, example = "11928")
    private Long id;

    @Schema(description = "行政编码", requiredMode = Schema.RequiredMode.REQUIRED, example = "1020")
    private String code;

    @Schema(description = "地区名称", requiredMode = Schema.RequiredMode.REQUIRED, example = "张三")
    private String name;

    @Schema(description = "邮政编码")
    private String postalCode;

    @Schema(description = "父级编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "9750")
    private String parentCode;

    @Schema(description = "层级", requiredMode = Schema.RequiredMode.REQUIRED)
    private Integer level;

    @Schema(description = "经度")
    private BigDecimal longitude;

    @Schema(description = "纬度")
    private BigDecimal latitude;

    @Schema(description = "数据来源")
    private String source;

    @Schema(description = "GeoJson")
    private String geoJson;

    @Schema(description = "排序号")
    private String sortNum;

    @Schema(description = "创建时间", requiredMode = Schema.RequiredMode.REQUIRED)
    private LocalDateTime createTime;

}
