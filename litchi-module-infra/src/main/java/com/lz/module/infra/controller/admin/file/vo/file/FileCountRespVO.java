package com.lz.module.infra.controller.admin.file.vo.file;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Schema(description = "管理后台 - 文件总计 Response VO")
@Data
public class FileCountRespVO {

    @Schema(description = "文件大小", requiredMode = Schema.RequiredMode.REQUIRED, example = "11")
    private Float fileSize;

    @Schema(description = "文件总数", requiredMode = Schema.RequiredMode.REQUIRED,
            example = "10")
    private Long fileCount;


}
