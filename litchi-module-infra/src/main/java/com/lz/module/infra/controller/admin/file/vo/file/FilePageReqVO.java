package com.lz.module.infra.controller.admin.file.vo.file;

import com.lz.framework.common.annotation.Sortable;
import com.lz.framework.common.pojo.PageParam;
import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.validation.constraints.Size;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDateTime;

import static com.lz.framework.common.util.date.DateUtils.FORMAT_YEAR_MONTH_DAY_HOUR_MINUTE_SECOND;

@Schema(description = "管理后台 - 文件分页 Request VO")
@Data
public class FilePageReqVO extends PageParam {

    @Schema(description = "配置")
    private String configKey;

    @Schema(description = "文件名", example = "张三")
    private String name;

    @Schema(description = "文件路径")
    private String path;

    @Schema(description = "绝对路径")
    private String absolutePath;

    @Schema(description = "相对路径")
    private String relativePath;

    @Schema(description = "文件类型", example = "1")
    private String type;

    @Sortable(value = "size")
    @Size(max = 2, message = "文件大小长度不能超过2")
    @Schema(description = "文件大小")
    private Integer[] size;

    @Schema(description = "模块", example = "2")
    private String moduleType;

    @Sortable(value = "create_time")
    @Size(max = 2, message = "创建时间长度不能超过2")
    @Schema(description = "创建时间")
    @DateTimeFormat(pattern = FORMAT_YEAR_MONTH_DAY_HOUR_MINUTE_SECOND)
    private LocalDateTime[] createTime;

}
