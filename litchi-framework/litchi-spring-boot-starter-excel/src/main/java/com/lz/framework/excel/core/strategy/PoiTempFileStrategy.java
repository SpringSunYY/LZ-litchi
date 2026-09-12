package com.lz.framework.excel.core.strategy;

import lombok.extern.slf4j.Slf4j;
import org.apache.poi.openxml4j.opc.ZipPackage;
import org.apache.poi.util.TempFile;
import org.apache.poi.util.TempFileCreationStrategy;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.UUID;

/**
 * POI 临时文件目录策略 + PackagePart 清理工具。
 *
 * <h3>背景：为什么要这个类？</h3>
 * POI 默认把 PackagePart 数据存在内存（{@code MemoryPackagePart}）。
 * 导出含大量图片的 xlsx 时，<b>所有图片 byte[] 在堆里驻留到 {@code workbook.write()}</b>，极易 OOM。
 *
 * <p>解法：调用 {@code ZipPackage.setUseTempFilePackageParts(true)} 让 POI 把 PackagePart 写到
 * <b>磁盘临时文件</b>（{@code TempFilePackagePart}），避免占用堆内存。
 *
 * <h3>并发安全（每请求独立目录）</h3>
 * <p><b>关键设计</b>：用 {@link ThreadLocal} 跟踪当前线程/请求的"工作目录"。
 * <ul>
 *   <li>{@link #acquireTempDir()}：分配一个 UUID 子目录（如 {@code lz-poi-tmp/export-uuid/}），
 *       设为当前线程的"工作目录"。</li>
 *   <li>POI TempFileCreationStrategy 创建临时文件时，<b>优先用当前线程的工作目录</b>。</li>
 * </ul>
 * <p>这样：
 * <ul>
 *   <li>多线程并发时，每个线程的文件不冲突（不会误删别线程文件）</li>
 *   <li>导出完成后删除整个子目录，<b>一次性清掉本次所有临时文件</b></li>
 * </ul>
 *
 * <h3>清理时机</h3>
 * <p>EasyExcel 的 finish() 顺序：{@code afterWorkbookDispose() → workbook.write(stream) → workbook.close() → SXSSFWorkbook.dispose()}。
 * <p>所以 {@code afterWorkbookDispose} 时 workbook 还<b>未关闭</b>，不能在这里关 PackagePart（会删除后续 write 需要的临时文件）。
 * <p>必须在 {@code workbook.close()} 之后清理——即业务侧 ExcelUtils.write 的 finally 块中调用
 *
 * @author 荔枝源码
 */
@Slf4j
public final class PoiTempFileStrategy {

    /**
     * 根子目录名（放在 {@code java.io.tmpdir} 之下）。
     */
    private static final String POI_TEMP_ROOT = "lz-poi-tmp";

    /**
     * 当前线程/请求的"工作目录"——POI 临时文件会优先创建在这里。
     * <p>{@code null} 时回退到根目录（lz-poi-tmp/）。
     */
    private static final ThreadLocal<File> CURRENT_THREAD_TEMP_DIR = new ThreadLocal<>();

    private PoiTempFileStrategy() {
    }

    /**
     * 静态初始化：启用 POI PackagePart 落盘模式。
     * <p>幂等：多次加载类也只生效一次。
     */
    static {
        try {
            // 关键开关：让 POI 把 PackagePart 数据写到磁盘临时文件，而不是堆内存（默认是内存 → OOM）
            // 见 ZipPackage.createPartImpl：
            //   if (useTempFilePackageParts) return new TempFilePackagePart(...);
            //   else                          return new MemoryPackagePart(...);
            ZipPackage.setUseTempFilePackageParts(true);

            // 自定义策略（必须先 install 才有 setUseTempFilePackageParts 才生效）
            install();

            log.info("[PoiTempFileStrategy] POI PackagePart 落盘模式已启用（防 OOM）");
        } catch (Throwable t) {
            log.error("[PoiTempFileStrategy] 启用落盘模式失败，回退到 POI 默认行为（内存模式）: {}",
                    t.getMessage(), t);
        }
    }

    /**
     * 安装自定义 {@link TempFileCreationStrategy}。
     * <p>幂等：多次调用只有第一次生效。
     */
    public static synchronized void install() {
        try {
            TempFile.setTempFileCreationStrategy(new ThreadAwareTempFileCreationStrategy());
            log.info("[PoiTempFileStrategy] 已安装自定义 TempFileCreationStrategy");
        } catch (Exception e) {
            log.error("[PoiTempFileStrategy] 安装自定义策略失败: {}", e.getMessage(), e);
        }
    }

