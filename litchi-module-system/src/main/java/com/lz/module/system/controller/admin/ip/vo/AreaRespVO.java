package com.lz.module.system.controller.admin.ip.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.*;
import java.util.*;
import java.math.BigDecimal;
import org.springframework.format.annotation.DateTimeFormat;
import java.time.LocalDateTime;
import com.alibaba.excel.annotation.*;
import com.lz.framework.excel.core.annotations.DictFormat;
import com.lz.framework.excel.core.convert.DictConvert;

@Schema(description = "管理后台 - 地区信息 Response VO")
@Data
@ExcelIgnoreUnannotated
public class AreaRespVO {

    @Schema(description = "ID", requiredMode = Schema.RequiredMode.REQUIRED, example = "11928")
    @ExcelProperty("ID")
    private Long id;

    @Schema(description = "地区名称", requiredMode = Schema.RequiredMode.REQUIRED, example = "张三")
    @ExcelProperty("地区名称")
    private String name;

    @Schema(description = "邮政编码")
    @ExcelProperty("邮政编码")
    private String postalCode;

    @Schema(description = "父级ID", requiredMode = Schema.RequiredMode.REQUIRED, example = "9750")
    @ExcelProperty("父级ID")
    private Long parentId;

    @Schema(description = "层级", requiredMode = Schema.RequiredMode.REQUIRED)
    @ExcelProperty(value = "层级", converter = DictConvert.class)
    @DictFormat("system_area_level") // TODO 代码优化：建议设置到对应的 DictTypeConstants 枚举类中
    private Integer level;

    @Schema(description = "经度")
    @ExcelProperty("经度")
    private BigDecimal longitude;

    @Schema(description = "纬度")
    @ExcelProperty("纬度")
    private BigDecimal latitude;

    @Schema(description = "数据来源")
    @ExcelProperty("数据来源")
    private String source;

    @Schema(description = "GeoJson")
    @ExcelProperty("GeoJson")
    private String geoJson;

    @Schema(description = "排序号")
    @ExcelProperty("排序号")
    private String sortNum;

    @Schema(description = "创建时间", requiredMode = Schema.RequiredMode.REQUIRED)
    @ExcelProperty("创建时间")
    private LocalDateTime createTime;

}