package com.lz.module.system.controller.admin.dict.vo.data;

import com.lz.framework.common.enums.CommonStatusEnum;
import com.lz.framework.common.validation.InEnum;
import com.lz.framework.common.validation.i18n.I18nLength;
import com.lz.framework.common.validation.i18n.I18nNotBlank;
import com.lz.framework.common.validation.i18n.I18nNotNull;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

@Schema(description = "管理后台 - 字典数据创建/修改 Request VO")
@Data
public class DictDataSaveReqVO {

    @Schema(description = "字典数据编号", example = "1024")
    private Long id;

    @Schema(description = "显示顺序", requiredMode = Schema.RequiredMode.REQUIRED, example = "1024")
    @I18nNotNull(i18nKey = "system.dictData.back.sort.notNull", message = "显示顺序不能为空")
    private Integer sort;

    @Schema(description = "字典标签", requiredMode = Schema.RequiredMode.REQUIRED, example = "荔枝")
    @I18nNotBlank(i18nKey = "system.dictData.back.label.notBlank", message = "字典标签不能为空")
    @I18nLength(i18nKey = "system.dictData.back.label.length", max = 100, message = "字典标签长度不能超过100个字符")
    private String label;

    /**
     * 国际化
     */
    @Schema(description = "国际化", example = "dict_label")
    @I18nLength(i18nKey = "system.dictData.back.i18n.length", max = 100, message = "国际化长度不能超过100个字符")
    private String i18n;

    @Schema(description = "字典值", requiredMode = Schema.RequiredMode.REQUIRED, example = "iocoder")
    @I18nNotBlank(i18nKey = "system.dictData.back.value.notBlank", message = "字典键值不能为空")
    @I18nLength(i18nKey = "system.dictData.back.value.length", max = 100, message = "字典键值长度不能超过100个字符")
    private String value;

    @Schema(description = "字典类型", requiredMode = Schema.RequiredMode.REQUIRED, example = "sys_common_sex")
    @I18nNotBlank(i18nKey = "system.dictData.back.dictType.notBlank", message = "字典类型不能为空")
    @I18nLength(i18nKey = "system.dictData.back.dictType.length", max = 100, message = "字典类型长度不能超过100个字符")
    private String dictType;

    @Schema(description = "状态,见 CommonStatusEnum 枚举", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @I18nNotNull(i18nKey = "system.dictData.back.status.notNull", message = "状态不能为空")
    @InEnum(value = CommonStatusEnum.class, message = "修改状态必须是 {value}")
    private Integer status;

    @Schema(description = "颜色类型,default、primary、success、info、warning、danger", example = "default")
    private String colorType;

    @Schema(description = "css 样式", example = "btn-visible")
    private String cssClass;

    @Schema(description = "备注", example = "我是一个角色")
    private String remark;

}
