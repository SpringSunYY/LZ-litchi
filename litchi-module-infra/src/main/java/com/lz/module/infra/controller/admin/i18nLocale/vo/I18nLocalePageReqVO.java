package com.lz.module.infra.controller.admin.i18nLocale.vo;

import lombok.*;
import java.util.*;
import io.swagger.v3.oas.annotations.media.Schema;
import com.lz.framework.common.pojo.PageParam;
import org.springframework.format.annotation.DateTimeFormat;
import java.time.LocalDateTime;

import static com.lz.framework.common.util.date.DateUtils.FORMAT_YEAR_MONTH_DAY_HOUR_MINUTE_SECOND;

@Schema(description = "管理后台 - 国际化国家分页 Request VO")
@Data
public class I18nLocalePageReqVO extends PageParam {

    @Schema(description = "国家地区", example = "赵六")
    private String localeName;

    @Schema(description = "简称")
    private String locale;

    @Schema(description = "状态", example = "1")
    private Integer localeStatus;

    @Schema(description = "类型", example = "2")
    private Integer localeType;

    @Schema(description = "默认")
    private Integer isDefault;

    @Schema(description = "创建时间")
    @DateTimeFormat(pattern = FORMAT_YEAR_MONTH_DAY_HOUR_MINUTE_SECOND)
    private LocalDateTime[] createTime;

}