package com.lz.module.system.controller.admin.notify.vo.template;

import com.lz.framework.common.validation.i18n.I18nNotEmpty;
import com.lz.framework.common.validation.i18n.I18nNotNull;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;
import lombok.*;

import java.util.Map;

@Schema(description = "管理后台 - 站内信模板的发送 Request VO")
@Data
public class NotifyTemplateSendReqVO {

    @Schema(description = "用户id", requiredMode = Schema.RequiredMode.REQUIRED, example = "01")
    @I18nNotNull(i18nKey = "system.notifyTemplate.back.userId.notNull", message = "用户id不能为空")
    private Long userId;

    @Schema(description = "用户类型", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @I18nNotNull(i18nKey = "system.notifyTemplate.back.userType.notNull", message = "用户类型不能为空")
    private Integer userType;

    @Schema(description = "模板编码", requiredMode = Schema.RequiredMode.REQUIRED, example = "01")
    @I18nNotEmpty(i18nKey = "system.notifyTemplate.back.templateCode.notBlank", message = "模板编码不能为空")
    private String templateCode;

    @Schema(description = "模板参数")
    private Map<String, Object> templateParams;

}
