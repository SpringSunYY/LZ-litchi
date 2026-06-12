package com.lz.module.infra.controller.admin.ip.vo;

import com.alibaba.excel.annotation.ExcelProperty;
import com.lz.framework.common.validation.i18n.I18nNotEmpty;
import com.lz.framework.common.validation.i18n.I18nNotNull;
import com.lz.framework.excel.core.annotations.ExcelColumnSelect;
import com.lz.framework.excel.core.annotations.ExcelDirection;
import com.lz.framework.excel.core.annotations.ExcelI18n;
import com.lz.framework.excel.core.annotations.ExcelType;
import com.lz.framework.excel.core.convert.DictConvert;
import com.lz.module.infra.enums.DictTypeConstants;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

import java.math.BigDecimal;

/**
 * 地区信息 Excel VO
 *
 * @author 荔枝软件
 */
@Schema(description = "管理后台 - 地区信息Excel VO")
@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Accessors(chain = false)
public class AreaExcelVO {

    /**
    * 行政编码
    */
    @ExcelProperty("行政编码")
    @ExcelI18n(i18nKey = "infra.area.field.code")
    @I18nNotEmpty(i18nKey = "infra.area.back.code.notEmpty", message = "行政编码不能为空")
    private String code;

    /**
    * 地区名称
    */
    @ExcelProperty("地区名称")
    @ExcelI18n(i18nKey = "infra.area.field.name")
    @I18nNotEmpty(i18nKey = "infra.area.back.name.notEmpty", message = "地区名称不能为空")
    private String name;

    /**
    * 邮政编码
    */
    @ExcelProperty("邮政编码")
    @ExcelI18n(i18nKey = "infra.area.field.postalCode")
    private String postalCode;

    /**
    * 父级ID
    */
    @ExcelProperty("父级编号")
    @ExcelI18n(i18nKey = "infra.area.field.parentCode")
    @I18nNotNull(i18nKey = "infra.area.back.parentCode.notNull", message = "父级编号不能为空")
    private String parentCode;

    /**
    * 层级
    */
    @ExcelProperty(value = "层级",converter = DictConvert.class)
    @ExcelI18n(i18nKey = "infra.area.field.level")
    @I18nNotNull(i18nKey = "infra.area.back.level.notNull", message = "层级不能为空")
    @ExcelColumnSelect(dictType = DictTypeConstants.INFRA_AREA_LEVEL, i18n = true)
    private Integer level;

    /**
    * 经度
    */
    @ExcelProperty("经度")
    @ExcelI18n(i18nKey = "infra.area.field.longitude")
    private BigDecimal longitude;

    /**
    * 纬度
    */
    @ExcelProperty("纬度")
    @ExcelI18n(i18nKey = "infra.area.field.latitude")
    private BigDecimal latitude;

    /**
    * 数据来源
    */
    @ExcelProperty("数据来源")
    @ExcelI18n(i18nKey = "infra.area.field.source")
    private String source;

    /**
    * GeoJson
    */
    @ExcelProperty("GeoJson")
    @ExcelI18n(i18nKey = "infra.area.field.geoJson")
    private String geoJson;

    /**
    * 排序号
    */
    @ExcelProperty("排序号")
    @ExcelI18n(i18nKey = "infra.area.field.sortNum")
    private String sortNum;

    /**
    * 祖级列表
    */
    @ExcelProperty("祖级列表")
    @ExcelI18n(i18nKey = "infra.area.field.ancestors")
    @ExcelType(ExcelDirection.ONLY_EXPORT)
    private String ancestors;

}
