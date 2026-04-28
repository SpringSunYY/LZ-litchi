package com.lz.module.infra.controller.admin.i18n.vo;

import com.lz.framework.common.pojo.PageParam;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDateTime;

import static com.lz.framework.common.util.date.DateUtils.FORMAT_YEAR_MONTH_DAY_HOUR_MINUTE_SECOND;

@Schema(description = "管理后台 - 国际化信息分页 Request VO")
@Data
public class I18nMessageSimpVO {

    @Schema(description = "键")
    private String messageKey;

    @Schema(description = "简称")
    private String locale;

    @Schema(description = "内容")
    private String message;

}