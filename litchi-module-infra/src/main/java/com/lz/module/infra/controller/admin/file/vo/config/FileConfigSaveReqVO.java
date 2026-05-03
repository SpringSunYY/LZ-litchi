package com.lz.module.infra.controller.admin.file.vo.config;

import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import lombok.Data;

import java.util.Map;

@Schema(description = "管理后台 - 文件配置创建/修改 Request VO")
@Data
public class FileConfigSaveReqVO {

    @Schema(description = "编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "28922")
    private Long id;

    @Schema(description = "配置键", requiredMode = Schema.RequiredMode.REQUIRED)
    @NotEmpty(message = "配置键不能为空")
    private String configKey;

    @Schema(description = "配置名", requiredMode = Schema.RequiredMode.REQUIRED, example = "王五")
    @NotEmpty(message = "配置名不能为空")
    private String name;

    @Schema(description = "存储器", requiredMode = Schema.RequiredMode.REQUIRED)
    @NotNull(message = "存储器不能为空")
    private Integer storage;

    @Schema(description = "路径类型", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @NotNull(message = "路径类型不能为空")
    private Integer pathType;

    @Schema(description = "返回类型", requiredMode = Schema.RequiredMode.REQUIRED, example = "2")
    @NotNull(message = "返回类型不能为空")
    private Integer returnType;

    @Schema(description = "文件大小", requiredMode = Schema.RequiredMode.REQUIRED)
    @NotNull(message = "文件大小不能为空")
    private Integer maxSize;

    @Schema(description = "文件类型", example = "1")
    private String fileType;

    @Schema(description = "备注", example = "你猜")
    private String remark;

    @Schema(description = "存储配置", requiredMode = Schema.RequiredMode.REQUIRED)
    @NotEmpty(message = "存储配置不能为空")
    private Map<String, Object> config;

}
