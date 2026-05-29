package com.lz.module.erp.controller.admin.finance.vo.account;

import com.lz.framework.common.enums.CommonStatusEnum;
import com.lz.framework.common.validation.InEnum;
import com.lz.framework.common.validation.i18n.I18nNotEmpty;
import com.lz.framework.common.validation.i18n.I18nNotNull;
import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.validation.Valid;
import lombok.Data;

import java.util.List;

@Schema(description = "管理后台 - ERP 结算账户新增/修改 Request VO")
@Data
public class ErpAccountSaveReqVO {

    @Schema(description = "结算账户编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "28684")
    private Long id;

    @Schema(description = "账户名称", requiredMode = Schema.RequiredMode.REQUIRED, example = "张三")
    @I18nNotEmpty(i18nKey = "erp.account.back.name.notEmpty", message = "账户名称不能为空")
    private String name;

    @Schema(description = "账户编码", example = "A88")
    private String no;

    @Schema(description = "备注", example = "随便")
    private String remark;

    @Schema(description = "开启状态", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @I18nNotNull(i18nKey = "erp.account.back.status.notNull", message = "开启状态不能为空")
    @InEnum(value = CommonStatusEnum.class)
    private Integer status;

    @Schema(description = "排序", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @I18nNotNull(i18nKey = "erp.account.back.sort.notNull", message = "排序不能为空")
    private Integer sort;

}