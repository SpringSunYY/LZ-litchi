package com.lz.module.bpm.controller.admin.definition.vo.form;

import com.lz.framework.common.validation.i18n.I18nNotEmpty;
import com.lz.framework.common.validation.i18n.I18nNotNull;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.time.LocalDateTime;
import java.util.List;

@Schema(description = "管理后台 - 动态表单 Response VO")
@Data
public class BpmFormRespVO {

    @Schema(description = "表单编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "1024")
    private Long id;

    @Schema(description = "表单名称", requiredMode = Schema.RequiredMode.REQUIRED, example = "荔枝")
    @I18nNotEmpty(i18nKey = "bpm.form.back.name.notEmpty", message = "表单名称不能为空")
    private String name;

    @Schema(description = "表单的配置-JSON 字符串", requiredMode = Schema.RequiredMode.REQUIRED)
    @I18nNotEmpty(i18nKey = "bpm.form.back.conf.notEmpty", message = "表单的配置不能为空")
    private String conf;

    @Schema(description = "表单项的数组-JSON 字符串的数组", requiredMode = Schema.RequiredMode.REQUIRED)
    @I18nNotEmpty(i18nKey = "bpm.form.back.fields.notEmpty", message = "表单项的数组不能为空")
    private List<String> fields;

    @Schema(description = "表单状态", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @I18nNotNull(i18nKey = "bpm.form.back.status.notNull", message = "表单状态不能为空")
    private Integer status; // 参见 CommonStatusEnum 枚举

    @Schema(description = "备注", example = "我是备注")
    private String remark;

    @Schema(description = "创建时间", requiredMode = Schema.RequiredMode.REQUIRED)
    private LocalDateTime createTime;

}
