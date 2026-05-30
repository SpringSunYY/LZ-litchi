package com.lz.module.bpm.controller.admin.definition.vo.model;

import com.lz.framework.common.validation.i18n.I18nNotEmpty;
import com.lz.framework.common.validation.i18n.I18nNotNull;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

@Schema(description = "管理后台 - 流程模型更新状态 Request VO")
@Data
public class BpmModelUpdateStateReqVO {

    @Schema(description = "编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "1024")
    @I18nNotEmpty(i18nKey = "bpm.processDefinitionInfo.back.id.notEmpty", message = "编号不能为空")
    private String id;

    @Schema(description = "状态", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @I18nNotNull(i18nKey = "bpm.processDefinitionInfo.back.state.notNull", message = "状态不能为空")
    private Integer state; // 参见 Flowable SuspensionState 枚举

}
