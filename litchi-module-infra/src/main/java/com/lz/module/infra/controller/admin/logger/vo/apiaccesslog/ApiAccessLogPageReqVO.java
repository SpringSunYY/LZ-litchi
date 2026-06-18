package com.lz.module.infra.controller.admin.logger.vo.apiaccesslog;

import com.lz.framework.common.annotation.Sortable;
import com.lz.framework.common.pojo.PageParam;
import com.lz.framework.common.validation.i18n.I18nSize;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDateTime;

import static com.lz.framework.common.util.date.DateUtils.FORMAT_YEAR_MONTH_DAY_HOUR_MINUTE_SECOND;

@Schema(description = "管理后台 - API 访问日志分页 Request VO")
@Data
public class ApiAccessLogPageReqVO extends PageParam {

    @Schema(description = "用户编号", example = "666")
    private Long userId;

    @Schema(description = "用户类型", example = "2")
    private Integer userType;

    @Schema(description = "应用名", example = "dashboard")
    private String applicationName;

    @Schema(description = "请求地址，模糊匹配", example = "/xxx/yyy")
    private String requestUrl;

    @Schema(description = "请求方法名，模糊匹配", example = "GET")
    private String requestMethod;

    @Schema(description = "用户 IP", example = "127.0.0.1")
    private String userIp;

    @Schema(description = "用户 IP 地理位置", example = "中国")
    private String userIpAddr;

    @Schema(description = "浏览器", example = "Chrome")
    private String userBrowser;

    @Schema(description = "平台", example = "Windows")
    private String userPlatform;

    /**
     * 开始请求时间
     */
    @Sortable(value = "begin_time")
    @I18nSize(i18nKey = "infra.apiAccessLog.back.beginTime.size", min = 0, max = 2, message = "开始请求时间长度不能超过2")
    @Schema(description = "开始请求时间")
    @DateTimeFormat(pattern = FORMAT_YEAR_MONTH_DAY_HOUR_MINUTE_SECOND)
    private LocalDateTime[] beginTime;

    /**
     * 结束请求时间
     */
    @Sortable(value = "end_time")
    @I18nSize(i18nKey = "infra.apiAccessLog.back.endTime.size", min = 0, max = 2, message = "结束请求时间长度不能超过2")
    @Schema(description = "结束请求时间")
    @DateTimeFormat(pattern = FORMAT_YEAR_MONTH_DAY_HOUR_MINUTE_SECOND)
    private LocalDateTime[] endTime;
    @Schema(description = "执行时长,大于等于，单位：毫秒", example = "100")
    private Integer duration;

    @Schema(description = "结果码", example = "0")
    private Integer resultCode;

}
