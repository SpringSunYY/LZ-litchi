package com.lz.module.system.controller.admin.sms.vo.channel;

import com.lz.framework.common.validation.i18n.I18nNotNull;
import com.lz.framework.common.validation.i18n.I18nURL;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

@Schema(description = "管理后台 - 短信渠道创建/修改 Request VO")
@Data
public class SmsChannelSaveReqVO {

    @Schema(description = "编号", example = "1024")
    private Long id;

    @Schema(description = "短信签名", requiredMode = Schema.RequiredMode.REQUIRED, example = "荔枝源码")
    @I18nNotNull(i18nKey = "system.smsChannel.back.signature.notNull", message = "短信签名不能为空")
    private String signature;

    @Schema(description = "渠道编码，参见 SmsChannelEnum 枚举类", requiredMode = Schema.RequiredMode.REQUIRED, example = "YUN_PIAN")
    @I18nNotNull(i18nKey = "system.smsChannel.back.code.notNull", message = "渠道编码不能为空")
    private String code;

    @Schema(description = "启用状态", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @I18nNotNull(i18nKey = "system.smsChannel.back.status.notNull", message = "启用状态不能为空")
    private Integer status;

    @Schema(description = "备注", example = "好吃！")
    private String remark;

    @Schema(description = "短信 API 的账号", requiredMode = Schema.RequiredMode.REQUIRED, example = "litchi")
    @I18nNotNull(i18nKey = "system.smsChannel.back.apiKey.notNull", message = "短信 API 的账号不能为空")
    private String apiKey;

    @Schema(description = "短信 API 的密钥", example = "yuanma")
    private String apiSecret;

    @Schema(description = "短信发送回调 URL", example = "http://www.iocoder.cn")
    @I18nURL(i18nKey = "system.smsChannel.back.callbackUrl.url", message = "回调 URL 格式不正确")
    private String callbackUrl;

}
