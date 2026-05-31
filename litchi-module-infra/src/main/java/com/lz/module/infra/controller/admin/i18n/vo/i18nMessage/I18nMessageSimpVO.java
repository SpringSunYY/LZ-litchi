package com.lz.module.infra.controller.admin.i18n.vo.i18nMessage;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

@Schema(description = "管理后台 - 国际化信息分页 Request VO")
@Data
public class I18nMessageSimpVO {

    @Schema(description = "键")
    private String messageKey;

    @Schema(description = "简称")
    private String locale;

    @Schema(description = "内容")
    private String message;

}
