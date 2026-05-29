package com.lz.module.system.controller.admin.sms.vo.channel;

import com.lz.framework.common.validation.i18n.I18nNotNull;
import com.lz.framework.common.validation.i18n.I18nURL;
import com.lz.framework.excel.core.annotations.ExcelI18n;
import com.lz.module.system.enums.DictTypeConstants;
import com.lz.framework.excel.core.convert.DictConvert;
import com.lz.framework.excel.core.annotations.ExcelColumnSelect;
import com.alibaba.excel.annotation.ExcelProperty;
import com.alibaba.excel.annotation.ExcelIgnoreUnannotated;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.time.LocalDateTime;

@Schema(description = "管理后台 - 短信渠道 Response VO")
@Data
@ExcelIgnoreUnannotated
public class SmsChannelRespVO {

    @Schema(description = "编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "1024")
    @ExcelProperty("编号")
    @ExcelI18n(i18nKey = "system.smsChannel.field.id")
    private Long id;

    @Schema(description = "短信签名", requiredMode = Schema.RequiredMode.REQUIRED, example = "荔枝源码")
    @ExcelProperty("短信签名")
    @ExcelI18n(i18nKey = "system.smsChannel.field.signature")
    private String signature;

    @Schema(description = "渠道编码，参见 SmsChannelEnum 枚举类", requiredMode = Schema.RequiredMode.REQUIRED, example = "YUN_PIAN")
    @ExcelProperty(value = "渠道编码", converter = DictConvert.class)
    @ExcelColumnSelect(dictType = DictTypeConstants.SMS_CHANNEL_CODE, i18n = true)
    @ExcelI18n(i18nKey = "system.smsChannel.field.code")
    private String code;

    @Schema(description = "启用状态", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @ExcelProperty(value = "启用状态", converter = DictConvert.class)
    @ExcelColumnSelect(dictType = DictTypeConstants.COMMON_STATUS, i18n = true)
    @ExcelI18n(i18nKey = "system.smsChannel.field.status")
    private Integer status;

    @Schema(description = "备注", example = "好吃！")
    @ExcelProperty("备注")
    @ExcelI18n(i18nKey = "system.smsChannel.field.remark")
    private String remark;

    @Schema(description = "短信 API 的账号", requiredMode = Schema.RequiredMode.REQUIRED, example = "litchi")
    @ExcelProperty("短信 API 的账号")
    @ExcelI18n(i18nKey = "system.smsChannel.field.apiKey")
    private String apiKey;

    @Schema(description = "短信 API 的密钥", example = "yuanma")
    @ExcelProperty("短信 API 的密钥")
    @ExcelI18n(i18nKey = "system.smsChannel.field.apiSecret")
    private String apiSecret;

    @Schema(description = "短信发送回调 URL", example = "https://www.iocoder.cn")
    @ExcelProperty("短信发送回调 URL")
    @ExcelI18n(i18nKey = "system.smsChannel.field.callbackUrl")
    private String callbackUrl;

    @Schema(description = "创建时间", requiredMode = Schema.RequiredMode.REQUIRED)
    @ExcelProperty("创建时间")
    @ExcelI18n(i18nKey = "system.smsChannel.field.createTime")
    private LocalDateTime createTime;

}
