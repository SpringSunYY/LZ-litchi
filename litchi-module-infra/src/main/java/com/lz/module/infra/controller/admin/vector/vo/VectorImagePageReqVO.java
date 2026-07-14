package com.lz.module.infra.controller.admin.vector.vo;

import com.lz.framework.common.pojo.PageParam;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDateTime;

import static com.lz.framework.common.util.date.DateUtils.FORMAT_YEAR_MONTH_DAY_HOUR_MINUTE_SECOND;

/**
 * 管理后台 - 以图搜图分页 Request VO
 *
 * @Project: LZ-Order
 * @Author: YY
 * @CreateTime: 2026-07-05
 * @Version: 1.0
 */
@Schema(description = "管理后台 - 以图搜图分页 Request VO")
@Data
public class VectorImagePageReqVO extends PageParam {

    @Schema(description = "图片主键 id（精确匹配）", example = "cat_20260101_120000_000")
    private String id;

    @Schema(description = "图片路径（模糊匹配）", example = "images/cat")
    private String imagePath;

    @Schema(description = "关联的 infra_file.id（精确匹配）", example = "1024")
    private Long fileId;

    @Schema(description = "入库时间范围", example = "[2026-01-01 00:00:00, 2026-12-31 23:59:59]")
    @DateTimeFormat(pattern = FORMAT_YEAR_MONTH_DAY_HOUR_MINUTE_SECOND)
    private LocalDateTime[] createTime;

}