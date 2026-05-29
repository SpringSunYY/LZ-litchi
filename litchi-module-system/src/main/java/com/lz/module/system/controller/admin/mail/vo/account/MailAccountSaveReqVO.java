package com.lz.module.system.controller.admin.mail.vo.account;

import com.lz.framework.common.validation.i18n.I18nEmail;
import com.lz.framework.common.validation.i18n.I18nNotNull;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

@Schema(description = "管理后台 - 邮箱账号创建/修改 Request VO")
@Data
public class MailAccountSaveReqVO {

    @Schema(description = "编号", example = "1024")
    private Long id;

    @Schema(description = "邮箱", requiredMode = Schema.RequiredMode.REQUIRED, example = "litchiyuanma@123.com")
    @I18nEmail(i18nKey = "system.mailAccount.back.mail.email", message = "邮箱格式不正确")
    private String mail;

    @Schema(description = "用户名", requiredMode = Schema.RequiredMode.REQUIRED, example = "litchi")
    @I18nNotNull(i18nKey = "system.mailAccount.back.username.notNull", message = "用户名不能为空")
    private String username;

    @Schema(description = "密码", requiredMode = Schema.RequiredMode.REQUIRED, example = "123456")
    @I18nNotNull(i18nKey = "system.mailAccount.back.password.notNull", message = "密码不能为空")
    private String password;

    @Schema(description = "SMTP 服务器域名", requiredMode = Schema.RequiredMode.REQUIRED, example = "www.iocoder.cn")
    @I18nNotNull(i18nKey = "system.mailAccount.back.host.notNull", message = "SMTP 服务器域名不能为空")
    private String host;

    @Schema(description = "SMTP 服务器端口", requiredMode = Schema.RequiredMode.REQUIRED, example = "80")
    @I18nNotNull(i18nKey = "system.mailAccount.back.port.notNull", message = "SMTP 服务器端口不能为空")
    private Integer port;

    @Schema(description = "是否开启 ssl", requiredMode = Schema.RequiredMode.REQUIRED, example = "true")
    @I18nNotNull(i18nKey = "system.mailAccount.back.sslEnable.notNull", message = "是否开启 ssl 不能为空")
    private Boolean sslEnable;

    @Schema(description = "是否开启 starttls", requiredMode = Schema.RequiredMode.REQUIRED, example = "true")
    @I18nNotNull(i18nKey = "system.mailAccount.back.starttlsEnable.notNull", message = "是否开启 starttls 不能为空")
    private Boolean starttlsEnable;

}
