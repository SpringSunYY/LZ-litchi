package com.lz.module.infra.controller.admin.vector.vo;

import com.lz.framework.common.validation.i18n.I18nNotEmpty;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.util.List;

/**
 * 按 URL 列表索引图片的请求 VO。
 *
 * @Project: LZ-Order
 * @Author: YY
 * @CreateTime: 2026-07-05
 * @Version: 1.0
 */
@Schema(description = "管理后台 - 按 URL 批量索引图片 Request VO")
@Data
public class UploadUrlsReqVO {

    @Schema(description = "图片 URL 列表（http(s):// 或可访问的相对路径）", requiredMode = Schema.RequiredMode.REQUIRED)
    @I18nNotEmpty(i18nKey = "infra.vectorImage.back.urls.notEmpty", message = "URL 列表不能为空")
    private List<String> urls;
}