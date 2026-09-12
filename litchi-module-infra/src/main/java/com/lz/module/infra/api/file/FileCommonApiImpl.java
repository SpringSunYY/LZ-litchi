package com.lz.module.infra.api.file;

import cn.hutool.core.util.StrUtil;
import com.lz.framework.common.biz.infra.file.FileCommonApi;
import com.lz.framework.common.biz.infra.file.dto.FileSimpVo;
import com.lz.framework.common.util.collection.ArrayUtils;
import com.lz.module.infra.controller.admin.file.vo.file.FileUploadRespVO;
import com.lz.module.infra.dal.dataobject.file.FileDO;
import com.lz.module.infra.service.file.FileService;
import jakarta.annotation.PreDestroy;
import jakarta.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.validation.annotation.Validated;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

import static com.lz.framework.common.enums.FileConstants.FILE_GET_PATH_PREFIX;
import static com.lz.framework.common.enums.FileConstants.FILE_PATH_SEPARATOR;

/**
 * 文件 API 实现类
 *
 * @author 荔枝源码
 */
@Service
@Validated
public class FileCommonApiImpl implements FileCommonApi {

    @Resource
    private FileService fileService;

    /**
     * 拉图的并发线程池。
     */
    private static final ThreadPoolExecutor FILE_FETCH_POOL = new ThreadPoolExecutor(
            Math.max(8, Runtime.getRuntime().availableProcessors() * 4),
            Math.max(16, Runtime.getRuntime().availableProcessors() * 8),
            60L, TimeUnit.SECONDS,
            new ArrayBlockingQueue<>(256),
            new ThreadFactory() {
                private final AtomicInteger seq = new AtomicInteger(1);

                @Override
                public Thread newThread(Runnable r) {
                    Thread t = new Thread(r, "file-fetch-" + seq.getAndIncrement());
                    t.setDaemon(true);
                    return t;
                }
            },
            new ThreadPoolExecutor.CallerRunsPolicy());

    @PreDestroy
    public void shutdown() {
        FILE_FETCH_POOL.shutdown();
    }

    @Override
    public String createFile(byte[] content, String name, String directory, String type, String moduleType) {
        return fileService.createFile(content, name, directory, type, moduleType).getUrl();
    }

    @Override
    public String getFilePath(String path) {
        //如果是http开头的，则直接返回
        if (path.startsWith("http")) {
            return path;
        }
        String pathStr = StrUtil.subAfter(path, FILE_GET_PATH_PREFIX, false);
        if (StrUtil.isEmpty(pathStr)) {
            return null;
        }
        // 拿到配置key
        //例如/admin-api/infra/file/database/get/2026/06/05/首次询单避免限流步骤_1780649396286.docx&segmentMaxTokens=500
        //拿到get前的database
        String[] split = pathStr.split("/get/");
        if (ArrayUtils.isEmpty(split) || split.length < 2) {
            return null;
        }
        String configKey = split[0];
        String filePath = split[1];
        return fileService.buildFileAccessUrl(configKey, filePath);
    }

    @Override
    public List<String> getFilePaths(String path) {
        if (StrUtil.isEmpty(path)) {
            return new ArrayList<>();
        }
        String[] paths = path.split(FILE_PATH_SEPARATOR);
        List<String> resultPaths = new ArrayList<>();
        //拿到每个的路径
        for (String p : paths) {
            resultPaths.add(this.getFilePath(p));
        }
        return resultPaths;
    }

    @Override
    public List<byte[]> getFileContents(String path) {
        if (StrUtil.isEmpty(path)) {
            return new ArrayList<>();
        }
        String[] paths = path.split(FILE_PATH_SEPARATOR);
        if (paths.length == 0) {
            return new ArrayList<>();
        }
        // 单图：保持同步路径，无线程池切换开销
        if (paths.length == 1) {
            byte[] only = fileService.getFileContent(paths[0]);
            return only == null ? new ArrayList<>() : new ArrayList<>(Arrays.asList(only));
        }
        // 多图：并发拉（线程池），按原顺序返回
        List<Future<byte[]>> futures = new ArrayList<>(paths.length);
        for (String p : paths) {
            Callable<byte[]> task = () -> fileService.getFileContent(p);
            futures.add(FILE_FETCH_POOL.submit(task));
        }
        List<byte[]> results = new ArrayList<>(paths.length);
        for (Future<byte[]> f : futures) {
            try {
                results.add(f.get());
            } catch (Exception e) {
                // 单个文件拉失败不影响其他文件，置 null 上层按空处理
                results.add(null);
            }
        }
        return results;
    }

    @Override
    public byte[] getFileContent(String path) {
        return fileService.getFileContent(path);
    }

    @Override
    public FileSimpVo createFileReturnFileSimpVo(byte[] content, String moduleType) {
        FileUploadRespVO fileUploadRespVO = fileService.createFile(content, null, null, null, moduleType);
        return new FileSimpVo(fileUploadRespVO.getId(), fileUploadRespVO.getName(), fileUploadRespVO.getUrl());

    }

    @Override
    public void deleteFile(Long fileId) throws Exception {
        fileService.deleteFile(fileId);
    }

    @Override
    public List<FileSimpVo> getFileSimpList(List<Long> fileIds) {
        if (fileIds == null || fileIds.isEmpty()) {
            return new ArrayList<>();
        }
        List<FileDO> fileSimpList = fileService.getFileSimpList(fileIds);
        return fileSimpList.stream()
                .map(fileDO ->
                        new FileSimpVo(fileDO.getId(), fileDO.getName(), fileDO.getRelativePath()))
                .toList();
    }
}
