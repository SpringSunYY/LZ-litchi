package com.lz.module.infra.controller.admin.codegen.vo;

import com.lz.module.infra.controller.admin.codegen.vo.column.CodegenColumnSaveReqVO;
import com.lz.module.infra.controller.admin.codegen.vo.table.CodegenTableSaveReqVO;
import io.swagger.v3.oas.annotations.media.Schema;
import com.lz.framework.common.validation.i18n.I18nNotNull;
import jakarta.validation.Valid;
import lombok.Data;

import java.util.List;

@Schema(description = "管理后台 - 代码生成表和字段的修改 Request VO")
@Data
public class CodegenUpdateReqVO {

    @Valid
    @I18nNotNull(i18nKey = "infra.codegenTable.back.table.notNull", message = "表定义不能为空")
    private CodegenTableSaveReqVO table;

    @Valid
    @I18nNotNull(i18nKey = "infra.codegenColumn.back.columns.notNull", message = "字段定义不能为空")
    private List<CodegenColumnSaveReqVO> columns;

}
