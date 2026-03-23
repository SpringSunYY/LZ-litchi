package com.lz.module.statistics.controller.admin.trade;

import cn.hutool.core.util.ArrayUtil;
import com.lz.framework.common.pojo.CommonResult;
import com.lz.framework.excel.core.util.ExcelUtils;
import com.lz.module.statistics.controller.admin.common.vo.DataComparisonRespVO;
import com.lz.module.statistics.controller.admin.trade.vo.*;
import com.lz.module.statistics.convert.trade.TradeStatisticsConvert;
import com.lz.module.statistics.dal.dataobject.trade.TradeStatisticsDO;
import com.lz.module.statistics.service.trade.AfterSaleStatisticsService;
import com.lz.module.statistics.service.trade.BrokerageStatisticsService;
import com.lz.module.statistics.service.trade.TradeOrderStatisticsService;
import com.lz.module.statistics.service.trade.TradeStatisticsService;
import com.lz.module.statistics.service.trade.bo.TradeSummaryRespBO;
import com.lz.module.trade.enums.aftersale.AfterSaleStatusEnum;
import com.lz.module.trade.enums.brokerage.BrokerageWithdrawStatusEnum;
import com.lz.module.trade.enums.delivery.DeliveryTypeEnum;
import com.lz.module.trade.enums.order.TradeOrderStatusEnum;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.annotation.Resource;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.validation.Valid;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.io.IOException;
import java.util.List;

import static com.lz.framework.common.pojo.CommonResult.success;

@Tag(name = "管理后台 - 交易统计")
@RestController
@RequestMapping("/statistics/trade")
@Validated
@Slf4j
public class TradeStatisticsController {

    @Resource
    private TradeStatisticsService tradeStatisticsService;
    @Resource
    private TradeOrderStatisticsService tradeOrderStatisticsService;
    @Resource
    private AfterSaleStatisticsService afterSaleStatisticsService;
    @Resource
    private BrokerageStatisticsService brokerageStatisticsService;

    @GetMapping("/summary")
    @Operation(summary = "获得交易统计")
    @PreAuthorize("@ss.hasPermission('statistics:trade:query')")
    public CommonResult<DataComparisonRespVO<TradeSummaryRespVO>> getTradeSummaryComparison() {
        // 1.1 昨天的数据
        TradeSummaryRespBO yesterdayData = tradeStatisticsService.getTradeSummaryByDays(-1);
        // 1.2 前天的数据（用于对照昨天的数据）
        TradeSummaryRespBO beforeYesterdayData = tradeStatisticsService.getTradeSummaryByDays(-2);

        // 2.1 本月数据
        TradeSummaryRespBO monthData = tradeStatisticsService.getTradeSummaryByMonths(0);
        // 2.2 上月数据（用于对照本月的数据）
        TradeSummaryRespBO lastMonthData = tradeStatisticsService.getTradeSummaryByMonths(-1);
        // 拼接数据
        return success(TradeStatisticsConvert.INSTANCE.convert(yesterdayData, beforeYesterdayData, monthData, lastMonthData));
    }

    @GetMapping("/analyse")
    @Operation(summary = "获得交易状况统计")
    @PreAuthorize("@ss.hasPermission('statistics:trade:query')")
    public CommonResult<DataComparisonRespVO<TradeTrendSummaryRespVO>> getTradeStatisticsAnalyse(TradeTrendReqVO reqVO) {
        return success(tradeStatisticsService.getTradeStatisticsAnalyse(ArrayUtil.get(reqVO.getTimes(), 0),
                ArrayUtil.get(reqVO.getTimes(), 1)));
    }

    @GetMapping("/list")
    @Operation(summary = "获得交易状况明细")
    @PreAuthorize("@ss.hasPermission('statistics:trade:query')")
    public CommonResult<List<TradeTrendSummaryRespVO>> getTradeStatisticsList(TradeTrendReqVO reqVO) {
        List<TradeStatisticsDO> list = tradeStatisticsService.getTradeStatisticsList(ArrayUtil.get(reqVO.getTimes(), 0),
                ArrayUtil.get(reqVO.getTimes(), 1));
        return success(TradeStatisticsConvert.INSTANCE.convertList(list));
    }

    @GetMapping("/export-excel")
    @Operation(summary = "导出获得交易状况明细 Excel")
    @PreAuthorize("@ss.hasPermission('statistics:trade:export')")
    public void exportTradeStatisticsExcel(TradeTrendReqVO reqVO, HttpServletResponse response) throws IOException {
        List<TradeStatisticsDO> list = tradeStatisticsService.getTradeStatisticsList(ArrayUtil.get(reqVO.getTimes(), 0),
                ArrayUtil.get(reqVO.getTimes(), 1));
        // 导出 Excel
        List<TradeTrendSummaryRespVO> voList = TradeStatisticsConvert.INSTANCE.convertList(list);
        List<TradeTrendSummaryExcelVO> data = TradeStatisticsConvert.INSTANCE.convertList02(voList);
        ExcelUtils.write(response, "交易状况.xls", "数据", TradeTrendSummaryExcelVO.class, data);
    }

    @GetMapping("/order-count")
    @Operation(summary = "获得交易订单数量")
    @PreAuthorize("@ss.hasPermission('statistics:trade:query')")
    public CommonResult<TradeOrderCountRespVO> getOrderCount() {
        // 订单统计
        Long undeliveredCount = tradeOrderStatisticsService.getCountByStatusAndDeliveryType(
                TradeOrderStatusEnum.UNDELIVERED.getStatus(), DeliveryTypeEnum.EXPRESS.getType());
        // TODO @疯狂：订单支付后，如果是门店自提的，需要 update 成 DELIVERED；；目前还没搞~~突然反应过来
        Long pickUpCount = tradeOrderStatisticsService.getCountByStatusAndDeliveryType(
                TradeOrderStatusEnum.DELIVERED.getStatus(), DeliveryTypeEnum.PICK_UP.getType());
        // 售后统计
        Long afterSaleApplyCount = afterSaleStatisticsService.getCountByStatus(AfterSaleStatusEnum.APPLY);
        Long auditingWithdrawCount = brokerageStatisticsService.getWithdrawCountByStatus(BrokerageWithdrawStatusEnum.AUDITING);
        // 拼接返回
        return success(TradeStatisticsConvert.INSTANCE.convert(undeliveredCount, pickUpCount, afterSaleApplyCount, auditingWithdrawCount));
    }

    @GetMapping("/order-comparison")
    @Operation(summary = "获得交易订单数量")
    @PreAuthorize("@ss.hasPermission('statistics:trade:query')")
    public CommonResult<DataComparisonRespVO<TradeOrderSummaryRespVO>> getOrderComparison() {
        return success(tradeOrderStatisticsService.getOrderComparison());
    }

    @GetMapping("/order-count-trend")
    @Operation(summary = "获得订单量趋势统计")
    @PreAuthorize("@ss.hasPermission('statistics:trade:query')")
    public CommonResult<List<DataComparisonRespVO<TradeOrderTrendRespVO>>> getOrderCountTrendComparison(@Valid TradeOrderTrendReqVO reqVO) {
        // TODO @疯狂：要注意 date 的排序；
        return success(tradeOrderStatisticsService.getOrderCountTrendComparison(reqVO));
    }

}
