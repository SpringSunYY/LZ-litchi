package com.lz.framework.vector.core.feature;

import org.slf4j.Logger;

import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.LongAdder;

/**
 * 三个 extractor（CLIP / SigLIP / DINOv2）共用的"性能摘要日志"封装。
 * <p>
 * 与算法无关：只承载"推理耗时统计 + 定时打印 + 五段诊断采样"的可复用部分，不涉及任何 extractor
 * 的图片处理 / 模型加载 / ONNX 调用。
 * <p>
 * 设计要点：
 * <ul>
 *   <li>统计字段用 {@link LongAdder} / {@link AtomicInteger}，
 *       满足多线程并发累计；打印和清零在调用方线程串行完成（不会有数据竞争）。</li>
 *   <li>打印受 {@code perfLogEnabled} 控制：关掉开关后 stopwatch 不停（依然累计耗时），
 *       但不输出任何日志 —— 调用方用 {@link #isEnabled()} 判断后再调用。</li>
 *   <li>异常日志（log.error / log.warn 推理失败）不在本类范围内，由各 extractor 自行处理。</li>
 * </ul>
 */
final class PerfRecorder {

    private final Logger log;
    private final String modelTag;
    private final boolean enabled;

    // 累计总耗时（纳秒）
    private final LongAdder prepNs = new LongAdder();
    private final LongAdder runNs = new LongAdder();
    // 累计推理次数
    private final LongAdder calls = new LongAdder();

    // ============ 五段诊断采样 ============
    // 每 DIAG_EVERY 次推理采样 1 张，打印五段耗时分解（toRgb / resize+crop / prep / run / borrowWait）。
    // 与算法无关：只是个采样计数器 + 日志打印封装；具体每个段的耗时由调用方测好后传进来。
    private final AtomicInteger diagSample = new AtomicInteger(0);
    private static final int DIAG_EVERY = 10;

    PerfRecorder(Logger log, String modelTag, boolean enabled) {
        this.log = log;
        this.modelTag = modelTag;
        this.enabled = enabled;
    }

    boolean isEnabled() {
        return enabled;
    }

    /** 单次推理完成时调用：累加 prep / run 耗时与计数。是否打印由 isEnabled() 控制。 */
    void record(long prepNanos, long runNanos) {
        prepNs.add(prepNanos);
        runNs.add(runNanos);
        calls.increment();
    }

    /**
     * 打印并清零本次批次的性能摘要。
     *
     * @param tag 自定义标签（调用方传入），便于区分不同批次 / 调用方线程
     */
    void logAndReset(String tag) {
        if (!enabled) return;
        int c = (int) calls.sumThenReset();
        if (c == 0) {
            log.info("[{} 性能][{}] 本批无推理调用", modelTag, tag);
            return;
        }
        long prepMs = prepNs.sumThenReset() / 1_000_000L;
        long runMs = runNs.sumThenReset() / 1_000_000L;
        log.info("[{} 性能][{}] 调用 {} 次 | 预处理 {}ms ({}ms/次) | run() {}ms ({}ms/次) | 占比 prep:run = {}:{}",
                modelTag, tag, c,
                prepMs, prepMs / c,
                runMs, runMs / c,
                prepMs, runMs);
    }

    /**
     * 打印当前累计的性能摘要（不清零），用于"每 N 次推理打一次"之类的轻量诊断。
     */
    void logSnapshot(String tag) {
        if (!enabled) return;
        long c = calls.sum();
        if (c == 0) return;
        long prepMs = prepNs.sum() / 1_000_000L;
        long runMs = runNs.sum() / 1_000_000L;
        double avgPrep = (double) prepMs / c;
        double avgRun = (double) runMs / c;
        // 重要：calls 是"推理次数"（每次 runInference 加 1），不是"图片数"。
        // 多尺度+hflip 时：1 张图 = scales.length × (1 + hflipEnabled ? 1 : 0) 次推理。
        // 措辞必须用"次"而不是"张"，否则用户会误以为是 5511 张图片。
        String msg = String.format("[%s 性能][%s] 已推理 %d 次 | 平均 单次预处理 %.1fms / 单次ONNX %.1fms",
                modelTag, tag, c, avgPrep, avgRun);
        log.info(msg);
    }

    // ============ 五段诊断 API ============

    /**
     * 五段诊断槽位定义。调用方在每次推理后用对应槽位累加毫秒。
     * <ul>
     *   <li>{@link #TO_RGB}        - BufferedImage 转 RGB（AWT drawImage）</li>
     *   <li>{@link #RESIZE_CROP}   - resize + centerCrop / padToSize（resize 算法）</li>
     *   <li>{@link #PREP}          - NCHW float 填充（像素遍历 + 归一化）</li>
     *   <li>{@link #RUN}           - session.run()（含 OnnxTensor 构造 + native forward）</li>
     *   <li>{@link #BORROW_WAIT}   - 借 session 的等待时间（池满时 blocked）</li>
     * </ul>
     * 索引必须严格保持顺序 —— {@link #logDiag} 按索引读。
     */
    static final int TO_RGB = 0;
    static final int RESIZE_CROP = 1;
    static final int PREP = 2;
    static final int RUN = 3;
    static final int BORROW_WAIT = 4;
    static final int FAIL_COUNT = 5;
    /** diag 数组最小长度固定 6 （5 段 + failCount） */
    static final int DIAG_SLOTS = 6;

    /**
     * 决定本张图是否命中五段诊断采样。调用方在每张图推理入口调一次，
     * 若返回非 null，就用返回的 {@code long[6]} 数组累加各段耗时。
     * <p>
     * 关闭 perf 开关时永远返回 null —— 不需要采样，不打日志。
     *
     * @return 非 null 数组 = 本张命中采样，调用方按 DIAG_SLOTS 索引累加；
     *         null = 不采样，按原路径走，不增加任何开销
     */
    long[] tryStartDiag() {
        if (!enabled) return null;
        int c = diagSample.incrementAndGet();
        if (c % DIAG_EVERY != 0) return null;
        return new long[DIAG_SLOTS];
    }

    /**
     * 打印五段诊断结果。{@code diag} / {@code totalMs} / {@code toRgbMs} 由调用方提供。
     *
     * @param sampleCount  采样计数（{@link #tryStartDiag} 内部计数的当前值），仅用于日志
     * @param totalMs      单图端到端总耗时（毫秒）
     * @param toRgbMs      toRgb 段耗时（毫秒）
     * @param diag         tryStartDiag 返回的数组；6 个槽位分别对应 5 段 + failCount
     */
    void logDiag(int sampleCount, long totalMs, long toRgbMs, long[] diag) {
        if (!enabled || diag == null) return;
        long sumInner = diag[RESIZE_CROP] + diag[PREP] + diag[RUN] + diag[BORROW_WAIT];
        long other = totalMs - sumInner - toRgbMs;
        log.info("[{} 五段] sample={} | toRgb={}ms | resize+crop={}ms | prep={}ms | run={}ms | borrowWait={}ms | 失败 {} 尺度 | unaccounted={}ms",
                modelTag, sampleCount,
                toRgbMs,
                diag[RESIZE_CROP],
                diag[PREP],
                diag[RUN],
                diag[BORROW_WAIT],
                diag[FAIL_COUNT],
                other);
    }
}
