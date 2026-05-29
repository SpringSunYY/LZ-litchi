package com.lz.module.infra.controller.admin.job.vo.job;

import com.lz.framework.common.validation.i18n.I18nNotEmpty;
import com.lz.framework.common.validation.i18n.I18nNotNull;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

@Schema(description = "管理后台 - 定时任务创建/修改 Request VO")
@Data
public class JobSaveReqVO {

    @Schema(description = "任务编号", example = "1024")
    private Long id;

    @Schema(description = "任务名称", requiredMode = Schema.RequiredMode.REQUIRED, example = "测试任务")
    @I18nNotEmpty(i18nKey = "infra.job.back.name.notEmpty", message = "任务名称不能为空")
    private String name;

    @Schema(description = "处理器的名字", requiredMode = Schema.RequiredMode.REQUIRED, example = "sysUserSessionTimeoutJob")
    @I18nNotEmpty(i18nKey = "infra.job.back.handlerName.notEmpty", message = "处理器的名字不能为空")
    private String handlerName;

    @Schema(description = "处理器的参数", example = "litchi")
    private String handlerParam;

    @Schema(description = "CRON 表达式", requiredMode = Schema.RequiredMode.REQUIRED, example = "0/10 * * * * ? *")
    @I18nNotEmpty(i18nKey = "infra.job.back.cronExpression.notEmpty", message = "CRON 表达式不能为空")
    private String cronExpression;

    @Schema(description = "重试次数", requiredMode = Schema.RequiredMode.REQUIRED, example = "3")
    @I18nNotNull(i18nKey = "infra.job.back.retryCount.notNull", message = "重试次数不能为空")
    private Integer retryCount;

    @Schema(description = "重试间隔", requiredMode = Schema.RequiredMode.REQUIRED, example = "1000")
    @I18nNotNull(i18nKey = "infra.job.back.retryInterval.notNull", message = "重试间隔不能为空")
    private Integer retryInterval;

    @Schema(description = "监控超时时间", example = "1000")
    private Integer monitorTimeout;

}
