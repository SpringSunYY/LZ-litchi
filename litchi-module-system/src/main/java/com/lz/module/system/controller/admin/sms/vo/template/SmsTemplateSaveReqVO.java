package com.lz.module.system.controller.admin.sms.vo.template;

import com.lz.framework.common.validation.i18n.I18nNotNull;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import jakarta.validation.constraints.NotNull;

@Schema(description = "管理后台 - 短信模板创建/修改 Request VO")
@Data
public class SmsTemplateSaveReqVO {

    @Schema(description = "编号", example = "1024")
    private Long id;

    @Schema(description = "短信类型，参见 SmsTemplateTypeEnum 枚举类", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @I18nNotNull(i18nKey = "system.smsTemplate.back.type.notNull", message = "短信类型不能为空")
    private Integer type;

    @Schema(description = "开启状态，参见 CommonStatusEnum 枚举类", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @I18nNotNull(i18nKey = "system.smsTemplate.back.status.notNull", message = "开启状态不能为空")
    private Integer status;

    @Schema(description = "模板编码", requiredMode = Schema.RequiredMode.REQUIRED, example = "test_01")
    @I18nNotNull(i18nKey = "system.smsTemplate.back.code.notNull", message = "模板编码不能为空")
    private String code;

    @Schema(description = "模板名称", requiredMode = Schema.RequiredMode.REQUIRED, example = "litchi")
    @I18nNotNull(i18nKey = "system.smsTemplate.back.name.notNull", message = "模板名称不能为空")
    private String name;

    @Schema(description = "模板内容", requiredMode = Schema.RequiredMode.REQUIRED, example = "你好，{name}。你长的太{like}啦！")
    @I18nNotNull(i18nKey = "system.smsTemplate.back.content.notNull", message = "模板内容不能为空")
    private String content;

    @Schema(description = "备注", example = "哈哈哈")
    private String remark;

    @Schema(description = "短信 API 的模板编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "4383920")
    @I18nNotNull(i18nKey = "system.smsTemplate.back.apiTemplateId.notNull", message = "短信 API 的模板编号不能为空")
    private String apiTemplateId;

    @Schema(description = "短信渠道编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "10")
    @I18nNotNull(i18nKey = "system.smsTemplate.back.channelId.notNull", message = "短信渠道编号不能为空")
    private Long channelId;

}
