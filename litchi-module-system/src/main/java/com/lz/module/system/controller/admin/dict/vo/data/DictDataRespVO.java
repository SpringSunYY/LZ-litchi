package com.lz.module.system.controller.admin.dict.vo.data;

import com.lz.framework.excel.core.convert.DictConvert;
import com.lz.module.system.enums.DictTypeConstants;
import com.alibaba.excel.annotation.ExcelIgnoreUnannotated;
import com.alibaba.excel.annotation.ExcelProperty;
import com.lz.framework.excel.core.annotations.ExcelColumnSelect;
import com.lz.framework.excel.core.annotations.ExcelI18n;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.time.LocalDateTime;

@Schema(description = "管理后台 - 字典数据信息 Response VO")
@Data
@ExcelIgnoreUnannotated
public class DictDataRespVO {

    @Schema(description = "字典数据编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "1024")
    @ExcelProperty("字典编码")
    @ExcelI18n(i18nKey = "system.dictData.field.id")
    private Long id;

    @Schema(description = "显示顺序", requiredMode = Schema.RequiredMode.REQUIRED, example = "1024")
    @ExcelProperty("字典排序")
    @ExcelI18n(i18nKey = "system.dictData.field.sort")
    private Integer sort;

    @Schema(description = "字典标签", requiredMode = Schema.RequiredMode.REQUIRED, example = "荔枝")
    @ExcelProperty("字典标签")
    @ExcelI18n(i18nKey = "system.dictData.field.label")
    private String label;

    /**
     * 国际化
     */
    @Schema(description = "国际化")
    @ExcelProperty("国际化")
    @ExcelI18n(i18nKey = "system.dictData.field.i18n")
    private String i18n;

    @Schema(description = "字典值", requiredMode = Schema.RequiredMode.REQUIRED, example = "iocoder")
    @ExcelProperty("字典键值")
    @ExcelI18n(i18nKey = "system.dictData.field.value")
    private String value;

    @Schema(description = "字典类型", requiredMode = Schema.RequiredMode.REQUIRED, example = "sys_common_sex")
    @ExcelProperty("字典类型")
    @ExcelI18n(i18nKey = "system.dictData.field.dictType")
    private String dictType;

    @Schema(description = "状态,见 CommonStatusEnum 枚举", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @ExcelProperty(value = "状态", converter = DictConvert.class)
    @ExcelColumnSelect(dictType = DictTypeConstants.COMMON_STATUS, i18n = true)
    @ExcelI18n(i18nKey = "system.dictData.field.status")
    private Integer status;

    @Schema(description = "颜色类型,default、primary、success、info、warning、danger", example = "default")
    @ExcelProperty("颜色类型")
    @ExcelI18n(i18nKey = "system.dictData.field.colorType")
    private String colorType;

    @Schema(description = "css 样式", example = "btn-visible")
    @ExcelProperty("css样式")
    @ExcelI18n(i18nKey = "system.dictData.field.cssClass")
    private String cssClass;

    @Schema(description = "备注", example = "我是一个角色")
    @ExcelProperty("备注")
    @ExcelI18n(i18nKey = "system.dictData.field.remark")
    private String remark;

    @Schema(description = "创建时间", requiredMode = Schema.RequiredMode.REQUIRED, example = "时间戳格式")
    private LocalDateTime createTime;

}
