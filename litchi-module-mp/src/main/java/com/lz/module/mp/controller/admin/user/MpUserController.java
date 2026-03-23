package com.lz.module.mp.controller.admin.user;

import com.lz.framework.common.pojo.CommonResult;
import com.lz.framework.common.pojo.PageResult;
import com.lz.module.mp.controller.admin.user.vo.MpUserPageReqVO;
import com.lz.module.mp.controller.admin.user.vo.MpUserRespVO;
import com.lz.module.mp.controller.admin.user.vo.MpUserUpdateReqVO;
import com.lz.module.mp.convert.user.MpUserConvert;
import com.lz.module.mp.dal.dataobject.user.MpUserDO;
import com.lz.module.mp.service.user.MpUserService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import jakarta.annotation.Resource;
import jakarta.validation.Valid;

import static com.lz.framework.common.pojo.CommonResult.success;

@Tag(name = "管理后台 - 公众号粉丝")
@RestController
@RequestMapping("/mp/user")
@Validated
public class MpUserController {

    @Resource
    private MpUserService mpUserService;

    @GetMapping("/page")
    @Operation(summary = "获得公众号粉丝分页")
    @PreAuthorize("@ss.hasPermission('mp:user:query')")
    public CommonResult<PageResult<MpUserRespVO>> getUserPage(@Valid MpUserPageReqVO pageVO) {
        PageResult<MpUserDO> pageResult = mpUserService.getUserPage(pageVO);
        return success(MpUserConvert.INSTANCE.convertPage(pageResult));
    }

    @GetMapping("/get")
    @Operation(summary = "获得公众号粉丝")
    @Parameter(name = "id", description = "编号", required = true, example = "1024")
    @PreAuthorize("@ss.hasPermission('mp:user:query')")
    public CommonResult<MpUserRespVO> getUser(@RequestParam("id") Long id) {
        return success(MpUserConvert.INSTANCE.convert(mpUserService.getUser(id)));
    }

    @PutMapping("/update")
    @Operation(summary = "更新公众号粉丝")
    @PreAuthorize("@ss.hasPermission('mp:user:update')")
    public CommonResult<Boolean> updateUser(@Valid @RequestBody MpUserUpdateReqVO updateReqVO) {
        mpUserService.updateUser(updateReqVO);
        return success(true);
    }

    @PostMapping("/sync")
    @Operation(summary = "同步公众号粉丝")
    @Parameter(name = "accountId", description = "公众号账号的编号", required = true)
    @PreAuthorize("@ss.hasPermission('mp:user:sync')")
    public CommonResult<Boolean> syncUser(@RequestParam("accountId") Long accountId) {
        mpUserService.syncUser(accountId);
        return success(true);
    }

}
