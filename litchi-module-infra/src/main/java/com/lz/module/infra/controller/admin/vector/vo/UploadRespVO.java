package com.lz.module.infra.controller.admin.vector.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * 以图搜图vo
 *
 * @Project: LZ-Order
 * @Author: YY
 * @CreateTime: 2026-07-05  18:09
 * @Version: 1.0
 */
@Schema(description = "管理后台 - 以图搜图上传VO")
@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class UploadRespVO {
    @Schema(description = "图片地址")
    private String url;
    @Schema(description = "图片id")
    private String id;
}
