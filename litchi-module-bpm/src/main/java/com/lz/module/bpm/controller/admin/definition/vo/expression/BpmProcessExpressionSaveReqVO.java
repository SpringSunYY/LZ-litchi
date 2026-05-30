package com.lz.module.bpm.controller.admin.definition.vo.expression;

import com.lz.framework.common.validation.i18n.I18nNotEmpty;
import com.lz.framework.common.validation.i18n.I18nNotNull;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

@Schema(description = "管理后台 - BPM 流程表达式新增/修改 Request VO")
@Data
public class BpmProcessExpressionSaveReqVO {

    @Schema(description = "编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "3870")
    private Long id;

    @Schema(description = "表达式名字", requiredMode = Schema.RequiredMode.REQUIRED, example = "李四")
    @I18nNotEmpty(i18nKey = "bpm.processExpression.back.name.notEmpty", message = "表达式名字不能为空")
    private String name;

    @Schema(description = "表达式状态", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @I18nNotNull(i18nKey = "bpm.processExpression.back.status.notNull", message = "表达式状态不能为空")
    private Integer status;

    @Schema(description = "表达式", requiredMode = Schema.RequiredMode.REQUIRED)
    @I18nNotEmpty(i18nKey = "bpm.processExpression.back.expression.notEmpty", message = "表达式不能为空")
    private String expression;

}