package com.lz.module.bpm.framework.flowable.core.candidate.strategy.form;

import cn.hutool.core.lang.Assert;
import com.lz.framework.common.util.collection.CollectionUtils;
import com.lz.module.bpm.framework.flowable.core.candidate.BpmTaskCandidateStrategy;
import com.lz.module.bpm.framework.flowable.core.candidate.strategy.user.BpmTaskCandidateUserStrategy;
import com.lz.module.bpm.framework.flowable.core.enums.BpmTaskCandidateStrategyEnum;
import org.flowable.bpmn.model.BpmnModel;
import org.flowable.engine.delegate.DelegateExecution;
import org.springframework.stereotype.Component;

import java.util.Map;
import java.util.Set;

/**
 * 表单内用户字段 {@link BpmTaskCandidateUserStrategy} 实现类
 *
 * @author jason
 */
@Component
public class BpmTaskCandidateFormUserStrategy implements BpmTaskCandidateStrategy {

    @Override
    public BpmTaskCandidateStrategyEnum getStrategy() {
        return BpmTaskCandidateStrategyEnum.FORM_USER;
    }

    @Override
    public void validateParam(String param) {
        Assert.notEmpty(param, "表单内用户字段不能为空");
    }

    @Override
    public Set<Long> calculateUsersByTask(DelegateExecution execution, String param) {
        Object result = execution.getVariable(param);
        return CollectionUtils.toLinkedHashSet(Long.class, result);
    }

    @Override
    public Set<Long> calculateUsersByActivity(BpmnModel bpmnModel, String activityId,
                                              String param, Long startUserId, String processDefinitionId,
                                              Map<String, Object> processVariables) {
        Object result = processVariables == null ? null : processVariables.get(param);
        return CollectionUtils.toLinkedHashSet(Long.class, result);
    }

}
