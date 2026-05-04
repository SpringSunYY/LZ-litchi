package com.lz.module.infra.controller.admin.file.vo.file;

import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import lombok.Data;

@Schema(description = "管理后台 - 文件创建 Request VO")
@Data
public class FileCreateReqVO {

    @Schema(description = "文件编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "21024")
    private Long id;

    @Schema(description = "配置")
    private String configKey;

    @Schema(description = "文件名", example = "张三")
    private String name;

    @Schema(description = "文件路径", requiredMode = Schema.RequiredMode.REQUIRED)
    @NotEmpty(message = "文件路径不能为空")
    private String path;

    @Schema(description = "绝对路径", requiredMode = Schema.RequiredMode.REQUIRED)
    @NotEmpty(message = "绝对路径不能为空")
    private String absolutePath;

    @Schema(description = "相对路径", requiredMode = Schema.RequiredMode.REQUIRED)
    @NotEmpty(message = "相对路径不能为空")
    private String relativePath;

    @Schema(description = "文件类型", example = "1")
    private String type;

    @Schema(description = "文件大小", requiredMode = Schema.RequiredMode.REQUIRED)
    @NotNull(message = "文件大小不能为空")
    private Integer size;

    @Schema(description = "模块", example = "2")
    private String moduleType;

}
