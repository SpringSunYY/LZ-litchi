package com.lz.module.infra.controller.admin.job.vo.job;

import com.lz.framework.common.validation.i18n.I18nNotNull;
import com.lz.framework.excel.core.annotations.ExcelColumnSelect;
import com.lz.framework.excel.core.annotations.ExcelI18n;
import com.lz.framework.excel.core.convert.DictConvert;
import com.lz.module.infra.enums.DictTypeConstants;
import com.alibaba.excel.annotation.ExcelIgnoreUnannotated;
import com.alibaba.excel.annotation.ExcelProperty;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.time.LocalDateTime;

@Schema(description = "管理后台 - 定时任务 Response VO")
@Data
@ExcelIgnoreUnannotated
public class JobRespVO {

    @Schema(description = "任务编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "1024")
    @ExcelProperty("任务编号")
    @ExcelI18n(i18nKey = "infra.job.field.id")
    private Long id;

    @Schema(description = "任务名称", requiredMode = Schema.RequiredMode.REQUIRED, example = "测试任务")
    @ExcelProperty("任务名称")
    @ExcelI18n(i18nKey = "infra.job.field.name")
    private String name;

    @Schema(description = "任务状态", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @ExcelProperty(value = "任务状态", converter = DictConvert.class)
    @ExcelColumnSelect(dictType = DictTypeConstants.JOB_STATUS, i18n = true)
    @ExcelI18n(i18nKey = "infra.job.field.status")
    private Integer status;

    @Schema(description = "处理器的名字", requiredMode = Schema.RequiredMode.REQUIRED, example = "sysUserSessionTimeoutJob")
    @ExcelProperty("处理器的名字")
    @ExcelI18n(i18nKey = "infra.job.field.handlerName")
    private String handlerName;

    @Schema(description = "处理器的参数", example = "litchi")
    @ExcelProperty("处理器的参数")
    @ExcelI18n(i18nKey = "infra.job.field.handlerParam")
    private String handlerParam;

    @Schema(description = "CRON 表达式", requiredMode = Schema.RequiredMode.REQUIRED, example = "0/10 * * * * ? *")
    @ExcelProperty("CRON 表达式")
    @ExcelI18n(i18nKey = "infra.job.field.cronExpression")
    private String cronExpression;

    @Schema(description = "重试次数", requiredMode = Schema.RequiredMode.REQUIRED, example = "3")
    @I18nNotNull(i18nKey = "infra.job.back.retryCount.notNull", message = "重试次数不能为空")
    private Integer retryCount;

    @Schema(description = "重试间隔", requiredMode = Schema.RequiredMode.REQUIRED, example = "1000")
    private Integer retryInterval;

    @Schema(description = "监控超时时间", example = "1000")
    @ExcelProperty("监控超时时间")
    @ExcelI18n(i18nKey = "infra.job.field.monitorTimeout")
    private Integer monitorTimeout;

    @Schema(description = "创建时间", requiredMode = Schema.RequiredMode.REQUIRED)
    @ExcelProperty("创建时间")
    @ExcelI18n(i18nKey = "infra.job.field.createTime")
    private LocalDateTime createTime;

}
