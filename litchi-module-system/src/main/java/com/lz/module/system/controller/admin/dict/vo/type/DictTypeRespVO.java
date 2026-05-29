package com.lz.module.system.controller.admin.dict.vo.type;

import com.lz.framework.excel.core.convert.DictConvert;
import com.lz.module.system.enums.DictTypeConstants;
import com.alibaba.excel.annotation.ExcelIgnoreUnannotated;
import com.alibaba.excel.annotation.ExcelProperty;
import com.lz.framework.excel.core.annotations.ExcelColumnSelect;
import com.lz.framework.excel.core.annotations.ExcelI18n;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.time.LocalDateTime;

@Schema(description = "管理后台 - 字典类型信息 Response VO")
@Data
@ExcelIgnoreUnannotated
public class DictTypeRespVO {

    @Schema(description = "字典类型编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "1024")
    @ExcelProperty("字典主键")
    @ExcelI18n(i18nKey = "system.dictType.field.id")
    private Long id;

    @Schema(description = "字典名称", requiredMode = Schema.RequiredMode.REQUIRED, example = "性别")
    @ExcelProperty("字典名称")
    @ExcelI18n(i18nKey = "system.dictType.field.name")
    private String name;

    @Schema(description = "字典类型", requiredMode = Schema.RequiredMode.REQUIRED, example = "sys_common_sex")
    @ExcelProperty("字典类型")
    @ExcelI18n(i18nKey = "system.dictType.field.type")
    private String type;

    @Schema(description = "状态，参见 CommonStatusEnum 枚举类", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @ExcelProperty(value = "状态", converter = DictConvert.class)
    @ExcelColumnSelect(dictType = DictTypeConstants.COMMON_STATUS, i18n = true)
    @ExcelI18n(i18nKey = "system.dictType.field.status")
    private Integer status;

    @Schema(description = "备注", example = "快乐的备注")
    @ExcelProperty("备注")
    @ExcelI18n(i18nKey = "system.dictType.field.remark")
    private String remark;

    @Schema(description = "创建时间", requiredMode = Schema.RequiredMode.REQUIRED, example = "时间戳格式")
    private LocalDateTime createTime;

}
