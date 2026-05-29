package com.lz.module.system.controller.admin.notice.vo;

import com.lz.framework.common.validation.i18n.I18nLength;
import com.lz.framework.common.validation.i18n.I18nNotBlank;
import com.lz.framework.common.validation.i18n.I18nNotNull;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

@Schema(description = "管理后台 - 通知公告创建/修改 Request VO")
@Data
public class NoticeSaveReqVO {

    @Schema(description = "通知公告编号", example = "1024")
    private Long id;

    @Schema(description = "公告标题", requiredMode = Schema.RequiredMode.REQUIRED, example = "小博主")
    @I18nNotBlank(i18nKey = "system.notice.back.title.notBlank", message = "公告标题不能为空")
    @I18nLength(i18nKey = "system.notice.back.title.length", message = "公告标题不能超过50个字符", max = 50)
    private String title;

    @Schema(description = "公告类型", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @I18nNotNull(i18nKey = "system.notice.back.type.notNull", message = "公告类型不能为空")
    private Integer type;

    @Schema(description = "公告内容", requiredMode = Schema.RequiredMode.REQUIRED, example = "半生编码")
    private String content;

    @Schema(description = "附件", example = "https://www.iocoder.cn")
    private String appendixUrl;

    @Schema(description = "状态，参见 CommonStatusEnum 枚举类", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    private Integer status;

}
