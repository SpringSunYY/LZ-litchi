package com.lz.module.infra.controller.admin.vector.vo;

import com.lz.framework.common.validation.i18n.I18nMax;
import com.lz.framework.common.validation.i18n.I18nMin;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;
import org.springframework.web.multipart.MultipartFile;

/**
 * 管理后台 - 以图搜图 Request VO
 *
 * @Project: LZ-Order
 * @Author: YY
 * @CreateTime: 2026-07-05
 * @Version: 1.0
 */
@Schema(description = "管理后台 - 以图搜图 Request VO")
@Data
public class VectorImageSearchReqVO {

    @Schema(description = "Top K 返回条数", requiredMode = Schema.RequiredMode.REQUIRED, example = "10")
    @I18nMin(i18nKey = "infra.vectorImage.back.topK.min", value = 1, message = "topK 必须大于 0")
    @I18nMax(i18nKey = "infra.vectorImage.back.topK.max", value = 1000, message = "topK 不能超过 1000")
    private Integer topK = 10;

    @Schema(description = "上传文件", requiredMode = Schema.RequiredMode.REQUIRED)
    private MultipartFile file;

}
