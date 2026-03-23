package com.lz.module.bpm.framework.flowable.core.candidate.strategy.user;

import com.lz.framework.test.core.ut.BaseMockitoUnitTest;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;

import java.util.Set;

import static com.lz.framework.common.util.collection.SetUtils.asSet;
import static org.junit.jupiter.api.Assertions.assertEquals;

@Disabled // TODO YY：临时注释
public class BpmTaskCandidateUserStrategyTest extends BaseMockitoUnitTest {

    @InjectMocks
    private BpmTaskCandidateUserStrategy strategy;

    @Test
    public void test() {
        // 准备参数
        String param = "1,2";

        // 调用
        Set<Long> userIds = strategy.calculateUsersByTask(null, param);
        // 断言
        assertEquals(asSet(1L, 2L), userIds);
    }


}
