package com.lz.module.system.controller.admin.dept.vo.post;

import com.alibaba.excel.annotation.ExcelProperty;
import com.lz.framework.excel.core.annotations.ExcelI18n;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

@Schema(description = "管理后台 - 岗位信息的精简 Response VO")
@Data
public class PostSimpleRespVO {

    @Schema(description = "岗位序号", requiredMode = Schema.RequiredMode.REQUIRED, example = "1024")
    @ExcelProperty("岗位序号")
    @ExcelI18n(i18nKey = "system.post.field.id")
    private Long id;

    @Schema(description = "岗位名称", requiredMode = Schema.RequiredMode.REQUIRED, example = "小土豆")
    @ExcelProperty("岗位名称")
    @ExcelI18n(i18nKey = "system.post.field.name")
    private String name;

}
