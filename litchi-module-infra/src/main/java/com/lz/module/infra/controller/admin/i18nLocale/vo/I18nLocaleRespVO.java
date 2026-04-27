package com.lz.module.infra.controller.admin.i18nLocale.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.*;
import java.util.*;
import org.springframework.format.annotation.DateTimeFormat;
import java.time.LocalDateTime;
import com.alibaba.excel.annotation.*;
import com.lz.framework.excel.core.annotations.DictFormat;
import com.lz.framework.excel.core.convert.DictConvert;

@Schema(description = "管理后台 - 国际化国家 Response VO")
@Data
@ExcelIgnoreUnannotated
public class I18nLocaleRespVO {

    @Schema(description = "编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "8807")
    @ExcelProperty("编号")
    private Long id;

    @Schema(description = "国家地区", requiredMode = Schema.RequiredMode.REQUIRED, example = "赵六")
    @ExcelProperty("国家地区")
    private String localeName;

    @Schema(description = "简称", requiredMode = Schema.RequiredMode.REQUIRED)
    @ExcelProperty("简称")
    private String locale;

    @Schema(description = "显示顺序")
    @ExcelProperty("显示顺序")
    private Integer orderNum;

    @Schema(description = "状态", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @ExcelProperty(value = "状态", converter = DictConvert.class)
    @DictFormat("infra_i18n_locale_status") // TODO 代码优化：建议设置到对应的 DictTypeConstants 枚举类中
    private Integer localeStatus;

    @Schema(description = "类型", requiredMode = Schema.RequiredMode.REQUIRED, example = "2")
    @ExcelProperty(value = "类型", converter = DictConvert.class)
    @DictFormat("infra_i18n_locale_type") // TODO 代码优化：建议设置到对应的 DictTypeConstants 枚举类中
    private Integer localeType;

    @Schema(description = "默认", requiredMode = Schema.RequiredMode.REQUIRED)
    @ExcelProperty(value = "默认", converter = DictConvert.class)
    @DictFormat("infra_i18n_locale_is_default") // TODO 代码优化：建议设置到对应的 DictTypeConstants 枚举类中
    private Integer isDefault;

    @Schema(description = "备注", example = "你猜")
    @ExcelProperty("备注")
    private String remark;

    @Schema(description = "创建时间", requiredMode = Schema.RequiredMode.REQUIRED)
    @ExcelProperty("创建时间")
    private LocalDateTime createTime;

}