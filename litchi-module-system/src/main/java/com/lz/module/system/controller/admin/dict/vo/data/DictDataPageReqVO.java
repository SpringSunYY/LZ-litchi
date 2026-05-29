package com.lz.module.system.controller.admin.dict.vo.data;

import com.lz.framework.common.enums.CommonStatusEnum;
import com.lz.framework.common.pojo.PageParam;
import com.lz.framework.common.validation.InEnum;
import com.lz.framework.common.validation.i18n.I18nLength;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Schema(description = "管理后台 - 字典类型分页列表 Request VO")
@Data
@EqualsAndHashCode(callSuper = true)
public class DictDataPageReqVO extends PageParam {

    @Schema(description = "字典标签", example = "荔枝")
    @I18nLength(i18nKey = "system.dictData.back.label.length", max = 100, message = "字典标签长度不能超过100个字符")
    private String label;

    @Schema(description = "字典类型，模糊匹配", example = "sys_common_sex")
    @I18nLength(i18nKey = "system.dictData.back.dictType.length", max = 100, message = "字典类型类型长度不能超过100个字符")
    private String dictType;

    @Schema(description = "展示状态，参见 CommonStatusEnum 枚举类", example = "1")
    @InEnum(value = CommonStatusEnum.class, message = "修改状态必须是 {value}")
    private Integer status;

}
