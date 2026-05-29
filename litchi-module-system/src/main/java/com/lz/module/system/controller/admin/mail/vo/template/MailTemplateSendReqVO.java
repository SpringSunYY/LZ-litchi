package com.lz.module.system.controller.admin.mail.vo.template;

import com.lz.framework.common.validation.i18n.I18nEmail;
import com.lz.framework.common.validation.i18n.I18nNotEmpty;
import com.lz.framework.common.validation.i18n.I18nNotNull;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;
import java.util.Map;

@Schema(description = "管理后台 - 邮件发送 Req VO")
@Data
public class MailTemplateSendReqVO {

    @Schema(description = "接收邮箱", requiredMode = Schema.RequiredMode.REQUIRED, example = "7685413@qq.com")
    @I18nNotEmpty(i18nKey = "system.mailTemplate.back.mail.notEmpty", message = "接收邮箱不能为空")
    @I18nEmail(i18nKey = "system.mailTemplate.back.mail.email", message = "接收邮箱格式不正确")
    private String mail;

    @Schema(description = "模板编码", requiredMode = Schema.RequiredMode.REQUIRED, example = "test_01")
    @I18nNotNull(i18nKey = "system.mailTemplate.back.templateCode.notNull", message = "模板编码不能为空")
    private String templateCode;

    @Schema(description = "模板参数")
    private Map<String, Object> templateParams;

}
