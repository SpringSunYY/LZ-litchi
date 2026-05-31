package com.lz.module.infra.controller.admin.i18n.vo.i18nMessage;

import com.alibaba.excel.annotation.ExcelIgnoreUnannotated;
import com.alibaba.excel.annotation.ExcelProperty;
import com.lz.framework.excel.core.annotations.ExcelColumnSelect;
import com.lz.framework.excel.core.convert.DictConvert;
import com.lz.module.infra.enums.DictTypeConstants;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.time.LocalDateTime;

@Schema(description = "管理后台 - 国际化信息 Response VO")
@Data
@ExcelIgnoreUnannotated
public class I18nMessageRespVO {

    @Schema(description = "主键", requiredMode = Schema.RequiredMode.REQUIRED, example = "22458")
    private Long id;

    @Schema(description = "名称", requiredMode = Schema.RequiredMode.REQUIRED, example = "赵六")
    private String messageName;

    @Schema(description = "键", requiredMode = Schema.RequiredMode.REQUIRED)
    private String messageKey;

    @Schema(description = "简称", requiredMode = Schema.RequiredMode.REQUIRED)
    private String locale;

    @Schema(description = "使用端", requiredMode = Schema.RequiredMode.REQUIRED)
    @ExcelProperty(value = "使用端", converter = DictConvert.class)
    @ExcelColumnSelect(dictType = DictTypeConstants.I18N_LOCALE_TARGET, i18n = true)
    private Integer localeTarget;

    @Schema(description = "是否内置", requiredMode = Schema.RequiredMode.REQUIRED)
    private Integer isSystem;

    @Schema(description = "模块", requiredMode = Schema.RequiredMode.REQUIRED, example = "2")
    private String moduleType;

    @Schema(description = "使用类型", requiredMode = Schema.RequiredMode.REQUIRED, example = "2")
    private Integer useType;

    @Schema(description = "消息", requiredMode = Schema.RequiredMode.REQUIRED)
    private String message;

    @Schema(description = "备注", example = "你说的对")
    private String remark;

    @Schema(description = "创建时间", requiredMode = Schema.RequiredMode.REQUIRED)
    private LocalDateTime createTime;

}
