package com.lz.module.pay.controller.admin.wallet;

import com.lz.framework.common.pojo.CommonResult;
import com.lz.framework.common.pojo.PageResult;
import com.lz.module.pay.controller.admin.wallet.vo.transaction.PayWalletTransactionPageReqVO;
import com.lz.module.pay.controller.admin.wallet.vo.transaction.PayWalletTransactionRespVO;
import com.lz.module.pay.convert.wallet.PayWalletTransactionConvert;
import com.lz.module.pay.dal.dataobject.wallet.PayWalletTransactionDO;
import com.lz.module.pay.service.wallet.PayWalletTransactionService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import jakarta.annotation.Resource;
import jakarta.validation.Valid;

import static com.lz.framework.common.pojo.CommonResult.success;

@Tag(name = "管理后台 - 钱包余额明细")
@RestController
@RequestMapping("/pay/wallet-transaction")
@Validated
@Slf4j
public class PayWalletTransactionController {

    @Resource
    private PayWalletTransactionService payWalletTransactionService;

    @GetMapping("/page")
    @Operation(summary = "获得钱包流水分页")
    @PreAuthorize("@ss.hasPermission('pay:wallet:query')")
    public CommonResult<PageResult<PayWalletTransactionRespVO>> getWalletTransactionPage(
            @Valid PayWalletTransactionPageReqVO pageReqVO) {
        PageResult<PayWalletTransactionDO> result = payWalletTransactionService.getWalletTransactionPage(pageReqVO);
        return success(PayWalletTransactionConvert.INSTANCE.convertPage2(result));
    }

}
