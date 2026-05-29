package com.lz.module.infra.controller.admin.job.vo.log;

import com.lz.framework.excel.core.annotations.ExcelColumnSelect;
import com.lz.framework.excel.core.annotations.ExcelI18n;
import com.lz.framework.excel.core.convert.DictConvert;
import com.lz.module.infra.enums.DictTypeConstants;
import com.alibaba.excel.annotation.ExcelIgnoreUnannotated;
import com.alibaba.excel.annotation.ExcelProperty;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.time.LocalDateTime;

@Schema(description = "管理后台 - 定时任务日志 Response VO")
@Data
@ExcelIgnoreUnannotated
public class JobLogRespVO {

    @Schema(description = "日志编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "1024")
    @ExcelProperty("日志编号")
    @ExcelI18n(i18nKey = "infra.jobLog.field.id")
    private Long id;

    @Schema(description = "任务编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "1024")
    @ExcelProperty("任务编号")
    @ExcelI18n(i18nKey = "infra.jobLog.field.jobId")
    private Long jobId;

    @Schema(description = "处理器的名字", requiredMode = Schema.RequiredMode.REQUIRED, example = "sysUserSessionTimeoutJob")
    @ExcelProperty("处理器的名字")
    @ExcelI18n(i18nKey = "infra.jobLog.field.handlerName")
    private String handlerName;

    @Schema(description = "处理器的参数", example = "litchi")
    @ExcelProperty("处理器的参数")
    @ExcelI18n(i18nKey = "infra.jobLog.field.handlerParam")
    private String handlerParam;

    @Schema(description = "第几次执行", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @ExcelProperty("第几次执行")
    @ExcelI18n(i18nKey = "infra.jobLog.field.executeIndex")
    private Integer executeIndex;

    @Schema(description = "开始执行时间", requiredMode = Schema.RequiredMode.REQUIRED)
    @ExcelProperty("开始执行时间")
    @ExcelI18n(i18nKey = "infra.jobLog.field.beginTime")
    private LocalDateTime beginTime;

    @Schema(description = "结束执行时间")
    @ExcelProperty("结束执行时间")
    @ExcelI18n(i18nKey = "infra.jobLog.field.endTime")
    private LocalDateTime endTime;

    @Schema(description = "执行时长", example = "123")
    @ExcelProperty("执行时长")
    @ExcelI18n(i18nKey = "infra.jobLog.field.duration")
    private Integer duration;

    @Schema(description = "任务状态，参见 JobLogStatusEnum 枚举", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @ExcelProperty(value = "任务状态", converter = DictConvert.class)
    @ExcelColumnSelect(dictType = DictTypeConstants.JOB_STATUS, i18n = true)
    @ExcelI18n(i18nKey = "infra.jobLog.field.status")
    private Integer status;

    @Schema(description = "结果数据", example = "执行成功")
    @ExcelProperty("结果数据")
    @ExcelI18n(i18nKey = "infra.jobLog.field.result")
    private String result;

    @Schema(description = "创建时间", requiredMode = Schema.RequiredMode.REQUIRED)
    @ExcelProperty("创建时间")
    @ExcelI18n(i18nKey = "infra.jobLog.field.createTime")
    private LocalDateTime createTime;

}
