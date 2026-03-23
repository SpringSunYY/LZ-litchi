package com.lz.module.pay.controller.admin.demo;

import com.lz.framework.common.pojo.CommonResult;
import com.lz.framework.common.pojo.PageParam;
import com.lz.framework.common.pojo.PageResult;
import com.lz.framework.common.util.object.BeanUtils;
import com.lz.module.pay.api.notify.dto.PayTransferNotifyReqDTO;
import com.lz.module.pay.controller.admin.demo.vo.withdraw.PayDemoWithdrawCreateReqVO;
import com.lz.module.pay.controller.admin.demo.vo.withdraw.PayDemoWithdrawRespVO;
import com.lz.module.pay.dal.dataobject.demo.PayDemoWithdrawDO;
import com.lz.module.pay.service.demo.PayDemoWithdrawService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.annotation.Resource;
import jakarta.annotation.security.PermitAll;
import jakarta.validation.Valid;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import static com.lz.framework.common.pojo.CommonResult.success;

@Tag(name = "管理后台 - 示例提现订单") // 目的：演示转账功能
@RestController
@RequestMapping("/pay/demo-withdraw")
@Validated
public class PayDemoWithdrawController {

    @Resource
    private PayDemoWithdrawService demoWithdrawService;

    @PostMapping("/create")
    @Operation(summary = "创建示例提现单")
    public CommonResult<Long> createDemoWithdraw(@Valid @RequestBody PayDemoWithdrawCreateReqVO createReqVO) {
        Long id = demoWithdrawService.createDemoWithdraw(createReqVO);
        return success(id);
    }

    @PostMapping("/transfer")
    @Operation(summary = "提现单转账")
    @Parameter(name = "id", required = true, description = "提现单编号", example = "1024")
    public CommonResult<Long> transferDemoWithdraw(@RequestParam("id") Long id) {
        Long payTransferId = demoWithdrawService.transferDemoWithdraw(id);
        return success(payTransferId);
    }

    @GetMapping("/page")
    @Operation(summary = "获得示例提现单分页")
    public CommonResult<PageResult<PayDemoWithdrawRespVO>> getDemoWithdrawPage(@Valid PageParam pageVO) {
        PageResult<PayDemoWithdrawDO> pageResult = demoWithdrawService.getDemoWithdrawPage(pageVO);
        return success(BeanUtils.toBean(pageResult, PayDemoWithdrawRespVO.class));
    }

    @PostMapping("/update-transferred")
    @Operation(summary = "更新示例提现单的转账状态") // 由 pay-module 转账服务，进行回调
    @PermitAll // 无需登录，安全由 PayDemoTransferService 内部校验实现
    public CommonResult<Boolean> updateDemoWithdrawTransferred(@RequestBody PayTransferNotifyReqDTO notifyReqDTO) {
        demoWithdrawService.updateDemoWithdrawTransferred(Long.valueOf(notifyReqDTO.getMerchantTransferId()),
                notifyReqDTO.getPayTransferId());
        return success(true);
    }

}
