package com.lz.module.system.controller.admin.mail.vo.template;

import com.lz.framework.common.enums.CommonStatusEnum;
import com.lz.framework.common.validation.InEnum;
import com.lz.framework.common.validation.i18n.I18nNotBlank;
import com.lz.framework.common.validation.i18n.I18nNotEmpty;
import com.lz.framework.common.validation.i18n.I18nNotNull;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

@Schema(description = "管理后台 - 邮件模版创建/修改 Request VO")
@Data
public class MailTemplateSaveReqVO {

    @Schema(description = "编号", example = "1024")
    private Long id;

    @Schema(description = "模版名称", requiredMode = Schema.RequiredMode.REQUIRED, example = "测试名字")
    @I18nNotNull(i18nKey = "system.mailTemplate.back.name.notNull", message = "模版名称不能为空")
    private String name;

    @Schema(description = "模版编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "test")
    @I18nNotNull(i18nKey = "system.mailTemplate.back.code.notNull", message = "模版编号不能为空")
    private String code;

    @Schema(description = "发送的邮箱账号编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @I18nNotNull(i18nKey = "system.mailTemplate.back.accountId.notNull", message = "发送的邮箱账号编号不能为空")
    private Long accountId;

    @Schema(description = "发送人名称", example = "芋头")
    private String nickname;

    @Schema(description = "标题", requiredMode = Schema.RequiredMode.REQUIRED, example = "注册成功")
    @I18nNotEmpty(i18nKey = "system.mailTemplate.back.title.notEmpty", message = "标题不能为空")
    private String title;

    @Schema(description = "内容", requiredMode = Schema.RequiredMode.REQUIRED, example = "你好，注册成功啦")
    @I18nNotEmpty(i18nKey = "system.mailTemplate.back.content.notEmpty", message = "内容不能为空")
    private String content;

    @Schema(description = "状态，参见 CommonStatusEnum 枚举", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @I18nNotNull(i18nKey = "system.mailTemplate.back.status.notNull", message = "状态不能为空")
    @InEnum(CommonStatusEnum.class)
    private Integer status;

    @Schema(description = "备注", example = "奥特曼")
    private String remark;

}
