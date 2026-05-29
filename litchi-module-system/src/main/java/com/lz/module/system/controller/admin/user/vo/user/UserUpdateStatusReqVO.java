package com.lz.module.system.controller.admin.user.vo.user;

import com.lz.framework.common.enums.CommonStatusEnum;
import com.lz.framework.common.validation.InEnum;
import com.lz.framework.common.validation.i18n.I18nNotNull;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

@Schema(description = "管理后台 - 用户更新状态 Request VO")
@Data
public class UserUpdateStatusReqVO {

    @Schema(description = "用户编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "1024")
    @I18nNotNull(i18nKey = "system.user.back.id.notNull", message = "用户编号不能为空")
    private Long id;

    @Schema(description = "状态，见 CommonStatusEnum 枚举", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @I18nNotNull(i18nKey = "system.user.back.status.notNull", message = "状态不能为空")
    @InEnum(value = CommonStatusEnum.class, message = "修改状态必须是 {value}")
    private Integer status;

}