    /**
     * 分配本次导出的独立临时子目录（UUID 隔离），并设为当前线程工作目录。
     * <p><b>必须在每次导出开始前调用</b>，{@code finally} 块中调 {@link #releaseTempDir} 清理。
     *
     * @return 子目录的绝对路径（{@link #releaseTempDir} 用）
     */
    public static String acquireTempDir() {
        try {
            Path root = ensureRootDir();
            String subDirName = "export-" + UUID.randomUUID().toString().replace("-", "");
            Path subDir = root.resolve(subDirName);
            Files.createDirectories(subDir);
            File dir = subDir.toFile();
            CURRENT_THREAD_TEMP_DIR.set(dir);
            return dir.getAbsolutePath();
        } catch (IOException e) {
            log.error("[PoiTempFileStrategy] 分配临时目录失败: {}", e.getMessage(), e);
            try {
                File root = ensureRootDir().toFile();
                CURRENT_THREAD_TEMP_DIR.set(root);
                return root.getAbsolutePath();
            } catch (IOException ex) {
                throw new RuntimeException("无法创建 POI 临时目录", ex);
            }
        }
    }

    /**
     * 释放本次分配的临时子目录（包括里面所有临时文件）。
     * <p>幂等：多次调用安全；清理后清掉 ThreadLocal。
     *
     * @param subDirPath {@link #acquireTempDir} 返回的子目录绝对路径；null 跳过
     */
    public static void releaseTempDir(String subDirPath) {
        // 清 ThreadLocal（避免线程复用导致下一个请求用错目录）
        CURRENT_THREAD_TEMP_DIR.remove();
        if (subDirPath == null || subDirPath.isEmpty()) {
            return;
        }
        File dir = new File(subDirPath);
        if (!dir.exists()) {
            return;
        }
        try {
            int deletedCount = deleteRecursively(dir);
            log.info("[PoiTempFileStrategy] [线程 {}] 已清理临时目录: {}（删除 {} 项）",
                    Thread.currentThread().getName(), subDirPath, deletedCount);
        } catch (Exception e) {
            log.warn("[PoiTempFileStrategy] 清理临时目录失败 [{}]: {}", subDirPath, e.getMessage());
        }
    }

    // ====================================================================================
    // 内部：目录管理
    // ====================================================================================

    /**
     * 确保根目录存在（不存在则创建）。
     */
    private static Path ensureRootDir() throws IOException {
        Path root = new File(System.getProperty("java.io.tmpdir"), POI_TEMP_ROOT).toPath();
        Files.createDirectories(root);
        return root;
    }

    /**
     * 递归删除目录。
     *
     * @return 删除的文件/目录数
     */
    private static int deleteRecursively(File file) {
        if (file == null || !file.exists()) {
            return 0;
        }
        int count = 0;
        if (file.isDirectory()) {
            File[] children = file.listFiles();
            if (children != null) {
                for (File child : children) {
                    count += deleteRecursively(child);
                }
            }
        }
        if (file.delete()) {
            count++;
        } else {
            file.deleteOnExit();
        }
        return count;
    }

    // ====================================================================================
    // 内部：TempFileCreationStrategy 实现（线程感知）
    // ====================================================================================

    /**
     * 自定义临时文件创建策略——线程感知。
     *
     * <p>行为：
     * <ul>
     *   <li>当前线程 {@link #CURRENT_THREAD_TEMP_DIR} 有值 → 在该子目录下创建临时文件</li>
     *   <li>否则 → 在根目录（{@code lz-poi-tmp/}）下创建</li>
     *   <li>每次创建前都检查目录是否存在（避免被清理工具删除）</li>
     * </ul>
     */
    private static final class ThreadAwareTempFileCreationStrategy implements TempFileCreationStrategy {

        @Override
        public File createTempFile(String prefix, String suffix) throws IOException {
            Path base = resolveBaseDir();
            return Files.createTempFile(base, prefix, suffix).toFile();
        }

        @Override
        public File createTempDirectory(String prefix) throws IOException {
            Path base = resolveBaseDir();
            return Files.createTempDirectory(base, prefix).toFile();
        }

        private Path resolveBaseDir() throws IOException {
            File threadDir = CURRENT_THREAD_TEMP_DIR.get();
            if (threadDir != null) {
                if (!threadDir.exists() || !threadDir.isDirectory()) {
                    // 被清理工具删了，重建
                    Files.createDirectories(threadDir.toPath());
                }
                return threadDir.toPath();
            }
            return ensureRootDir();
        }
    }
}
