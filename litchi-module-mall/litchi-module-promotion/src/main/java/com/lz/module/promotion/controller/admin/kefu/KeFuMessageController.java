package com.lz.module.promotion.controller.admin.kefu;

import com.lz.framework.common.enums.UserTypeEnum;
import com.lz.framework.common.pojo.CommonResult;
import com.lz.framework.common.util.object.BeanUtils;
import com.lz.module.promotion.controller.admin.kefu.vo.message.KeFuMessageListReqVO;
import com.lz.module.promotion.controller.admin.kefu.vo.message.KeFuMessageRespVO;
import com.lz.module.promotion.controller.admin.kefu.vo.message.KeFuMessageSendReqVO;
import com.lz.module.promotion.dal.dataobject.kefu.KeFuMessageDO;
import com.lz.module.promotion.service.kefu.KeFuMessageService;
import com.lz.module.system.api.user.AdminUserApi;
import com.lz.module.system.api.user.dto.AdminUserRespDTO;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.annotation.Resource;
import jakarta.validation.Valid;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

import static com.lz.framework.common.pojo.CommonResult.success;
import static com.lz.framework.common.util.collection.CollectionUtils.convertSet;
import static com.lz.framework.common.util.collection.CollectionUtils.filterList;
import static com.lz.framework.common.util.collection.MapUtils.findAndThen;
import static com.lz.framework.security.core.util.SecurityFrameworkUtils.getLoginUserId;

@Tag(name = "管理后台 - 客服消息")
@RestController
@RequestMapping("/promotion/kefu-message")
@Validated
public class KeFuMessageController {

    @Resource
    private KeFuMessageService messageService;
    @Resource
    private AdminUserApi adminUserApi;

    @PostMapping("/send")
    @Operation(summary = "发送客服消息")
    @PreAuthorize("@ss.hasPermission('promotion:kefu-message:send')")
    public CommonResult<Long> sendKeFuMessage(@Valid @RequestBody KeFuMessageSendReqVO sendReqVO) {
        sendReqVO.setSenderId(getLoginUserId()).setSenderType(UserTypeEnum.ADMIN.getValue()); // 设置用户编号和类型
        return success(messageService.sendKefuMessage(sendReqVO));
    }

    @PutMapping("/update-read-status")
    @Operation(summary = "更新客服消息已读状态")
    @Parameter(name = "conversationId", description = "会话编号", required = true)
    @PreAuthorize("@ss.hasPermission('promotion:kefu-message:update')")
    public CommonResult<Boolean> updateKeFuMessageReadStatus(@RequestParam("conversationId") Long conversationId) {
        messageService.updateKeFuMessageReadStatus(conversationId, getLoginUserId(), UserTypeEnum.ADMIN.getValue());
        return success(true);
    }

    @GetMapping("/list")
    @Operation(summary = "获得客服消息列表")
    @PreAuthorize("@ss.hasPermission('promotion:kefu-message:query')")
    public CommonResult<List<KeFuMessageRespVO>> getKeFuMessageList(@Valid KeFuMessageListReqVO pageReqVO) {
        // 获得数据
        List<KeFuMessageDO> list = messageService.getKeFuMessageList(pageReqVO);

        // 拼接数据
        List<KeFuMessageRespVO> result = BeanUtils.toBean(list, KeFuMessageRespVO.class);
        Map<Long, AdminUserRespDTO> userMap = adminUserApi.getUserMap(convertSet(filterList(result,
                item -> UserTypeEnum.ADMIN.getValue().equals(item.getSenderType())), KeFuMessageRespVO::getSenderId));
        result.forEach(item -> findAndThen(userMap, item.getSenderId(), user -> item.setSenderAvatar(user.getAvatar())));
        return success(result);
    }

}