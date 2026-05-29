package com.lz.module.erp.controller.admin.finance.vo.account;

import com.lz.framework.excel.core.annotations.ExcelColumnSelect;
import com.lz.module.system.enums.DictTypeConstants;
import com.alibaba.excel.annotation.ExcelIgnoreUnannotated;
import com.alibaba.excel.annotation.ExcelProperty;
import com.lz.framework.excel.core.annotations.ExcelI18n;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.time.LocalDateTime;

@Schema(description = "管理后台 - ERP 结算账户 Response VO")
@Data
@ExcelIgnoreUnannotated
public class ErpAccountRespVO {

    @Schema(description = "结算账户编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "28684")
    @ExcelProperty("结算账户编号")
    @ExcelI18n(i18nKey = "erp.account.field.id")
    private Long id;

    @Schema(description = "账户名称", requiredMode = Schema.RequiredMode.REQUIRED, example = "张三")
    @ExcelProperty("账户名称")
    @ExcelI18n(i18nKey = "erp.account.field.name")
    private String name;

    @Schema(description = "账户编码", example = "A88")
    @ExcelProperty("账户编码")
    @ExcelI18n(i18nKey = "erp.account.field.no")
    private String no;

    @Schema(description = "备注", example = "随便")
    @ExcelProperty("备注")
    @ExcelI18n(i18nKey = "erp.account.field.remark")
    private String remark;

    @Schema(description = "开启状态", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @ExcelProperty("开启状态")
    @ExcelColumnSelect(dictType = DictTypeConstants.COMMON_STATUS, i18n = true)
    @ExcelI18n(i18nKey = "erp.account.field.status")
    private Integer status;

    @Schema(description = "排序", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @ExcelProperty("排序")
    @ExcelI18n(i18nKey = "erp.account.field.sort")
    private Integer sort;

    @Schema(description = "是否默认", example = "1")
    @ExcelProperty("是否默认")
    @ExcelI18n(i18nKey = "erp.account.field.defaultStatus")
    private Boolean defaultStatus;

    @Schema(description = "创建时间", requiredMode = Schema.RequiredMode.REQUIRED)
    @ExcelProperty("创建时间")
    @ExcelI18n(i18nKey = "erp.account.field.createTime")
    private LocalDateTime createTime;

}