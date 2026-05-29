package com.lz.module.infra.controller.admin.db.vo;

import com.lz.framework.common.validation.i18n.I18nNotNull;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

@Schema(description = "管理后台 - 数据源配置创建/修改 Request VO")
@Data
public class DataSourceConfigSaveReqVO {

    @Schema(description = "主键编号", example = "1024")
    private Long id;

    @Schema(description = "数据源名称", requiredMode = Schema.RequiredMode.REQUIRED, example = "test")
    @I18nNotNull(i18nKey = "infra.dataSourceConfig.back.name.notNull", message = "连接名不能为空")
    private String name;

    @Schema(description = "数据源连接", requiredMode = Schema.RequiredMode.REQUIRED, example = "jdbc:mysql://127.0.0.1:3306/litchi")
    @I18nNotNull(i18nKey = "infra.dataSourceConfig.back.url.notNull", message = "数据源连接不能为空")
    private String url;

    @Schema(description = "用户名", requiredMode = Schema.RequiredMode.REQUIRED, example = "root")
    @I18nNotNull(i18nKey = "infra.dataSourceConfig.back.username.notNull", message = "用户名不能为空")
    private String username;

    @Schema(description = "密码", requiredMode = Schema.RequiredMode.REQUIRED, example = "123456")
    @I18nNotNull(i18nKey = "infra.dataSourceConfig.back.password.notNull", message = "密码不能为空")
    private String password;

}
