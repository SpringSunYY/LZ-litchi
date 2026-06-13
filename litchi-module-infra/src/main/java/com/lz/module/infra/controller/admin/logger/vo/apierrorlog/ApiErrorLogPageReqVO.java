package com.lz.module.infra.controller.admin.logger.vo.apierrorlog;

import com.lz.framework.common.annotation.Sortable;
import com.lz.framework.common.pojo.PageParam;
import com.lz.framework.common.validation.i18n.I18nSize;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDateTime;

import static com.lz.framework.common.util.date.DateUtils.FORMAT_YEAR_MONTH_DAY_HOUR_MINUTE_SECOND;

@Schema(description = "管理后台 - API 错误日志分页 Request VO")
@Data
public class ApiErrorLogPageReqVO extends PageParam {

    @Schema(description = "用户编号", example = "666")
    private Long userId;

    @Schema(description = "用户类型", example = "1")
    private Integer userType;

    @Schema(description = "应用名", example = "dashboard")
    private String applicationName;

    @Schema(description = "请求地址", example = "/xx/yy")
    private String requestUrl;

    /**
     * 异常发生时间
     */
    @Sortable(value = "exception_time")
    @I18nSize(i18nKey = "infra.apiErrorLog.back.exceptionTime.size", min = 0, max = 2, message = "异常发生时间长度不能超过2")
    @Schema(description = "异常发生时间")
    @DateTimeFormat(pattern = FORMAT_YEAR_MONTH_DAY_HOUR_MINUTE_SECOND)
    private LocalDateTime[] exceptionTime;


    @Schema(description = "处理状态", example = "0")
    private Integer processStatus;

}
