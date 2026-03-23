package com.lz.module.bpm.controller.admin.definition.vo.listener;

import com.lz.framework.common.enums.CommonStatusEnum;
import com.lz.framework.common.pojo.PageParam;
import com.lz.framework.common.validation.InEnum;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

@Schema(description = "管理后台 - BPM 流程监听器分页 Request VO")
@Data
@EqualsAndHashCode(callSuper = true)
@ToString(callSuper = true)
public class BpmProcessListenerPageReqVO extends PageParam {

    @Schema(description = "监听器名字", example = "赵六")
    private String name;

    @Schema(description = "监听器类型", example = "execution")
    private String type;

    @Schema(description = "监听事件", example = "start")
    private String event;

    @Schema(description = "状态", example = "1")
    @InEnum(CommonStatusEnum.class)
    private Integer status;

}