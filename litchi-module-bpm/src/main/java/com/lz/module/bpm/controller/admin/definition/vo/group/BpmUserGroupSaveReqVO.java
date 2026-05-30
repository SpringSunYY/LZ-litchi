package com.lz.module.bpm.controller.admin.definition.vo.group;
import com.lz.framework.common.validation.i18n.I18nNotEmpty;
import com.lz.framework.common.validation.i18n.I18nNotNull;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.*;

import java.util.Set;

@Schema(description = "管理后台 - 用户组创建/修改 Request VO")
@Data
public class BpmUserGroupSaveReqVO {

    @Schema(description = "编号", example = "1024")
    private Long id;

    @Schema(description = "组名", requiredMode = Schema.RequiredMode.REQUIRED, example = "荔枝")
    @I18nNotEmpty(i18nKey = "bpm.userGroup.back.name.notEmpty", message = "组名不能为空")
    private String name;

    @Schema(description = "描述", example = "荔枝源码")
    private String description;

    @Schema(description = "成员编号数组", requiredMode = Schema.RequiredMode.REQUIRED, example = "1,2,3")
    @I18nNotNull(i18nKey = "bpm.userGroup.back.userIds.notNull", message = "成员编号数组不能为空")
    private Set<Long> userIds;

    @Schema(description = "状态", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @I18nNotNull(i18nKey = "bpm.userGroup.back.status.notNull", message = "状态不能为空")
    private Integer status;

}
