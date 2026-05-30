package com.lz.module.bpm.controller.admin.task.vo.task;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.util.Set;
import com.lz.framework.common.validation.i18n.I18nNotEmpty;

@Schema(description = "管理后台 - 加签任务的创建（加签） Request VO")
@Data
public class BpmTaskSignCreateReqVO {

    @Schema(description = "需要加签的任务编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @I18nNotEmpty(i18nKey = "bpm.task.back.id.notEmpty", message = "任务编号不能为空")
    private String id;

    @Schema(description = "加签的用户编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "888")
    @I18nNotEmpty(i18nKey = "bpm.taskSign.back.userIds.notEmpty", message = "加签用户不能为空")
    private Set<Long> userIds;

    @Schema(description = "加签类型", requiredMode = Schema.RequiredMode.REQUIRED, example = "before")
    @I18nNotEmpty(i18nKey = "bpm.taskSign.back.type.notEmpty", message = "加签类型不能为空")
    private String type; // 参见 BpmTaskSignTypeEnum 枚举

    @Schema(description = "加签原因", requiredMode = Schema.RequiredMode.REQUIRED, example = "需要加签")
    @I18nNotEmpty(i18nKey = "bpm.taskSign.back.reason.notEmpty", message = "加签原因不能为空")
    private String reason;

}
