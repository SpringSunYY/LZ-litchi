package com.lz.module.system.controller.admin.sms.vo.template;

import com.lz.framework.excel.core.annotations.ExcelColumnSelect;
import com.lz.framework.excel.core.annotations.ExcelI18n;
import com.lz.framework.excel.core.convert.DictConvert;
import com.lz.module.system.enums.DictTypeConstants;
import com.alibaba.excel.annotation.ExcelIgnoreUnannotated;
import com.alibaba.excel.annotation.ExcelProperty;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.time.LocalDateTime;
import java.util.List;

@Schema(description = "管理后台 - 短信模板 Response VO")
@Data
@ExcelIgnoreUnannotated
public class SmsTemplateRespVO {

    @Schema(description = "编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "1024")
    @ExcelProperty("编号")
    @ExcelI18n(i18nKey = "system.smsTemplate.field.id")
    private Long id;

    @Schema(description = "短信类型，参见 SmsTemplateTypeEnum 枚举类", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @ExcelProperty(value = "短信签名", converter = DictConvert.class)
    @ExcelColumnSelect(dictType = DictTypeConstants.SMS_TEMPLATE_TYPE, i18n = true)
    @ExcelI18n(i18nKey = "system.smsTemplate.field.type")
    private Integer type;

    @Schema(description = "开启状态，参见 CommonStatusEnum 枚举类", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @ExcelProperty(value = "开启状态", converter = DictConvert.class)
    @ExcelColumnSelect(dictType = DictTypeConstants.COMMON_STATUS, i18n = true)
    @ExcelI18n(i18nKey = "system.smsTemplate.field.status")
    private Integer status;

    @Schema(description = "模板编码", requiredMode = Schema.RequiredMode.REQUIRED, example = "test_01")
    @ExcelProperty("模板编码")
    @ExcelI18n(i18nKey = "system.smsTemplate.field.code")
    private String code;

    @Schema(description = "模板名称", requiredMode = Schema.RequiredMode.REQUIRED, example = "litchi")
    @ExcelProperty("模板名称")
    @ExcelI18n(i18nKey = "system.smsTemplate.field.name")
    private String name;

    @Schema(description = "模板内容", requiredMode = Schema.RequiredMode.REQUIRED, example = "你好，{name}。你长的太{like}啦！")
    @ExcelProperty("模板内容")
    @ExcelI18n(i18nKey = "system.smsTemplate.field.content")
    private String content;

    @Schema(description = "参数数组", example = "name,code")
    private List<String> params;

    @Schema(description = "备注", example = "哈哈哈")
    @ExcelProperty("备注")
    @ExcelI18n(i18nKey = "system.smsTemplate.field.remark")
    private String remark;

    @Schema(description = "短信 API 的模板编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "4383920")
    @ExcelProperty("短信 API 的模板编号")
    @ExcelI18n(i18nKey = "system.smsTemplate.field.apiTemplateId")
    private String apiTemplateId;

    @Schema(description = "短信渠道编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "10")
    @ExcelProperty("短信渠道编号")
    @ExcelI18n(i18nKey = "system.smsTemplate.field.channelId")
    private Long channelId;

    @Schema(description = "短信渠道编码", requiredMode = Schema.RequiredMode.REQUIRED, example = "ALIYUN")
    @ExcelProperty(value = "短信渠道编码", converter = DictConvert.class)
    @ExcelColumnSelect(dictType = DictTypeConstants.SMS_CHANNEL_CODE, i18n = true)
    @ExcelI18n(i18nKey = "system.smsTemplate.field.channelCode")
    private String channelCode;

    @Schema(description = "创建时间", requiredMode = Schema.RequiredMode.REQUIRED)
    @ExcelProperty("创建时间")
    @ExcelI18n(i18nKey = "system.smsTemplate.field.createTime")
    private LocalDateTime createTime;

}
