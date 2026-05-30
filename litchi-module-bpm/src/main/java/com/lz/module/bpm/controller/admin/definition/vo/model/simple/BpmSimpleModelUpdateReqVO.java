package com.lz.module.bpm.controller.admin.definition.vo.model.simple;

import com.lz.framework.common.validation.i18n.I18nNotEmpty;
import com.lz.framework.common.validation.i18n.I18nNotNull;
import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.validation.Valid;
import lombok.Data;

// TODO @jason：需要考虑，如果某个节点的配置不正确，需要有提示；具体怎么实现，可以讨论下；
@Schema(description = "管理后台 - 仿钉钉流程设计模型的新增/修改 Request VO")
@Data
public class BpmSimpleModelUpdateReqVO {

    @Schema(description = "流程模型编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @I18nNotEmpty(i18nKey = "bpm.modelNode.back.id.notEmpty", message = "流程模型编号不能为空")
    private String id; // 对应 Flowable act_re_model 表 ID_ 字段

    @Schema(description = "仿钉钉流程设计模型对象", requiredMode = Schema.RequiredMode.REQUIRED)
    @I18nNotNull(i18nKey = "bpm.modelNode.back.simpleModel.notNull", message = "仿钉钉流程设计模型对象不能为空")
    @Valid
    private BpmSimpleModelNodeVO simpleModel;

}
