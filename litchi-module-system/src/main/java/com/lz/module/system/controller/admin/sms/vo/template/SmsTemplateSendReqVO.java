package com.lz.module.system.controller.admin.sms.vo.template;

import com.lz.framework.common.validation.Mobile;
import com.lz.framework.common.validation.i18n.I18nNotNull;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.util.Map;

@Schema(description = "管理后台 - 短信模板的发送 Request VO")
@Data
public class SmsTemplateSendReqVO {

    @Schema(description = "手机号", requiredMode = Schema.RequiredMode.REQUIRED, example = "15601691300")
    @Mobile
    private String mobile;

    @Schema(description = "模板编码", requiredMode = Schema.RequiredMode.REQUIRED, example = "test_01")
    @I18nNotNull(i18nKey = "system.smsTemplate.back.templateCode.notNull", message = "模板编码不能为空")
    private String templateCode;

    @Schema(description = "模板参数")
    private Map<String, Object> templateParams;

}
