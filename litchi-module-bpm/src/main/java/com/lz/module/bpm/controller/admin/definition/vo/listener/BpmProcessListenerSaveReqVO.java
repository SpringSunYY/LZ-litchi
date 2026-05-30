package com.lz.module.bpm.controller.admin.definition.vo.listener;

import com.lz.framework.common.validation.i18n.I18nNotEmpty;
import com.lz.framework.common.validation.i18n.I18nNotNull;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

@Schema(description = "管理后台 - BPM 流程监听器新增/修改 Request VO")
@Data
public class BpmProcessListenerSaveReqVO {

    @Schema(description = "编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "13089")
    private Long id;

    @Schema(description = "监听器名字", requiredMode = Schema.RequiredMode.REQUIRED, example = "赵六")
    @I18nNotEmpty(i18nKey = "bpm.processListener.back.name.notEmpty", message = "监听器名字不能为空")
    private String name;

    @Schema(description = "监听器类型", requiredMode = Schema.RequiredMode.REQUIRED, example = "execution")
    @I18nNotEmpty(i18nKey = "bpm.processListener.back.type.notEmpty", message = "监听器类型不能为空")
    private String type;

    @Schema(description = "监听器状态", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @I18nNotNull(i18nKey = "bpm.processListener.back.status.notNull", message = "监听器状态不能为空")
    private Integer status;

    @Schema(description = "监听事件", requiredMode = Schema.RequiredMode.REQUIRED, example = "start")
    @I18nNotEmpty(i18nKey = "bpm.processListener.back.event.notEmpty", message = "监听事件不能为空")
    private String event;

    @Schema(description = "监听器值类型", requiredMode = Schema.RequiredMode.REQUIRED, example = "class")
    @I18nNotEmpty(i18nKey = "bpm.processListener.back.valueType.notEmpty", message = "监听器值类型不能为空")
    private String valueType;

    @Schema(description = "监听器值", requiredMode = Schema.RequiredMode.REQUIRED)
    @I18nNotEmpty(i18nKey = "bpm.processListener.back.value.notEmpty", message = "监听器值不能为空")
    private String value;

}