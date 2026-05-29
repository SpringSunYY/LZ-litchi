package com.lz.module.system.controller.admin.social.vo.user;

import com.lz.module.system.enums.social.SocialTypeEnum;
import com.lz.framework.common.validation.InEnum;
import com.lz.framework.common.validation.i18n.I18nNotEmpty;
import com.lz.framework.common.validation.i18n.I18nNotNull;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Schema(description = "管理后台 - 社交绑定 Request VO，使用 code 授权码")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class SocialUserBindReqVO {

    @Schema(description = "社交平台的类型，参见 UserSocialTypeEnum 枚举值", requiredMode = Schema.RequiredMode.REQUIRED, example = "10")
    @InEnum(SocialTypeEnum.class)
    @I18nNotNull(i18nKey = "system.socialUserBind.back.type.notNull", message = "社交平台的类型不能为空")
    private Integer type;

    @Schema(description = "授权码", requiredMode = Schema.RequiredMode.REQUIRED, example = "1024")
    @I18nNotEmpty(i18nKey = "system.socialUserBind.back.code.notBlank", message = "授权码不能为空")
    private String code;

    @Schema(description = "state", requiredMode = Schema.RequiredMode.REQUIRED, example = "9b2ffbc1-7425-4155-9894-9d5c08541d62")
    @I18nNotEmpty(i18nKey = "system.socialUserBind.back.state.notBlank", message = "state 不能为空")
    private String state;

}
