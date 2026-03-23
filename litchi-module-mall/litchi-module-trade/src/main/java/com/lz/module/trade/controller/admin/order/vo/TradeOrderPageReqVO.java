package com.lz.module.trade.controller.admin.order.vo;

import com.lz.framework.common.enums.TerminalEnum;
import com.lz.framework.common.pojo.PageParam;
import com.lz.framework.common.validation.InEnum;
import com.lz.framework.common.validation.Mobile;
import com.lz.module.trade.enums.order.TradeOrderStatusEnum;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDateTime;
import java.util.List;

import static com.lz.framework.common.util.date.DateUtils.FORMAT_YEAR_MONTH_DAY_HOUR_MINUTE_SECOND;

@Schema(description = "管理后台 - 交易订单的分页 Request VO")
@Data
public class TradeOrderPageReqVO extends PageParam {

    @Schema(description = "订单号", example = "88888888")
    private String no;

    @Schema(description = "用户编号", example = "1024")
    private Long userId;

    @Schema(description = "用户昵称", example = "小王")
    private String userNickname;

    @Schema(description = "用户手机号", example = "小王")
    @Mobile
    private String userMobile;

    @Schema(description = "配送方式", example = "1")
    private Integer deliveryType;

    @Schema(description = "发货物流公司编号", example = "1")
    private Long logisticsId;

    @Schema(description = "自提门店编号", example = "[1,2]")
    private List<Long> pickUpStoreIds;

    @Schema(description = "自提核销码", example = "12345678")
    private String pickUpVerifyCode;

    @Schema(description = "订单类型", example = "1")
    private Integer type;

    @Schema(description = "订单状态", example = "1")
    @InEnum(value = TradeOrderStatusEnum.class, message = "订单状态必须是 {value}")
    private Integer status;

    @Schema(description = "支付渠道", example = "wx_lite")
    private String payChannelCode;

    @Schema(description = "创建时间")
    @DateTimeFormat(pattern = FORMAT_YEAR_MONTH_DAY_HOUR_MINUTE_SECOND)
    private LocalDateTime[] createTime;

    @Schema(description = "订单来源", example = "10")
    @InEnum(value = TerminalEnum.class, message = "订单来源 {value}")
    private Integer terminal;

}
