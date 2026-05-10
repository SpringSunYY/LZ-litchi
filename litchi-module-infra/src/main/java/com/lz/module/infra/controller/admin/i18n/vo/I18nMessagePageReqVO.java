package com.lz.module.infra.controller.admin.i18n.vo;

import lombok.*;
import io.swagger.v3.oas.annotations.media.Schema;
import com.lz.framework.common.pojo.PageParam;
import org.springframework.format.annotation.DateTimeFormat;
import java.time.LocalDateTime;

import static com.lz.framework.common.util.date.DateUtils.FORMAT_YEAR_MONTH_DAY_HOUR_MINUTE_SECOND;

@Schema(description = "管理后台 - 国际化信息分页 Request VO")
@Data
public class I18nMessagePageReqVO extends PageParam {

    @Schema(description = "名称", example = "赵六")
    private String messageName;

    @Schema(description = "键")
    private String messageKey;

    @Schema(description = "简称")
    private String locale;

    @Schema(description = "使用端")
    private Integer localeTarget;

    @Schema(description = "是否内置")
    private Integer isSystem;

    @Schema(description = "模块", example = "2")
    private String moduleType;

    @Schema(description = "使用类型", example = "2")
    private Integer useType;

    @Schema(description = "备注", example = "你说的对")
    private String remark;

    @Schema(description = "创建时间")
    @DateTimeFormat(pattern = FORMAT_YEAR_MONTH_DAY_HOUR_MINUTE_SECOND)
    private LocalDateTime[] createTime;

}