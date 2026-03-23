package com.lz.module.erp.controller.admin.stock.vo.warehouse;

import com.lz.framework.common.enums.CommonStatusEnum;
import com.lz.framework.common.pojo.PageParam;
import com.lz.framework.common.validation.InEnum;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

@Schema(description = "管理后台 - ERP 仓库分页 Request VO")
@Data
@EqualsAndHashCode(callSuper = true)
@ToString(callSuper = true)
public class ErpWarehousePageReqVO extends PageParam {

    @Schema(description = "仓库名称", example = "李四")
    private String name;

    @Schema(description = "开启状态", example = "1")
    @InEnum(CommonStatusEnum.class)
    private Integer status;

}