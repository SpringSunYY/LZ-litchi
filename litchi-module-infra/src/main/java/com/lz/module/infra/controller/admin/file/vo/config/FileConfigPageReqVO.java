package com.lz.module.infra.controller.admin.file.vo.config;

import com.lz.framework.common.annotation.Sortable;
import com.lz.framework.common.pojo.PageParam;
import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.validation.constraints.Size;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDateTime;

import static com.lz.framework.common.util.date.DateUtils.FORMAT_YEAR_MONTH_DAY_HOUR_MINUTE_SECOND;

@Schema(description = "管理后台 - 文件配置分页 Request VO")
@Data
public class FileConfigPageReqVO extends PageParam {

    @Schema(description = "配置键")
    private String configKey;

    @Schema(description = "配置名", example = "王五")
    private String name;

    @Schema(description = "存储器")
    private Integer storage;

    @Schema(description = "路径类型", example = "1")
    private Integer pathType;

    @Schema(description = "返回类型", example = "2")
    private Integer returnType;

    @Sortable(value = "max_size")
    @Size(max = 2, message = "文件大小长度不能超过2")
    @Schema(description = "文件大小")
    private Integer[] maxSize;

    @Schema(description = "文件类型", example = "1")
    private String fileType;

    @Schema(description = "是否为主配置")
    private Boolean master;

    @Sortable(value = "create_time")
    @Size(max = 2, message = "创建时间长度不能超过2")
    @Schema(description = "创建时间")
    @DateTimeFormat(pattern = FORMAT_YEAR_MONTH_DAY_HOUR_MINUTE_SECOND)
    private LocalDateTime[] createTime;

}