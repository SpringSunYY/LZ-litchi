package com.lz.module.system.controller.admin.social.vo.user;

import com.lz.framework.common.validation.InEnum;
import com.lz.framework.common.validation.i18n.I18nNotEmpty;
import com.lz.framework.common.validation.i18n.I18nNotNull;
import com.lz.module.system.enums.social.SocialTypeEnum;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Schema(description = "管理后台 - 取消社交绑定 Request VO")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class SocialUserUnbindReqVO {

    @Schema(description = "社交平台的类型，参见 UserSocialTypeEnum 枚举值", requiredMode = Schema.RequiredMode.REQUIRED, example = "10")
    @InEnum(SocialTypeEnum.class)
    @I18nNotNull(i18nKey = "system.socialUserBind.back.type.notNull", message = "社交平台的类型不能为空")
    private Integer type;

    @Schema(description = "社交用户的 openid", requiredMode = Schema.RequiredMode.REQUIRED, example = "IPRmJ0wvBptiPIlGEZiPewGwiEiE")
    @I18nNotEmpty(i18nKey = "system.socialUserBind.back.openid.notBlank", message = "社交用户的 openid 不能为空")
    private String openid;

}
