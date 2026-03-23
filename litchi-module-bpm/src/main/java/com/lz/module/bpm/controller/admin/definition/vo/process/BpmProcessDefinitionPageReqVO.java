package com.lz.module.bpm.controller.admin.definition.vo.process;

import com.lz.framework.common.pojo.PageParam;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

@Schema(description = "管理后台 - 流程定义分页 Request VO")
@Data
public class BpmProcessDefinitionPageReqVO extends PageParam {

    @Schema(description = "标识-精准匹配", example = "process1641042089407")
    private String key;

}
