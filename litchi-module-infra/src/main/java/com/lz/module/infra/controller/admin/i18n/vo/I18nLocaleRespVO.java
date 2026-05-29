package com.lz.module.infra.controller.admin.i18n.vo;

import com.lz.framework.excel.core.annotations.ExcelColumnSelect;
import com.lz.framework.excel.core.annotations.ExcelI18n;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.*;

import java.time.LocalDateTime;
import com.alibaba.excel.annotation.*;
import com.lz.framework.excel.core.convert.DictConvert;
import com.lz.module.infra.enums.DictTypeConstants;

@Schema(description = "管理后台 - 国际化国家 Response VO")
@Data
@ExcelIgnoreUnannotated
public class I18nLocaleRespVO {

    @Schema(description = "编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "8807")
    @ExcelProperty("编号")
    @ExcelI18n(i18nKey = "infra.i18nLocale.field.id")
    private Long id;

    @Schema(description = "国家地区", requiredMode = Schema.RequiredMode.REQUIRED, example = "赵六")
    @ExcelProperty("国家地区")
    @ExcelI18n(i18nKey = "infra.i18nLocale.field.localeName")
    private String localeName;

    @Schema(description = "简称", requiredMode = Schema.RequiredMode.REQUIRED)
    @ExcelProperty("简称")
    @ExcelI18n(i18nKey = "infra.i18nLocale.field.locale")
    private String locale;

    @Schema(description = "显示顺序")
    @ExcelProperty("显示顺序")
    @ExcelI18n(i18nKey = "infra.i18nLocale.field.orderNum")
    private Integer orderNum;

    @Schema(description = "状态", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @ExcelProperty(value = "状态", converter = DictConvert.class)
    @ExcelColumnSelect(dictType = DictTypeConstants.I18N_LOCALE_STATUS, i18n = true)
    @ExcelI18n(i18nKey = "infra.i18nLocale.field.localeStatus")
    private Integer localeStatus;

    @Schema(description = "使用端", requiredMode = Schema.RequiredMode.REQUIRED, example = "2")
    @ExcelProperty(value = "使用端", converter = DictConvert.class)
    @ExcelColumnSelect(dictType = DictTypeConstants.I18N_LOCALE_TARGET, i18n = true)
    @ExcelI18n(i18nKey = "infra.i18nLocale.field.localeTarget")
    private Integer localeTarget;

    @Schema(description = "默认", requiredMode = Schema.RequiredMode.REQUIRED)
    @ExcelProperty(value = "默认", converter = DictConvert.class)
    @ExcelColumnSelect(dictType = DictTypeConstants.I18N_LOCALE_IS_DEFAULT, i18n = true)
    @ExcelI18n(i18nKey = "infra.i18nLocale.field.isDefault")
    private Integer isDefault;

    @Schema(description = "备注", example = "你猜")
    @ExcelProperty("备注")
    @ExcelI18n(i18nKey = "infra.i18nLocale.field.remark")
    private String remark;

    @Schema(description = "创建时间", requiredMode = Schema.RequiredMode.REQUIRED)
    @ExcelProperty("创建时间")
    @ExcelI18n(i18nKey = "infra.i18nLocale.field.createTime")
    private LocalDateTime createTime;

}
