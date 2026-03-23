package com.lz.module.bpm.service.message;

import com.lz.module.bpm.service.message.dto.BpmMessageSendWhenProcessInstanceApproveReqDTO;
import com.lz.module.bpm.service.message.dto.BpmMessageSendWhenProcessInstanceRejectReqDTO;
import com.lz.module.bpm.service.message.dto.BpmMessageSendWhenTaskCreatedReqDTO;
import com.lz.module.bpm.service.message.dto.BpmMessageSendWhenTaskTimeoutReqDTO;
import jakarta.validation.Valid;

/**
 * BPM 消息 Service 接口
 *
 * TODO YY：未来支持消息的可配置；不同的流程，在什么场景下，需要发送什么消息，消息的内容是什么；
 *
 * @author 荔枝源码
 */
public interface BpmMessageService {

    /**
     * 发送流程实例被通过的消息
     *
     * @param reqDTO 发送信息
     */
    void sendMessageWhenProcessInstanceApprove(@Valid BpmMessageSendWhenProcessInstanceApproveReqDTO reqDTO);

    /**
     * 发送流程实例被不通过的消息
     *
     * @param reqDTO 发送信息
     */
    void sendMessageWhenProcessInstanceReject(@Valid BpmMessageSendWhenProcessInstanceRejectReqDTO reqDTO);

    /**
     * 发送任务被分配的消息
     *
     * @param reqDTO 发送信息
     */
    void sendMessageWhenTaskAssigned(@Valid BpmMessageSendWhenTaskCreatedReqDTO reqDTO);

    /**
     * 发送任务审批超时的消息
     *
     * @param reqDTO 发送信息
     */
    void sendMessageWhenTaskTimeout(@Valid BpmMessageSendWhenTaskTimeoutReqDTO reqDTO);

}
