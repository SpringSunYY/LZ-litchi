package com.lz.module.infra.controller.admin.i18n.vo.i18nMessage;
import com.alibaba.excel.annotation.ExcelProperty;
import com.lz.framework.excel.core.annotations.ExcelColumnSelect;
import com.lz.framework.excel.core.annotations.ExcelI18n;
import com.lz.framework.excel.core.convert.DictConvert;
import com.lz.module.infra.enums.DictTypeConstants;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;
import org.springframework.format.annotation.DateTimeFormat;

/**
 * 国际化信息 Excel VO
 *
 * @author 荔枝软件
 */
@Schema(description = "管理后台 - 国际化信息Excel VO")
@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Accessors(chain = false)
public class I18nMessageExcelVO {

    /**
    * 名称
    */
    @ExcelProperty("名称")
    @ExcelI18n(i18nKey = "infra.i18nMessage.field.messageName")
    private String messageName;

    /**
    * 键
    */
    @ExcelProperty("键")
    @ExcelI18n(i18nKey = "infra.i18nMessage.field.messageKey")
    private String messageKey;

    /**
    * 简称
    */
    @ExcelProperty("简称")
    @ExcelI18n(i18nKey = "infra.i18nMessage.field.locale")
    private String locale;

    /**
    * 使用端
    */
    @ExcelProperty(value = "使用端", converter = DictConvert.class)
    @ExcelI18n(i18nKey = "infra.i18nMessage.field.target")
    @ExcelColumnSelect(dictType = DictTypeConstants.I18N_LOCALE_TARGET, i18n = true)
    private Integer target;

    /**
    * 是否内置
    */
    @ExcelProperty(value = "是否内置", converter = DictConvert.class)
    @ExcelColumnSelect(dictType = DictTypeConstants.I18N_KEY_IS_SYSTEM, i18n = true)
    @ExcelI18n(i18nKey = "infra.i18nMessage.field.isSystem")
    private Integer isSystem;

    /**
    * 模块
    */
    @ExcelProperty(value = "模块", converter = DictConvert.class)
    @ExcelColumnSelect(dictType = DictTypeConstants.SYSTEM_MODULE_TYPE, i18n = true)
    @ExcelI18n(i18nKey = "infra.i18nMessage.field.moduleType")
    private String moduleType;

    /**
    * 使用类型
    */
    @ExcelProperty(value = "使用类型", converter = DictConvert.class)
    @ExcelColumnSelect(dictType = DictTypeConstants.I18N_KEY_USE_TYPE, i18n = true)
    @ExcelI18n(i18nKey = "infra.i18nMessage.field.useType")
    private Integer useType;

    /**
    * 消息
    */
    @ExcelProperty("消息")
    @ExcelI18n(i18nKey = "infra.i18nMessage.field.message")
    private String message;

    /**
    * 备注
    */
    @ExcelProperty("备注")
    @ExcelI18n(i18nKey = "infra.i18nMessage.field.remark")
    private String remark;

}
