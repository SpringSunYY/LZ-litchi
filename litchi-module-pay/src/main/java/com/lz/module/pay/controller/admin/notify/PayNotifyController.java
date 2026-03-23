package com.lz.module.pay.controller.admin.notify;

import cn.hutool.core.collection.CollUtil;
import com.lz.framework.common.pojo.CommonResult;
import com.lz.framework.common.pojo.PageResult;
import com.lz.framework.common.util.object.BeanUtils;
import com.lz.module.pay.framework.pay.core.client.PayClient;
import com.lz.module.pay.framework.pay.core.client.dto.order.PayOrderRespDTO;
import com.lz.module.pay.framework.pay.core.client.dto.refund.PayRefundRespDTO;
import com.lz.module.pay.framework.pay.core.client.dto.transfer.PayTransferRespDTO;
import com.lz.framework.tenant.core.aop.TenantIgnore;
import com.lz.module.pay.controller.admin.notify.vo.PayNotifyTaskDetailRespVO;
import com.lz.module.pay.controller.admin.notify.vo.PayNotifyTaskPageReqVO;
import com.lz.module.pay.controller.admin.notify.vo.PayNotifyTaskRespVO;
import com.lz.module.pay.dal.dataobject.app.PayAppDO;
import com.lz.module.pay.dal.dataobject.notify.PayNotifyLogDO;
import com.lz.module.pay.dal.dataobject.notify.PayNotifyTaskDO;
import com.lz.module.pay.service.app.PayAppService;
import com.lz.module.pay.service.channel.PayChannelService;
import com.lz.module.pay.service.notify.PayNotifyService;
import com.lz.module.pay.service.order.PayOrderService;
import com.lz.module.pay.service.refund.PayRefundService;
import com.lz.module.pay.service.transfer.PayTransferService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import jakarta.annotation.Resource;
import jakarta.annotation.security.PermitAll;
import jakarta.validation.Valid;
import java.util.List;
import java.util.Map;

import static com.lz.framework.common.exception.util.ServiceExceptionUtil.exception;
import static com.lz.framework.common.pojo.CommonResult.success;
import static com.lz.framework.common.util.collection.CollectionUtils.convertList;
import static com.lz.module.pay.enums.ErrorCodeConstants.CHANNEL_NOT_FOUND;

@Tag(name = "管理后台 - 回调通知")
@RestController
@RequestMapping("/pay/notify")
@Validated
@Slf4j
public class PayNotifyController {

    @Resource
    private PayOrderService orderService;
    @Resource
    private PayRefundService refundService;
    @Resource
    private PayTransferService payTransferService;
    @Resource
    private PayNotifyService notifyService;
    @Resource
    private PayAppService appService;
    @Resource
    private PayChannelService channelService;

    @PostMapping(value = "/order/{channelId}")
    @Operation(summary = "支付渠道的统一【支付】回调")
    @PermitAll
    @TenantIgnore
    public String notifyOrder(@PathVariable("channelId") Long channelId,
                              @RequestParam(required = false) Map<String, String> params,
                              @RequestBody(required = false) String body,
                              @RequestHeader Map<String, String> headers) {
        log.info("[notifyOrder][channelId({}) 回调数据({}/{})]", channelId, params, body);
        // 1. 校验支付渠道是否存在
        PayClient payClient = channelService.getPayClient(channelId);
        if (payClient == null) {
            log.error("[notifyOrder][渠道编号({}) 找不到对应的支付客户端]", channelId);
            throw exception(CHANNEL_NOT_FOUND);
        }

        // 2. 解析通知数据
        PayOrderRespDTO notify = payClient.parseOrderNotify(params, body, headers);
        orderService.notifyOrder(channelId, notify);
        return "success";
    }

    @PostMapping(value = "/refund/{channelId}")
    @Operation(summary = "支付渠道的统一【退款】回调")
    @PermitAll
    @TenantIgnore
    public String notifyRefund(@PathVariable("channelId") Long channelId,
                               @RequestParam(required = false) Map<String, String> params,
                               @RequestBody(required = false) String body,
                               @RequestHeader Map<String, String> headers) {
        log.info("[notifyRefund][channelId({}) 回调数据({}/{})]", channelId, params, body);
        // 1. 校验支付渠道是否存在
        PayClient payClient = channelService.getPayClient(channelId);
        if (payClient == null) {
            log.error("[notifyRefund][渠道编号({}) 找不到对应的支付客户端]", channelId);
            throw exception(CHANNEL_NOT_FOUND);
        }

        // 2. 解析通知数据
        PayRefundRespDTO notify = payClient.parseRefundNotify(params, body, headers);
        refundService.notifyRefund(channelId, notify);
        return "success";
    }

    @PostMapping(value = "/transfer/{channelId}")
    @Operation(summary = "支付渠道的统一【转账】回调")
    @PermitAll
    @TenantIgnore
    public String notifyTransfer(@PathVariable("channelId") Long channelId,
                                 @RequestParam(required = false) Map<String, String> params,
                                 @RequestBody(required = false) String body,
                                 @RequestHeader Map<String, String> headers) {
        log.info("[notifyTransfer][channelId({}) 回调数据({}/{})]", channelId, params, body);
        // 1. 校验支付渠道是否存在
        PayClient payClient = channelService.getPayClient(channelId);
        if (payClient == null) {
            log.error("[notifyTransfer][渠道编号({}) 找不到对应的支付客户端]", channelId);
            throw exception(CHANNEL_NOT_FOUND);
        }

        // 2. 解析通知数据
        PayTransferRespDTO notify = payClient.parseTransferNotify(params, body, headers);
        payTransferService.notifyTransfer(channelId, notify);
        return "success";
    }

    @GetMapping("/get-detail")
    @Operation(summary = "获得回调通知的明细")
    @Parameter(name = "id", description = "编号", required = true, example = "1024")
    @PreAuthorize("@ss.hasPermission('pay:notify:query')")
    public CommonResult<PayNotifyTaskDetailRespVO> getNotifyTaskDetail(@RequestParam("id") Long id) {
        PayNotifyTaskDO task = notifyService.getNotifyTask(id);
        if (task == null) {
            return success(null);
        }
        // 拼接返回
        PayAppDO app = appService.getApp(task.getAppId());
        List<PayNotifyLogDO> logs = notifyService.getNotifyLogList(id);
        return success(BeanUtils.toBean(task, PayNotifyTaskDetailRespVO.class, respVO -> {
            if (app != null) {
                respVO.setAppName(app.getName());
            }
            respVO.setLogs(BeanUtils.toBean(logs, PayNotifyTaskDetailRespVO.Log.class));
        }));
    }

    @GetMapping("/page")
    @Operation(summary = "获得回调通知分页")
    @PreAuthorize("@ss.hasPermission('pay:notify:query')")
    public CommonResult<PageResult<PayNotifyTaskRespVO>> getNotifyTaskPage(@Valid PayNotifyTaskPageReqVO pageVO) {
        PageResult<PayNotifyTaskDO> pageResult = notifyService.getNotifyTaskPage(pageVO);
        if (CollUtil.isEmpty(pageResult.getList())) {
            return success(PageResult.empty());
        }
        // 拼接返回
        Map<Long, PayAppDO> apps = appService.getAppMap(convertList(pageResult.getList(), PayNotifyTaskDO::getAppId));

        // 转换对象
        return success(BeanUtils.toBean(pageResult, PayNotifyTaskRespVO.class, order -> {
            PayAppDO app = apps.get(order.getAppId());
            if (app != null) {
                order.setAppName(app.getName());
            }
        }));
    }

}
