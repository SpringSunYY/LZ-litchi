package com.lz.module.infra.controller.admin.file.vo.file;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.time.LocalDateTime;

@Schema(description = "管理后台 - 文件 Response VO,不返回 content 字段，太大")
@Data
public class FileRespVO {

    @Schema(description = "文件编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "21024")
    private Long id;

    @Schema(description = "配置")
    private String configKey;

    @Schema(description = "文件名", example = "张三")
    private String name;

    @Schema(description = "文件路径", requiredMode = Schema.RequiredMode.REQUIRED)
    private String path;

    @Schema(description = "绝对路径", requiredMode = Schema.RequiredMode.REQUIRED)
    private String absolutePath;

    @Schema(description = "相对路径", requiredMode = Schema.RequiredMode.REQUIRED)
    private String relativePath;

    @Schema(description = "文件URL，根据配置返回相对或绝对路径")
    private String url;

    @Schema(description = "文件类型", example = "1")
    private String type;

    @Schema(description = "文件大小", requiredMode = Schema.RequiredMode.REQUIRED)
    private Integer size;

    @Schema(description = "模块", example = "2")
    private String moduleType;

    @Schema(description = "创建时间", requiredMode = Schema.RequiredMode.REQUIRED)
    private LocalDateTime createTime;

}
