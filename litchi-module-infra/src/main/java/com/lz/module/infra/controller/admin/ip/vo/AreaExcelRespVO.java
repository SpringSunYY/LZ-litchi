package com.lz.module.infra.controller.admin.ip.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Builder;
import lombok.Data;

/**
 * 地区信息 Excel Response VO
 *
 * @author 荔枝软件
 */
@Schema(description = "管理后台 - 地区信息Excel Response VO")
@Data
@Builder
public class AreaExcelRespVO {

    /**
     * 导入/导出结果信息
     */
    @Schema(description = "信息", requiredMode = Schema.RequiredMode.REQUIRED)
    private String message;

}
