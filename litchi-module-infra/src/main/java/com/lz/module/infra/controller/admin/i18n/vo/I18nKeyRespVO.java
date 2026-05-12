package com.lz.module.infra.controller.admin.i18n.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.*;

import java.time.LocalDateTime;
import com.alibaba.excel.annotation.*;
import com.lz.framework.excel.core.annotations.DictFormat;
import com.lz.framework.excel.core.convert.DictConvert;

@Schema(description = "管理后台 - 国际化键名 Response VO")
@Data
@ExcelIgnoreUnannotated
public class I18nKeyRespVO {

    @Schema(description = "编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "985")
    @ExcelProperty("编号")
    private Long id;

    @Schema(description = "名称", requiredMode = Schema.RequiredMode.REQUIRED, example = "李四")
    @ExcelProperty("名称")
    private String messageName;

    @Schema(description = "键", requiredMode = Schema.RequiredMode.REQUIRED)
    @ExcelProperty("键")
    private String messageKey;

    @Schema(description = "是否内置", requiredMode = Schema.RequiredMode.REQUIRED)
    @ExcelProperty(value = "是否内置", converter = DictConvert.class)
    @DictFormat("infra_i18n_key_is_system")
    private Integer isSystem;

    @Schema(description = "模块", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @ExcelProperty(value = "模块", converter = DictConvert.class)
    @DictFormat("system_module_type")
    private String moduleType;

    @Schema(description = "使用类型", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @ExcelProperty(value = "使用类型", converter = DictConvert.class)
    @DictFormat("infra_i18n_key_use_type")
    private Integer useType;

    @Schema(description = "显示顺序")
    @ExcelProperty("显示顺序")
    private Integer orderNum;

    @Schema(description = "备注", example = "你说的对")
    @ExcelProperty("备注")
    private String remark;

    @Schema(description = "创建时间", requiredMode = Schema.RequiredMode.REQUIRED)
    @ExcelProperty("创建时间")
    private LocalDateTime createTime;

}
