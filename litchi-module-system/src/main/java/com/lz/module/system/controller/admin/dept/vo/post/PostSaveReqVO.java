package com.lz.module.system.controller.admin.dept.vo.post;

import com.lz.framework.common.enums.CommonStatusEnum;
import com.lz.framework.common.validation.InEnum;
import com.lz.framework.common.validation.i18n.I18nLength;
import com.lz.framework.common.validation.i18n.I18nNotBlank;
import com.lz.framework.common.validation.i18n.I18nNotNull;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

@Schema(description = "管理后台 - 岗位创建/修改 Request VO")
@Data
public class PostSaveReqVO {

    @Schema(description = "岗位编号", example = "1024")
    private Long id;

    @Schema(description = "岗位名称", requiredMode = Schema.RequiredMode.REQUIRED, example = "小土豆")
    @I18nNotBlank(i18nKey = "system.post.back.name.notBlank", message = "岗位名称不能为空")
    @I18nLength(i18nKey = "system.post.back.name.length", max = 50, message = "岗位名称长度不能超过 50 个字符")
    private String name;

    @Schema(description = "岗位编码", requiredMode = Schema.RequiredMode.REQUIRED, example = "litchi")
    @I18nNotBlank(i18nKey = "system.post.back.code.notBlank", message = "岗位编码不能为空")
    @I18nLength(i18nKey = "system.post.back.code.length", max = 64, message = "岗位编码长度不能超过64个字符")
    private String code;

    @Schema(description = "显示顺序", requiredMode = Schema.RequiredMode.REQUIRED, example = "1024")
    @I18nNotNull(i18nKey = "system.post.back.sort.notNull", message = "显示顺序不能为空")
    private Integer sort;

    @Schema(description = "状态", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @InEnum(CommonStatusEnum.class)
    private Integer status;

    @Schema(description = "备注", example = "快乐的备注")
    private String remark;

}