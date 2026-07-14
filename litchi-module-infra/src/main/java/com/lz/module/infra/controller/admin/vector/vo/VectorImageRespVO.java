package com.lz.module.infra.controller.admin.vector.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;

/**
 * 管理后台 - 以图搜图 Response VO
 *
 * @Project: LZ-Order
 * @Author: YY
 * @CreateTime: 2026-07-05
 * @Version: 1.0
 */
@Schema(description = "管理后台 - 以图搜图 Response VO")
@Data
@Builder
@AllArgsConstructor
public class VectorImageRespVO {

    @Schema(description = "主键 id", requiredMode = Schema.RequiredMode.REQUIRED, example = "cat_20260101_120000_000")
    private String id;

    @Schema(description = "图片路径（文件访问地址）", requiredMode = Schema.RequiredMode.REQUIRED, example = "images/cat.jpg")
    private String imagePath;

    @Schema(description = "关联的 infra_file.id", example = "1024")
    private Long fileId;

    @Schema(description = "租户编号", example = "1")
    private Long tenantId;

    @Schema(description = "入库时间（毫秒时间戳）", requiredMode = Schema.RequiredMode.REQUIRED, example = "1700000000000")
    private Long createTime;

}