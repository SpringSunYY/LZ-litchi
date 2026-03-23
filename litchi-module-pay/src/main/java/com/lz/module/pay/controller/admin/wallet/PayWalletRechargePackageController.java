package com.lz.module.pay.controller.admin.wallet;

import com.lz.framework.common.pojo.CommonResult;
import com.lz.framework.common.pojo.PageResult;
import com.lz.module.pay.controller.admin.wallet.vo.rechargepackage.WalletRechargePackageCreateReqVO;
import com.lz.module.pay.controller.admin.wallet.vo.rechargepackage.WalletRechargePackagePageReqVO;
import com.lz.module.pay.controller.admin.wallet.vo.rechargepackage.WalletRechargePackageRespVO;
import com.lz.module.pay.controller.admin.wallet.vo.rechargepackage.WalletRechargePackageUpdateReqVO;
import com.lz.module.pay.convert.wallet.PayWalletRechargePackageConvert;
import com.lz.module.pay.dal.dataobject.wallet.PayWalletRechargePackageDO;
import com.lz.module.pay.service.wallet.PayWalletRechargePackageService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import jakarta.annotation.Resource;
import jakarta.validation.Valid;

import static com.lz.framework.common.pojo.CommonResult.success;


@Tag(name = "管理后台 - 钱包充值套餐")
@RestController
@RequestMapping("/pay/wallet-recharge-package")
@Validated
public class PayWalletRechargePackageController {

    @Resource
    private PayWalletRechargePackageService walletRechargePackageService;

    @PostMapping("/create")
    @Operation(summary = "创建钱包充值套餐")
    @PreAuthorize("@ss.hasPermission('pay:wallet-recharge-package:create')")
    public CommonResult<Long> createWalletRechargePackage(@Valid @RequestBody WalletRechargePackageCreateReqVO createReqVO) {
        return success(walletRechargePackageService.createWalletRechargePackage(createReqVO));
    }

    @PutMapping("/update")
    @Operation(summary = "更新钱包充值套餐")
    @PreAuthorize("@ss.hasPermission('pay:wallet-recharge-package:update')")
    public CommonResult<Boolean> updateWalletRechargePackage(@Valid @RequestBody WalletRechargePackageUpdateReqVO updateReqVO) {
        walletRechargePackageService.updateWalletRechargePackage(updateReqVO);
        return success(true);
    }

    @DeleteMapping("/delete")
    @Operation(summary = "删除钱包充值套餐")
    @Parameter(name = "id", description = "编号", required = true)
    @PreAuthorize("@ss.hasPermission('pay:wallet-recharge-package:delete')")
    public CommonResult<Boolean> deleteWalletRechargePackage(@RequestParam("id") Long id) {
        walletRechargePackageService.deleteWalletRechargePackage(id);
        return success(true);
    }

    @GetMapping("/get")
    @Operation(summary = "获得钱包充值套餐")
    @Parameter(name = "id", description = "编号", required = true, example = "1024")
    @PreAuthorize("@ss.hasPermission('pay:wallet-recharge-package:query')")
    public CommonResult<WalletRechargePackageRespVO> getWalletRechargePackage(@RequestParam("id") Long id) {
        PayWalletRechargePackageDO walletRechargePackage = walletRechargePackageService.getWalletRechargePackage(id);
        return success(PayWalletRechargePackageConvert.INSTANCE.convert(walletRechargePackage));
    }

    @GetMapping("/page")
    @Operation(summary = "获得钱包充值套餐分页")
    @PreAuthorize("@ss.hasPermission('pay:wallet-recharge-package:query')")
    public CommonResult<PageResult<WalletRechargePackageRespVO>> getWalletRechargePackagePage(@Valid WalletRechargePackagePageReqVO pageVO) {
        PageResult<PayWalletRechargePackageDO> pageResult = walletRechargePackageService.getWalletRechargePackagePage(pageVO);
        return success(PayWalletRechargePackageConvert.INSTANCE.convertPage(pageResult));
    }

}
