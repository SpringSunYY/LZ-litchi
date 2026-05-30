package com.lz.module.bpm.controller.admin.definition.vo.category;

import com.lz.framework.common.enums.CommonStatusEnum;
import com.lz.framework.common.validation.InEnum;
import com.lz.framework.common.validation.i18n.I18nNotEmpty;
import com.lz.framework.common.validation.i18n.I18nNotNull;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

@Schema(description = "管理后台 - BPM 流程分类新增/修改 Request VO")
@Data
public class BpmCategorySaveReqVO {

    @Schema(description = "分类编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "3167")
    private Long id;

    @Schema(description = "分类名", requiredMode = Schema.RequiredMode.REQUIRED, example = "王五")
    @I18nNotEmpty(i18nKey = "bpm.category.back.name.notEmpty", message = "分类名不能为空")
    private String name;

    @Schema(description = "分类描述", example = "你猜")
    private String description;

    @Schema(description = "分类标志", requiredMode = Schema.RequiredMode.REQUIRED, example = "OA")
    @I18nNotEmpty(i18nKey = "bpm.category.back.code.notEmpty", message = "分类标志不能为空")
    private String code;

    @Schema(description = "分类状态", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @I18nNotNull(i18nKey = "bpm.category.back.status.notNull", message = "分类状态不能为空")
    @InEnum(CommonStatusEnum.class)
    private Integer status;

    @Schema(description = "分类排序", requiredMode = Schema.RequiredMode.REQUIRED)
    @I18nNotNull(i18nKey = "bpm.category.back.sort.notNull", message = "分类排序不能为空")
    private Integer sort;

}