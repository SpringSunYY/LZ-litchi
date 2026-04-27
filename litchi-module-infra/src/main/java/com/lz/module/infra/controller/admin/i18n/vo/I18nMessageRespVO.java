package com.lz.module.infra.controller.admin.i18n.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.*;

import java.time.LocalDateTime;
import com.alibaba.excel.annotation.*;
import com.lz.framework.excel.core.annotations.DictFormat;
import com.lz.framework.excel.core.convert.DictConvert;

@Schema(description = "管理后台 - 国际化信息 Response VO")
@Data
@ExcelIgnoreUnannotated
public class I18nMessageRespVO {

    @Schema(description = "主键", requiredMode = Schema.RequiredMode.REQUIRED, example = "22458")
    @ExcelProperty("主键")
    private Long id;

    @Schema(description = "名称", requiredMode = Schema.RequiredMode.REQUIRED, example = "赵六")
    @ExcelProperty("名称")
    private String messageName;

    @Schema(description = "键", requiredMode = Schema.RequiredMode.REQUIRED)
    @ExcelProperty("键")
    private String messageKey;

    @Schema(description = "简称", requiredMode = Schema.RequiredMode.REQUIRED)
    @ExcelProperty("简称")
    private String locale;

    @Schema(description = "使用端", requiredMode = Schema.RequiredMode.REQUIRED)
    @ExcelProperty(value = "使用端", converter = DictConvert.class)
    @DictFormat("infra_i18n_locale_target") // TODO 代码优化：建议设置到对应的 DictTypeConstants 枚举类中
    private Integer localeTarget;

    @Schema(description = "是否内置", requiredMode = Schema.RequiredMode.REQUIRED)
    @ExcelProperty(value = "是否内置", converter = DictConvert.class)
    @DictFormat("infra_i18n_key_is_system") // TODO 代码优化：建议设置到对应的 DictTypeConstants 枚举类中
    private Integer isSystem;

    @Schema(description = "模块", requiredMode = Schema.RequiredMode.REQUIRED, example = "2")
    @ExcelProperty(value = "模块", converter = DictConvert.class)
    @DictFormat("infra_i18n_key_module_type") // TODO 代码优化：建议设置到对应的 DictTypeConstants 枚举类中
    private Integer moduleType;

    @Schema(description = "使用类型", requiredMode = Schema.RequiredMode.REQUIRED, example = "2")
    @ExcelProperty(value = "使用类型", converter = DictConvert.class)
    @DictFormat("infra_i18n_key_use_type") // TODO 代码优化：建议设置到对应的 DictTypeConstants 枚举类中
    private Integer useType;

    @Schema(description = "消息", requiredMode = Schema.RequiredMode.REQUIRED)
    @ExcelProperty("消息")
    private String message;

    @Schema(description = "备注", example = "你说的对")
    @ExcelProperty("备注")
    private String remark;

    @Schema(description = "创建时间", requiredMode = Schema.RequiredMode.REQUIRED)
    @ExcelProperty("创建时间")
    private LocalDateTime createTime;

}