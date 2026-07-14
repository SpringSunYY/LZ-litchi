package com.lz.module.infra.controller.admin.file.vo.file;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Schema(description = "管理后台 - 文件上传")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class FileUploadRespVO {

    @Schema(description = "文件编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "21024")
    private Long id;

    @Schema(description = "文件名", example = "张三")
    private String name;

    @Schema(description = "文件路径", requiredMode = Schema.RequiredMode.REQUIRED)
    private String url;
}
