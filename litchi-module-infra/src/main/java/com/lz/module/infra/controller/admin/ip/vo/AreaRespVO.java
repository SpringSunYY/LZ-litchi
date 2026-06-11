package com.lz.module.infra.controller.admin.ip.vo;

import com.alibaba.excel.annotation.ExcelIgnoreUnannotated;
import com.alibaba.excel.annotation.ExcelProperty;
import com.lz.framework.excel.core.annotations.ExcelColumnSelect;
import com.lz.framework.excel.core.annotations.ExcelI18n;
import com.lz.framework.excel.core.convert.DictConvert;
import com.lz.module.infra.enums.DictTypeConstants;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.math.BigDecimal;
import java.time.LocalDateTime;

@Schema(description = "管理后台 - 地区信息 Response VO")
@Data
@ExcelIgnoreUnannotated
public class AreaRespVO {

    @Schema(description = "ID", requiredMode = Schema.RequiredMode.REQUIRED, example = "11928")
    @ExcelProperty("ID")
    @ExcelI18n(i18nKey = "infra.area.field.id")
    private Long id;

    @Schema(description = "行政编码", requiredMode = Schema.RequiredMode.REQUIRED, example = "1020")
    @ExcelProperty("行政编码")
    @ExcelI18n(i18nKey = "infra.area.field.administrativeCode")
    private String administrativeCode;

    @Schema(description = "地区名称", requiredMode = Schema.RequiredMode.REQUIRED, example = "张三")
    @ExcelProperty("地区名称")
    @ExcelI18n(i18nKey = "infra.area.field.name")
    private String name;

    @Schema(description = "邮政编码")
    @ExcelProperty("邮政编码")
    @ExcelI18n(i18nKey = "infra.area.field.postalCode")
    private String postalCode;

    @Schema(description = "父级ID", requiredMode = Schema.RequiredMode.REQUIRED, example = "9750")
    @ExcelProperty("父级ID")
    @ExcelI18n(i18nKey = "infra.area.field.parentId")
    private Long parentId;

    @Schema(description = "层级", requiredMode = Schema.RequiredMode.REQUIRED)
    @ExcelProperty(value = "层级", converter = DictConvert.class)
    @ExcelColumnSelect(dictType = DictTypeConstants.SYSTEM_AREA_LEVEL, i18n = true)
    @ExcelI18n(i18nKey = "infra.area.field.level")
    private Integer level;

    @Schema(description = "经度")
    @ExcelProperty("经度")
    @ExcelI18n(i18nKey = "infra.area.field.longitude")
    private BigDecimal longitude;

    @Schema(description = "纬度")
    @ExcelProperty("纬度")
    @ExcelI18n(i18nKey = "infra.area.field.latitude")
    private BigDecimal latitude;

    @Schema(description = "数据来源")
    @ExcelProperty("数据来源")
    @ExcelI18n(i18nKey = "infra.area.field.source")
    private String source;

    @Schema(description = "GeoJson")
    @ExcelProperty("GeoJson")
    @ExcelI18n(i18nKey = "infra.area.field.geoJson")
    private String geoJson;

    @Schema(description = "排序号")
    @ExcelProperty("排序号")
    @ExcelI18n(i18nKey = "infra.area.field.sortNum")
    private String sortNum;

    @Schema(description = "创建时间", requiredMode = Schema.RequiredMode.REQUIRED)
    @ExcelProperty("创建时间")
    @ExcelI18n(i18nKey = "infra.area.field.createTime")
    private LocalDateTime createTime;

}
