package com.lz.module.crm.controller.admin.customer.vo.customer;

import com.lz.framework.common.validation.i18n.I18nNotNull;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Builder;
import lombok.Data;
import org.springframework.web.multipart.MultipartFile;

@Schema(description = "管理后台 - 客户导入 Request VO")
@Data
@Builder
public class CrmCustomerImportReqVO {

    @Schema(description = "Excel 文件", requiredMode = Schema.RequiredMode.REQUIRED)
    @I18nNotNull(i18nKey = "crm.customer.back.file.notNull", message = "Excel 文件不能为空")
    private MultipartFile file;

    @Schema(description = "是否支持更新", requiredMode = Schema.RequiredMode.REQUIRED, example = "true")
    @I18nNotNull(i18nKey = "crm.customer.back.updateSupport.notNull", message = "是否支持更新不能为空")
    private Boolean updateSupport;

    @Schema(description = "负责人", example = "1")
    private Long ownerUserId; // 为 null 则客户进入公海

}
