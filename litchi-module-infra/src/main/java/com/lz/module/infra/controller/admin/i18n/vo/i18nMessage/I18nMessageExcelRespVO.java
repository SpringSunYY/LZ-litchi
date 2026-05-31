package com.lz.module.infra.controller.admin.i18n.vo.i18nMessage;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Builder;
import lombok.Data;

/**
 * 国际化信息 Excel Response VO
 *
 * @author 荔枝软件
 */
@Schema(description = "管理后台 - 国际化信息Excel Response VO")
@Data
@Builder
public class I18nMessageExcelRespVO {

    /**
     * 导入/导出结果信息
     */
    @Schema(description = "信息", requiredMode = Schema.RequiredMode.REQUIRED)
    private String message;

}
