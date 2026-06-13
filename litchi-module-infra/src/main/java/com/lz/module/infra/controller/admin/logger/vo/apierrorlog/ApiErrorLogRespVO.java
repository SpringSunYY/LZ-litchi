package com.lz.module.infra.controller.admin.logger.vo.apierrorlog;

import com.lz.framework.excel.core.annotations.ExcelColumnSelect;
import com.lz.framework.excel.core.annotations.ExcelI18n;
import com.lz.framework.excel.core.convert.DictConvert;
import com.lz.module.infra.enums.DictTypeConstants;
import com.alibaba.excel.annotation.ExcelIgnoreUnannotated;
import com.alibaba.excel.annotation.ExcelProperty;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.time.LocalDateTime;

@Schema(description = "管理后台 - API 错误日志 Response VO")
@Data
@ExcelIgnoreUnannotated
public class ApiErrorLogRespVO {

    @Schema(description = "编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "1024")
    @ExcelProperty("编号")
    @ExcelI18n(i18nKey = "infra.apiErrorLog.field.id")
    private Long id;

    @Schema(description = "链路追踪编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "66600cb6-7852-11eb-9439-0242ac130002")
    @ExcelProperty("链路追踪编号")
    @ExcelI18n(i18nKey = "infra.apiErrorLog.field.traceId")
    private String traceId;

    @Schema(description = "用户编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "666")
    @ExcelProperty("用户编号")
    @ExcelI18n(i18nKey = "infra.apiErrorLog.field.userId")
    private Long userId;

    @Schema(description = "用户类型", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @ExcelProperty(value = "用户类型", converter = DictConvert.class)
    @ExcelColumnSelect(dictType = DictTypeConstants.USER_TYPE, i18n = true)
    @ExcelI18n(i18nKey = "infra.apiErrorLog.field.userType")
    private Integer userType;

    @Schema(description = "应用名", requiredMode = Schema.RequiredMode.REQUIRED, example = "dashboard")
    @ExcelProperty("应用名")
    @ExcelI18n(i18nKey = "infra.apiErrorLog.field.applicationName")
    private String applicationName;

    @Schema(description = "请求方法名", requiredMode = Schema.RequiredMode.REQUIRED, example = "GET")
    @ExcelProperty("请求方法名")
    @ExcelI18n(i18nKey = "infra.apiErrorLog.field.requestMethod")
    private String requestMethod;

    @Schema(description = "请求地址", requiredMode = Schema.RequiredMode.REQUIRED, example = "/xx/yy")
    @ExcelProperty("请求地址")
    @ExcelI18n(i18nKey = "infra.apiErrorLog.field.requestUrl")
    private String requestUrl;

    @Schema(description = "请求参数", requiredMode = Schema.RequiredMode.REQUIRED)
    @ExcelProperty("请求参数")
    @ExcelI18n(i18nKey = "infra.apiErrorLog.field.requestParams")
    private String requestParams;

    /**
     * 用户 IP
     */
    @Schema(description = "用户 IP", requiredMode = Schema.RequiredMode.REQUIRED)
    @ExcelProperty("用户 IP")
    @ExcelI18n(i18nKey = "infra.apiErrorLog.field.userIp")
    private String userIp;

    /**
     * IP属地
     */
    @Schema(description = "IP属地", requiredMode = Schema.RequiredMode.REQUIRED)
    @ExcelProperty("IP属地")
    @ExcelI18n(i18nKey = "infra.apiErrorLog.field.userIpAddr")
    private String userIpAddr;

    /**
     * 浏览器 UA
     */
    @Schema(description = "浏览器 UA", requiredMode = Schema.RequiredMode.REQUIRED)
    @ExcelProperty("浏览器 UA")
    @ExcelI18n(i18nKey = "infra.apiErrorLog.field.userAgent")
    private String userAgent;

    /**
     * 浏览器
     */
    @Schema(description = "浏览器", requiredMode = Schema.RequiredMode.REQUIRED)
    @ExcelProperty("浏览器")
    @ExcelI18n(i18nKey = "infra.apiErrorLog.field.userBrowser")
    private String userBrowser;

    /**
     * 操作系统
     */
    @Schema(description = "操作系统", requiredMode = Schema.RequiredMode.REQUIRED)
    @ExcelProperty("操作系统")
    @ExcelI18n(i18nKey = "infra.apiErrorLog.field.userOs")
    private String userPlatform;

    @Schema(description = "异常发生时间", requiredMode = Schema.RequiredMode.REQUIRED)
    @ExcelProperty("异常发生时间")
    @ExcelI18n(i18nKey = "infra.apiErrorLog.field.exceptionTime")
    private LocalDateTime exceptionTime;

    @Schema(description = "异常名", requiredMode = Schema.RequiredMode.REQUIRED)
    @ExcelProperty("异常名")
    @ExcelI18n(i18nKey = "infra.apiErrorLog.field.exceptionName")
    private String exceptionName;

    @Schema(description = "异常导致的消息", requiredMode = Schema.RequiredMode.REQUIRED)
    @ExcelProperty("异常导致的消息")
    @ExcelI18n(i18nKey = "infra.apiErrorLog.field.exceptionMessage")
    private String exceptionMessage;

    @Schema(description = "异常导致的根消息", requiredMode = Schema.RequiredMode.REQUIRED)
    @ExcelProperty("异常导致的根消息")
    @ExcelI18n(i18nKey = "infra.apiErrorLog.field.exceptionRootCauseMessage")
    private String exceptionRootCauseMessage;

    @Schema(description = "异常的栈轨迹", requiredMode = Schema.RequiredMode.REQUIRED)
    @ExcelProperty("异常的栈轨迹")
    @ExcelI18n(i18nKey = "infra.apiErrorLog.field.exceptionStackTrace")
    private String exceptionStackTrace;

    @Schema(description = "异常发生的类全名", requiredMode = Schema.RequiredMode.REQUIRED)
    @ExcelProperty("异常发生的类全名")
    @ExcelI18n(i18nKey = "infra.apiErrorLog.field.exceptionClassName")
    private String exceptionClassName;

    @Schema(description = "异常发生的类文件", requiredMode = Schema.RequiredMode.REQUIRED)
    @ExcelProperty("异常发生的类文件")
    @ExcelI18n(i18nKey = "infra.apiErrorLog.field.exceptionFileName")
    private String exceptionFileName;

    @Schema(description = "异常发生的方法名", requiredMode = Schema.RequiredMode.REQUIRED)
    @ExcelProperty("异常发生的方法名")
    @ExcelI18n(i18nKey = "infra.apiErrorLog.field.exceptionMethodName")
    private String exceptionMethodName;

    @Schema(description = "异常发生的方法所在行", requiredMode = Schema.RequiredMode.REQUIRED)
    @ExcelProperty("异常发生的方法所在行")
    @ExcelI18n(i18nKey = "infra.apiErrorLog.field.exceptionLineNumber")
    private Integer exceptionLineNumber;

    @Schema(description = "处理状态", requiredMode = Schema.RequiredMode.REQUIRED, example = "0")
    @ExcelProperty(value = "处理状态", converter = DictConvert.class)
    @ExcelColumnSelect(dictType = DictTypeConstants.API_ERROR_LOG_PROCESS_STATUS, i18n = true)
    @ExcelI18n(i18nKey = "infra.apiErrorLog.field.processStatus")
    private Integer processStatus;

    @Schema(description = "处理时间", requiredMode = Schema.RequiredMode.REQUIRED)
    @ExcelProperty("处理时间")
    @ExcelI18n(i18nKey = "infra.apiErrorLog.field.processTime")
    private LocalDateTime processTime;

    @Schema(description = "处理用户编号", example = "233")
    @ExcelProperty("处理用户编号")
    @ExcelI18n(i18nKey = "infra.apiErrorLog.field.processUserId")
    private Integer processUserId;

    @Schema(description = "创建时间", requiredMode = Schema.RequiredMode.REQUIRED)
    @ExcelProperty("创建时间")
    @ExcelI18n(i18nKey = "infra.apiErrorLog.field.createTime")
    private LocalDateTime createTime;

}
