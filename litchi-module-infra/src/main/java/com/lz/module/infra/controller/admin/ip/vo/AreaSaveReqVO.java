package com.lz.module.infra.controller.admin.ip.vo;

import com.lz.framework.common.validation.i18n.I18nNotBlank;
import com.lz.framework.common.validation.i18n.I18nNotNull;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.math.BigDecimal;

@Schema(description = "管理后台 - 地区信息新增/修改 Request VO")
@Data
public class AreaSaveReqVO {

    @Schema(description = "ID", requiredMode = Schema.RequiredMode.REQUIRED, example = "11928")
    private Long id;


    @Schema(description = "行政编码", requiredMode = Schema.RequiredMode.REQUIRED, example = "1020")
    @I18nNotNull(i18nKey = "infra.area.back.administrativeCode.notNull", message = "行政编码不能为空")
    private String administrativeCode;


    @Schema(description = "地区名称", requiredMode = Schema.RequiredMode.REQUIRED, example = "张三")
    @I18nNotBlank(i18nKey = "infra.area.back.name.notBlank", message = "地区名称不能为空")
    private String name;

    @Schema(description = "邮政编码")
    private String postalCode;

    @Schema(description = "父级ID", requiredMode = Schema.RequiredMode.REQUIRED, example = "9750")
    @I18nNotNull(i18nKey = "infra.area.back.parentId.notNull", message = "父级ID不能为空")
    private Long parentId;

    @Schema(description = "层级", requiredMode = Schema.RequiredMode.REQUIRED)
    @I18nNotNull(i18nKey = "infra.area.back.level.notNull", message = "层级不能为空")
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

}
