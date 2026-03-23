package com.lz.module.promotion.controller.app.kefu;

import com.lz.framework.common.enums.UserTypeEnum;
import com.lz.framework.common.pojo.CommonResult;
import com.lz.framework.common.util.object.BeanUtils;
import com.lz.module.promotion.controller.admin.kefu.vo.message.KeFuMessageRespVO;
import com.lz.module.promotion.controller.app.kefu.vo.message.AppKeFuMessagePageReqVO;
import com.lz.module.promotion.controller.app.kefu.vo.message.AppKeFuMessageSendReqVO;
import com.lz.module.promotion.dal.dataobject.kefu.KeFuMessageDO;
import com.lz.module.promotion.service.kefu.KeFuMessageService;
import com.lz.module.system.api.user.AdminUserApi;
import com.lz.module.system.api.user.dto.AdminUserRespDTO;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.annotation.Resource;
import jakarta.validation.Valid;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

import static com.lz.framework.common.pojo.CommonResult.success;
import static com.lz.framework.common.util.collection.CollectionUtils.convertSet;
import static com.lz.framework.common.util.collection.CollectionUtils.filterList;
import static com.lz.framework.common.util.collection.MapUtils.findAndThen;
import static com.lz.framework.security.core.util.SecurityFrameworkUtils.getLoginUserId;

@Tag(name = "用户 APP - 客服消息")
@RestController
@RequestMapping("/promotion/kefu-message")
@Validated
public class AppKeFuMessageController {

    @Resource
    private KeFuMessageService kefuMessageService;

    @Resource
    private AdminUserApi adminUserApi;

    @PostMapping("/send")
    @Operation(summary = "发送客服消息")
    public CommonResult<Long> sendKefuMessage(@Valid @RequestBody AppKeFuMessageSendReqVO sendReqVO) {
        sendReqVO.setSenderId(getLoginUserId()).setSenderType(UserTypeEnum.MEMBER.getValue()); // 设置用户编号和类型
        return success(kefuMessageService.sendKefuMessage(sendReqVO));
    }

    @PutMapping("/update-read-status")
    @Operation(summary = "更新客服消息已读状态")
    @Parameter(name = "conversationId", description = "会话编号", required = true)
    public CommonResult<Boolean> updateKefuMessageReadStatus(@RequestParam("conversationId") Long conversationId) {
        kefuMessageService.updateKeFuMessageReadStatus(conversationId, getLoginUserId(), UserTypeEnum.MEMBER.getValue());
        return success(true);
    }

    @GetMapping("/list")
    @Operation(summary = "获得客服消息列表")
    public CommonResult<List<KeFuMessageRespVO>> getKefuMessageList(@Valid AppKeFuMessagePageReqVO pageReqVO) {
        List<KeFuMessageDO> list = kefuMessageService.getKeFuMessageList(pageReqVO, getLoginUserId());

        // 拼接数据
        List<KeFuMessageRespVO> result = BeanUtils.toBean(list, KeFuMessageRespVO.class);
        Map<Long, AdminUserRespDTO> userMap = adminUserApi.getUserMap(convertSet(filterList(result,
                item -> UserTypeEnum.ADMIN.getValue().equals(item.getSenderType())), KeFuMessageRespVO::getSenderId));
        result.forEach(item -> findAndThen(userMap, item.getSenderId(), user -> item.setSenderAvatar(user.getAvatar())));
        return success(result);
    }

}