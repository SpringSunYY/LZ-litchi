package com.lz.module.infra.controller.admin.demo.demo01.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Builder;
import lombok.Data;

@Schema(description = "管理后台 - 示例联系人导入 Response VO")
@Data
@Builder
public class Demo01ContactImportRespVO {

    @Schema(description = "信息", requiredMode = Schema.RequiredMode.REQUIRED)
    private String message;

}