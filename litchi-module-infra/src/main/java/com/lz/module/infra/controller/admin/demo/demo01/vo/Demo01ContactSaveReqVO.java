package com.lz.module.infra.controller.admin.demo.demo01.vo;

import com.lz.framework.common.validation.InDict;
import com.lz.framework.common.validation.i18n.I18nNotBlank;
import com.lz.framework.common.validation.i18n.I18nNotEmpty;
import com.lz.framework.common.validation.i18n.I18nNotNull;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.time.LocalDateTime;

@Schema(description = "管理后台 - 示例联系人新增/修改 Request VO")
@Data
public class Demo01ContactSaveReqVO {

    @Schema(description = "编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "20881")
    private Long id;

    @Schema(description = "名字", requiredMode = Schema.RequiredMode.REQUIRED, example = "王五")
    @I18nNotBlank(i18nKey = "demo01.contact.name.notBlank", message = "名字不能为空")
    private String name;

    @Schema(description = "性别", requiredMode = Schema.RequiredMode.REQUIRED)
    @I18nNotNull(i18nKey = "demo01.contact.sex.notNull", message = "性别不能为空")
    @InDict(dictType = "system_user_sex")
    private Integer sex;

    @Schema(description = "出生年", requiredMode = Schema.RequiredMode.REQUIRED)
    @I18nNotNull(i18nKey = "de", message = "出生年不能为空")
    private LocalDateTime birthday;

    @Schema(description = "简介", requiredMode = Schema.RequiredMode.REQUIRED, example = "随便")
    @I18nNotEmpty(i18nKey = "demo01.contact.description.notEmpty", message = "简介不能为空")
    private String description;

    @Schema(description = "年龄")
    private Integer age;

    @Schema(description = "头像")
    private String avatar;

}
