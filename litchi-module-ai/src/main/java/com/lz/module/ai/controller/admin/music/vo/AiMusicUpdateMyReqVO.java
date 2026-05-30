package com.lz.module.ai.controller.admin.music.vo;

import com.lz.framework.common.validation.i18n.I18nNotNull;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

@Schema(description = "管理后台 - AI 修改我的音乐 Request VO")
@Data
public class AiMusicUpdateMyReqVO {

    @Schema(description = "编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "15583")
    @I18nNotNull(i18nKey = "ai.musicUpdateMy.back.id.notNull", message = "编号不能为空")
    private Long id;

    @Schema(description = "音乐名称", example = "夜空中最亮的星")
    private String title;

}
