package com.lz.module.infra.controller.admin.file.vo.config;

import com.lz.module.infra.framework.file.core.client.FileClientConfig;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.time.LocalDateTime;

@Schema(description = "管理后台 - 文件配置 Response VO")
@Data
public class FileConfigRespVO {

    private Long id;

    private String configKey;

    private String name;

    private Integer storage;

    private Integer pathType;

    private Integer returnType;

    private Integer maxSize;

    private String fileType;

    private String remark;

    private Boolean master;

    private FileClientConfig config;

    private LocalDateTime createTime;

}
