package com.lz.module.promotion.controller.app.seckill.vo.activity;

import com.lz.framework.common.pojo.PageParam;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

@Schema(description = "用户 App - 商品评价分页 Request VO")
@Data
@EqualsAndHashCode(callSuper = true)
@ToString(callSuper = true)
public class AppSeckillActivityPageReqVO extends PageParam {

    @Schema(description = "秒杀配置编号", example = "1024")
    private Long configId;

}
