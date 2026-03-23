package com.lz.module.erp.controller.admin.product.vo.unit;

import com.lz.framework.common.pojo.PageParam;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

@Schema(description = "管理后台 - ERP 产品单位分页 Request VO")
@Data
@EqualsAndHashCode(callSuper = true)
@ToString(callSuper = true)
public class ErpProductUnitPageReqVO extends PageParam {

    @Schema(description = "单位名字", example = "YY")
    private String name;

    @Schema(description = "单位状态", example = "1")
    private Integer status;

}
