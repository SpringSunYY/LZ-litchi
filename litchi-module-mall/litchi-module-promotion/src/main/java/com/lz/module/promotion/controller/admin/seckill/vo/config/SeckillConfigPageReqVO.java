package com.lz.module.promotion.controller.admin.seckill.vo.config;

import com.lz.framework.common.pojo.PageParam;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

@Schema(description = "管理后台 - 秒杀时段分页 Request VO")
@Data
@EqualsAndHashCode(callSuper = true)
@ToString(callSuper = true)
public class SeckillConfigPageReqVO extends PageParam {

    @Schema(description = "秒杀时段名称", example = "上午场")
    private String name;

    @Schema(description = "状态", example = "0")
    private Integer status;

}
