package com.lz.module.infra.controller.admin.config.vo;

import com.alibaba.excel.annotation.ExcelIgnoreUnannotated;
import com.alibaba.excel.annotation.ExcelProperty;
import com.lz.framework.excel.core.annotations.ExcelColumnSelect;
import com.lz.framework.excel.core.annotations.ExcelI18n;
import com.lz.module.infra.enums.DictTypeConstants;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.time.LocalDateTime;

@Schema(description = "管理后台 - 参数配置信息 Response VO")
@Data
@ExcelIgnoreUnannotated
public class ConfigRespVO {

    @Schema(description = "参数配置序号", requiredMode = Schema.RequiredMode.REQUIRED, example = "1024")
    @ExcelProperty("参数配置序号")
    @ExcelI18n(i18nKey = "infra.config.field.id")
    private Long id;

    @Schema(description = "参数分类", requiredMode = Schema.RequiredMode.REQUIRED, example = "biz")
    @ExcelProperty("参数分类")
    @ExcelI18n(i18nKey = "infra.config.field.category")
    private String category;

    @Schema(description = "参数名称", requiredMode = Schema.RequiredMode.REQUIRED, example = "数据库名")
    @ExcelProperty("参数名称")
    @ExcelI18n(i18nKey = "infra.config.field.name")
    private String name;

    @Schema(description = "参数键名", requiredMode = Schema.RequiredMode.REQUIRED, example = "yunai.db.username")
    @ExcelProperty("参数键名")
    @ExcelI18n(i18nKey = "infra.config.field.key")
    private String key;

    @Schema(description = "参数键值", requiredMode = Schema.RequiredMode.REQUIRED, example = "1024")
    @ExcelProperty("参数键值")
    @ExcelI18n(i18nKey = "infra.config.field.value")
    private String value;

    @Schema(description = "参数类型，参见 SysConfigTypeEnum 枚举", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @ExcelProperty("参数类型")
    @ExcelColumnSelect(dictType = DictTypeConstants.CONFIG_TYPE, i18n = true)
    @ExcelI18n(i18nKey = "infra.config.field.type")
    private Integer type;

    @Schema(description = "是否可见", requiredMode = Schema.RequiredMode.REQUIRED, example = "true")
    @ExcelProperty("是否可见")
    @ExcelColumnSelect(dictType = DictTypeConstants.BOOLEAN_STRING, i18n = true)
    @ExcelI18n(i18nKey = "infra.config.field.visible")
    private Boolean visible;

    @Schema(description = "备注", example = "备注一下很帅气！")
    @ExcelProperty("备注")
    @ExcelI18n(i18nKey = "infra.config.field.remark")
    private String remark;

    @Schema(description = "创建时间", requiredMode = Schema.RequiredMode.REQUIRED, example = "时间戳格式")
    @ExcelProperty("创建时间")
    @ExcelI18n(i18nKey = "infra.config.field.createTime")
    private LocalDateTime createTime;

}
