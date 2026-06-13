package com.lz.module.system.controller.admin.logger.vo.loginlog;

import com.lz.framework.common.annotation.Sortable;
import com.lz.framework.common.pojo.PageParam;
import com.lz.framework.common.validation.i18n.I18nSize;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;
import lombok.EqualsAndHashCode;
import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDateTime;

import static com.lz.framework.common.util.date.DateUtils.FORMAT_YEAR_MONTH_DAY_HOUR_MINUTE_SECOND;

@Schema(description = "管理后台 - 登录日志分页列表 Request VO")
@Data
@EqualsAndHashCode(callSuper = true)
public class LoginLogPageReqVO extends PageParam {

    @Schema(description = "用户 IP，模拟匹配", example = "127.0.0.1")
    private String userIp;

    @Schema(description = "用户账号，模拟匹配", example = "荔枝")
    private String username;

    @Schema(description = "操作状态", example = "true")
    private Boolean status;


    /**
     * IP属地
     */
    @Schema(description = "IP属地")
    private String userIpAddr;

    /**
     * 浏览器 UA
     */
    @Schema(description = "浏览器 UA")
    private String userAgent;

    /**
     * 浏览器
     */
    @Schema(description = "浏览器")
    private String userBrowser;

    /**
     * 操作系统
     */
    @Schema(description = "操作系统")
    private String userPlatform;

    /**
     * 创建时间
     */
    @Sortable(value = "create_time")
    @I18nSize(i18nKey = "system.loginLog.back.createTime.size", min = 0, max = 2, message = "创建时间长度不能超过2")
    @Schema(description = "创建时间")
    @DateTimeFormat(pattern = FORMAT_YEAR_MONTH_DAY_HOUR_MINUTE_SECOND)
    private LocalDateTime[] createTime;

}
