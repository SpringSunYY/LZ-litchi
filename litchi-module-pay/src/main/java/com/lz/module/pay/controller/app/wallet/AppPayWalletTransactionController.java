package com.lz.module.pay.controller.app.wallet;

import com.lz.framework.common.enums.UserTypeEnum;
import com.lz.framework.common.pojo.CommonResult;
import com.lz.framework.common.pojo.PageResult;
import com.lz.framework.common.util.object.BeanUtils;
import com.lz.module.pay.controller.app.wallet.vo.transaction.AppPayWalletTransactionSummaryRespVO;
import com.lz.module.pay.controller.app.wallet.vo.transaction.AppPayWalletTransactionPageReqVO;
import com.lz.module.pay.controller.app.wallet.vo.transaction.AppPayWalletTransactionRespVO;
import com.lz.module.pay.dal.dataobject.wallet.PayWalletTransactionDO;
import com.lz.module.pay.service.wallet.PayWalletTransactionService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import jakarta.annotation.Resource;
import jakarta.validation.Valid;

import java.time.LocalDateTime;

import static com.lz.framework.common.pojo.CommonResult.success;
import static com.lz.framework.common.util.date.DateUtils.FORMAT_YEAR_MONTH_DAY_HOUR_MINUTE_SECOND;
import static com.lz.framework.security.core.util.SecurityFrameworkUtils.getLoginUserId;

@Tag(name = "用户 APP - 钱包余额明细")
@RestController
@RequestMapping("/pay/wallet-transaction")
@Validated
@Slf4j
public class AppPayWalletTransactionController {

    @Resource
    private PayWalletTransactionService payWalletTransactionService;

    @GetMapping("/page")
    @Operation(summary = "获得钱包流水分页")
    public CommonResult<PageResult<AppPayWalletTransactionRespVO>> getWalletTransactionPage(
            @Valid AppPayWalletTransactionPageReqVO pageReqVO) {
        PageResult<PayWalletTransactionDO> pageResult = payWalletTransactionService.getWalletTransactionPage(
                getLoginUserId(), UserTypeEnum.MEMBER.getValue(), pageReqVO);
        return success(BeanUtils.toBean(pageResult, AppPayWalletTransactionRespVO.class));
    }

    @GetMapping("/get-summary")
    @Operation(summary = "获得钱包流水统计")
    @Parameter(name = "times", description = "时间段", required = true)
    public CommonResult<AppPayWalletTransactionSummaryRespVO> getWalletTransactionSummary(
            @RequestParam("createTime") @DateTimeFormat(pattern = FORMAT_YEAR_MONTH_DAY_HOUR_MINUTE_SECOND) LocalDateTime[] createTime) {
        AppPayWalletTransactionSummaryRespVO summary = payWalletTransactionService.getWalletTransactionSummary(
                getLoginUserId(), UserTypeEnum.MEMBER.getValue(), createTime);
        return success(summary);
    }

}
