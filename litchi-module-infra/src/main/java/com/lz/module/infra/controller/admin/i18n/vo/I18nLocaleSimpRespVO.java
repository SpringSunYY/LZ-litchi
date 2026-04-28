package com.lz.module.infra.controller.admin.i18n.vo;

import com.alibaba.excel.annotation.ExcelIgnoreUnannotated;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

@Data
@ExcelIgnoreUnannotated
public class I18nLocaleSimpRespVO {

    @Schema(description = "国家地区", requiredMode = Schema.RequiredMode.REQUIRED, example = "赵六")
    private String localeName;

    @Schema(description = "简称", requiredMode = Schema.RequiredMode.REQUIRED)
    private String locale;

    @Schema(description = "默认", requiredMode = Schema.RequiredMode.REQUIRED)
    private Integer isDefault;

}