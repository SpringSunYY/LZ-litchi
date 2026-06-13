package com.lz.framework.quartz.core.handler;

import lombok.extern.slf4j.Slf4j;
import org.quartz.DisallowConcurrentExecution;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.springframework.scheduling.quartz.QuartzJobBean;

/**
 * 占位 Job，用于替代数据库中残留但类已不存在的历史 Quartz Job。
 *
 * 当 SafeClassLoadHelper 无法加载原始的 JOB_CLASS_NAME 时，会返回此类的 Class 对象，
 * 避免 Quartz 因 Job class cannot be null 异常而崩溃。
 * 该 Job 不会执行任何实际逻辑，仅记录一条警告日志。
 *
 * @author 荔枝源码
 */
@DisallowConcurrentExecution
@Slf4j
public class DummyJob extends QuartzJobBean {

    @Override
    protected void executeInternal(JobExecutionContext context) throws JobExecutionException {
        log.warn("[DummyJob][executeInternal] 当前 Job 为占位任务，原始 Job 类已不存在。" +
                "JobKey: {}，请检查 QRTZ_JOB_DETAILS 表并清理残留数据。", context.getJobDetail().getKey());
    }

}
