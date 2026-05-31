package com.lz.module.infra.controller.admin.i18n.vo.i8nKey;

import com.lz.framework.excel.core.annotations.ExcelColumnSelect;
import com.lz.framework.excel.core.annotations.ExcelI18n;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.*;

import java.time.LocalDateTime;
import com.alibaba.excel.annotation.*;
import com.lz.framework.excel.core.convert.DictConvert;
import com.lz.module.infra.enums.DictTypeConstants;

@Schema(description = "管理后台 - 国际化键名 Response VO")
@Data
@ExcelIgnoreUnannotated
public class I18nKeyRespVO {

    @Schema(description = "编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "985")
    @ExcelProperty("编号")
    @ExcelI18n(i18nKey = "infra.i18nKey.field.id")
    private Long id;

    @Schema(description = "名称", requiredMode = Schema.RequiredMode.REQUIRED, example = "李四")
    @ExcelProperty("名称")
    @ExcelI18n(i18nKey = "infra.i18nKey.field.messageName")
    private String messageName;

    @Schema(description = "键", requiredMode = Schema.RequiredMode.REQUIRED)
    @ExcelProperty("键")
    @ExcelI18n(i18nKey = "infra.i18nKey.field.messageKey")
    private String messageKey;

    @Schema(description = "是否内置", requiredMode = Schema.RequiredMode.REQUIRED)
    @ExcelProperty(value = "是否内置", converter = DictConvert.class)
    @ExcelColumnSelect(dictType = DictTypeConstants.I18N_KEY_IS_SYSTEM, i18n = true)
    @ExcelI18n(i18nKey = "infra.i18nKey.field.isSystem")
    private Integer isSystem;

    @Schema(description = "模块", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @ExcelProperty(value = "模块", converter = DictConvert.class)
    @ExcelColumnSelect(dictType = DictTypeConstants.USER_TYPE, i18n = true)
    @ExcelI18n(i18nKey = "infra.i18nKey.field.moduleType")
    private String moduleType;

    @Schema(description = "使用类型", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @ExcelProperty(value = "使用类型", converter = DictConvert.class)
    @ExcelColumnSelect(dictType = DictTypeConstants.I18N_KEY_USE_TYPE, i18n = true)
    @ExcelI18n(i18nKey = "infra.i18nKey.field.useType")
    private Integer useType;

    @Schema(description = "显示顺序")
    @ExcelProperty("显示顺序")
    @ExcelI18n(i18nKey = "infra.i18nKey.field.orderNum")
    private Integer orderNum;

    @Schema(description = "备注", example = "你说的对")
    @ExcelProperty("备注")
    @ExcelI18n(i18nKey = "infra.i18nKey.field.remark")
    private String remark;

    @Schema(description = "创建时间", requiredMode = Schema.RequiredMode.REQUIRED)
    @ExcelProperty("创建时间")
    @ExcelI18n(i18nKey = "infra.i18nKey.field.createTime")
    private LocalDateTime createTime;

}
