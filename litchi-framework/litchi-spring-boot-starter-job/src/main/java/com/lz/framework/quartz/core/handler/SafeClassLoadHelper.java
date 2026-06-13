package com.lz.framework.quartz.core.handler;

import lombok.extern.slf4j.Slf4j;
import org.quartz.spi.ClassLoadHelper;

import java.io.InputStream;
import java.net.URL;

/**
 * 安全的 ClassLoadHelper，当 Quartz 从数据库加载 Job 时，如果 JOB_CLASS_NAME 对应的类不存在，
 * 会依次尝试回退到 {@link JobHandlerInvoker}，最后回退到 {@link DummyJob} 占位类。
 *
 * 回退链：原始类名 → JobHandlerInvoker → DummyJob
 * 这解决了 Quartz 使用 JDBC JobStore 时，历史残留的 JobDetail 中引用了不存在的类导致启动失败的问题。
 *
 * @author 荔枝源码
 */
@Slf4j
public class SafeClassLoadHelper implements ClassLoadHelper {

    /**
     * 当原始类找不到时，优先回退到的目标类
     */
    private static final String FALLBACK_JOB_CLASS = JobHandlerInvoker.class.getName();

    private ClassLoader classLoader;

    @Override
    public void initialize() {
        this.classLoader = Thread.currentThread().getContextClassLoader();
    }

    @Override
    public Class<?> loadClass(String name) throws ClassNotFoundException {
        // 第一层：尝试加载原始类
        Class<?> clazz = tryLoadClass(name);
        if (clazz != null) {
            return clazz;
        }

        // 第二层：回退到 JobHandlerInvoker（当前正确的 Job 调用者）
        if (!FALLBACK_JOB_CLASS.equals(name)) {
            clazz = tryLoadClass(FALLBACK_JOB_CLASS);
            if (clazz != null) {
                log.info("[SafeClassLoadHelper][loadClass] 原始类 {} 不存在，已自动回退到 {}", name, FALLBACK_JOB_CLASS);
                return clazz;
            }
        }

        // 第三层：最终兜底，使用 DummyJob 占位
        log.warn("[SafeClassLoadHelper][loadClass] 原始类 {} 和回退类 {} 均无法加载，使用 DummyJob 占位。" +
                "请检查 QRTZ_JOB_DETAILS 表并清理残留数据。", name, FALLBACK_JOB_CLASS);
        return DummyJob.class;
    }

    @Override
    @SuppressWarnings("unchecked")
    public <T> Class<? extends T> loadClass(String name, Class<T> clazz) throws ClassNotFoundException {
        // 复用 loadClass(String) 的逐级回退逻辑
        return (Class<? extends T>) loadClass(name);
    }

    /**
     * 尝试加载指定类名，成功返回 Class 对象，失败返回 null
     */
    private Class<?> tryLoadClass(String name) {
        try {
            return Class.forName(name, true, this.classLoader);
        } catch (ClassNotFoundException e) {
            return null;
        }
    }

    @Override
    public URL getResource(String name) {
        return this.classLoader.getResource(name);
    }

    @Override
    public InputStream getResourceAsStream(String name) {
        return this.classLoader.getResourceAsStream(name);
    }

    @Override
    public ClassLoader getClassLoader() {
        return this.classLoader;
    }
}
