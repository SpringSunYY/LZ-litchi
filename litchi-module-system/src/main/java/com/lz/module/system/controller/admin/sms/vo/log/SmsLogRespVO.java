package com.lz.module.system.controller.admin.sms.vo.log;

import com.lz.framework.excel.core.annotations.ExcelColumnSelect;
import com.lz.framework.excel.core.annotations.ExcelI18n;
import com.lz.framework.excel.core.convert.DictConvert;
import com.lz.framework.excel.core.convert.JsonConvert;
import com.lz.module.system.enums.DictTypeConstants;
import com.alibaba.excel.annotation.ExcelIgnoreUnannotated;
import com.alibaba.excel.annotation.ExcelProperty;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.time.LocalDateTime;
import java.util.Map;

@Schema(description = "管理后台 - 短信日志 Response VO")
@Data
@ExcelIgnoreUnannotated
public class SmsLogRespVO {

    @Schema(description = "编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "1024")
    @ExcelProperty("编号")
    @ExcelI18n(i18nKey = "system.smsLog.field.id")
    private Long id;

    @Schema(description = "短信渠道编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "10")
    @ExcelProperty("短信渠道编号")
    @ExcelI18n(i18nKey = "system.smsLog.field.channelId")
    private Long channelId;

    @Schema(description = "短信渠道编码", requiredMode = Schema.RequiredMode.REQUIRED, example = "ALIYUN")
    @ExcelProperty(value = "短信渠道编码", converter = DictConvert.class)
    @ExcelColumnSelect(dictType = DictTypeConstants.SMS_CHANNEL_CODE, i18n = true)
    @ExcelI18n(i18nKey = "system.smsLog.field.channelCode")
    private String channelCode;

    @Schema(description = "模板编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "20")
    @ExcelProperty("模板编号")
    @ExcelI18n(i18nKey = "system.smsLog.field.templateId")
    private Long templateId;

    @Schema(description = "模板编码", requiredMode = Schema.RequiredMode.REQUIRED, example = "test-01")
    @ExcelProperty("模板编码")
    @ExcelI18n(i18nKey = "system.smsLog.field.templateCode")
    private String templateCode;

    @Schema(description = "短信类型", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @ExcelProperty(value = "短信类型", converter = DictConvert.class)
    @ExcelColumnSelect(dictType = DictTypeConstants.SMS_TEMPLATE_TYPE, i18n = true)
    @ExcelI18n(i18nKey = "system.smsLog.field.templateType")
    private Integer templateType;

    @Schema(description = "短信内容", requiredMode = Schema.RequiredMode.REQUIRED, example = "你好，你的验证码是 1024")
    @ExcelProperty("短信内容")
    @ExcelI18n(i18nKey = "system.smsLog.field.templateContent")
    private String templateContent;

    @Schema(description = "短信参数", requiredMode = Schema.RequiredMode.REQUIRED, example = "name,code")
    @ExcelProperty(value = "短信参数", converter = JsonConvert.class)
    @ExcelI18n(i18nKey = "system.smsLog.field.templateParams")
    private Map<String, Object> templateParams;

    @Schema(description = "短信 API 的模板编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "SMS_207945135")
    @ExcelProperty("短信 API 的模板编号")
    @ExcelI18n(i18nKey = "system.smsLog.field.apiTemplateId")
    private String apiTemplateId;

    @Schema(description = "手机号", requiredMode = Schema.RequiredMode.REQUIRED, example = "15601691300")
    @ExcelProperty("手机号")
    @ExcelI18n(i18nKey = "system.smsLog.field.mobile")
    private String mobile;

    @Schema(description = "用户编号", example = "10")
    @ExcelProperty("用户编号")
    @ExcelI18n(i18nKey = "system.smsLog.field.userId")
    private Long userId;

    @Schema(description = "用户类型", example = "1")
    @ExcelProperty(value = "用户类型", converter = DictConvert.class)
    @ExcelColumnSelect(dictType = DictTypeConstants.USER_TYPE, i18n = true)
    @ExcelI18n(i18nKey = "system.smsLog.field.userType")
    private Integer userType;

    @Schema(description = "发送状态", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @ExcelProperty(value = "发送状态", converter = DictConvert.class)
    @ExcelColumnSelect(dictType = DictTypeConstants.SMS_SEND_STATUS, i18n = true)
    @ExcelI18n(i18nKey = "system.smsLog.field.sendStatus")
    private Integer sendStatus;

    @Schema(description = "发送时间")
    @ExcelProperty("发送时间")
    @ExcelI18n(i18nKey = "system.smsLog.field.sendTime")
    private LocalDateTime sendTime;

    @Schema(description = "短信 API 发送结果的编码", example = "SUCCESS")
    @ExcelProperty("短信 API 发送结果的编码")
    @ExcelI18n(i18nKey = "system.smsLog.field.apiSendCode")
    private String apiSendCode;

    @Schema(description = "短信 API 发送失败的提示", example = "成功")
    @ExcelProperty("短信 API 发送失败的提示")
    @ExcelI18n(i18nKey = "system.smsLog.field.apiSendMsg")
    private String apiSendMsg;

    @Schema(description = "短信 API 发送返回的唯一请求 ID", example = "3837C6D3-B96F-428C-BBB2-86135D4B5B99")
    @ExcelProperty("短信 API 发送返回的唯一请求 ID")
    @ExcelI18n(i18nKey = "system.smsLog.field.apiRequestId")
    private String apiRequestId;

    @Schema(description = "短信 API 发送返回的序号", example = "62923244790")
    @ExcelProperty("短信 API 发送返回的序号")
    @ExcelI18n(i18nKey = "system.smsLog.field.apiSerialNo")
    private String apiSerialNo;

    @Schema(description = "接收状态", requiredMode = Schema.RequiredMode.REQUIRED, example = "0")
    @ExcelProperty(value = "接收状态", converter = DictConvert.class)
    @ExcelColumnSelect(dictType = DictTypeConstants.SMS_RECEIVE_STATUS, i18n = true)
    @ExcelI18n(i18nKey = "system.smsLog.field.receiveStatus")
    private Integer receiveStatus;

    @Schema(description = "接收时间")
    @ExcelProperty("接收时间")
    @ExcelI18n(i18nKey = "system.smsLog.field.receiveTime")
    private LocalDateTime receiveTime;

    @Schema(description = "API 接收结果的编码", example = "DELIVRD")
    @ExcelProperty("API 接收结果的编码")
    @ExcelI18n(i18nKey = "system.smsLog.field.apiReceiveCode")
    private String apiReceiveCode;

    @Schema(description = "API 接收结果的说明", example = "用户接收成功")
    @ExcelProperty("API 接收结果的说明")
    @ExcelI18n(i18nKey = "system.smsLog.field.apiReceiveMsg")
    private String apiReceiveMsg;

    @Schema(description = "创建时间", requiredMode = Schema.RequiredMode.REQUIRED)
    @ExcelProperty("创建时间")
    @ExcelI18n(i18nKey = "system.smsLog.field.createTime")
    private LocalDateTime createTime;

}
