package com.lz.module.system.controller.admin.dict.vo.type;

import com.lz.framework.common.validation.i18n.I18nLength;
import com.lz.framework.common.validation.i18n.I18nNotBlank;
import com.lz.framework.common.validation.i18n.I18nNotNull;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

@Schema(description = "管理后台 - 字典类型创建/修改 Request VO")
@Data
public class DictTypeSaveReqVO {

    @Schema(description = "字典类型编号", example = "1024")
    private Long id;

    @Schema(description = "字典名称", requiredMode = Schema.RequiredMode.REQUIRED, example = "性别")
    @I18nNotBlank(i18nKey = "system.dictType.back.name.notBlank", message = "字典名称不能为空")
    @I18nLength(i18nKey = "system.dictType.back.name.length", max = 100, message = "字典类型名称长度不能超过100个字符")
    private String name;

    @Schema(description = "字典类型", requiredMode = Schema.RequiredMode.REQUIRED, example = "sys_common_sex")
    @I18nNotNull(i18nKey = "system.dictType.back.type.notNull", message = "字典类型不能为空")
    @I18nLength(i18nKey = "system.dictType.back.type.length", max = 100, message = "字典类型类型长度不能超过 100 个字符")
    private String type;

    @Schema(description = "状态，参见 CommonStatusEnum 枚举类", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @I18nNotNull(i18nKey = "system.dictType.back.status.notNull", message = "状态不能为空")
    private Integer status;

    @Schema(description = "备注", example = "快乐的备注")
    private String remark;

}
