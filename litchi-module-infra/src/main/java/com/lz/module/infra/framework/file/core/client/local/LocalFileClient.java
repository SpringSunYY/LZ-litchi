package com.lz.module.infra.framework.file.core.client.local;

import cn.hutool.core.io.FileUtil;
import com.lz.module.infra.framework.file.core.client.AbstractFileClient;

import java.io.File;

/**
 * 本地文件客户端
 *
 * @author 荔枝源码
 */
public class LocalFileClient extends AbstractFileClient<LocalFileClientConfig> {

    public LocalFileClient(String configKey, LocalFileClientConfig config) {
        super(configKey, config);
    }

    @Override
    protected void doInit() {
    }

    @Override
    public String upload(byte[] content, String path, String type, String moduleType) {
        // 执行写入
        String filePath = getFilePath(path);
        FileUtil.writeBytes(content, filePath);
        // 拼接返回路径
        return super.formatFileUrl(config.getDomain(), path);
    }

    @Override
    public void delete(String path) {
        String filePath = getFilePath(path);
        FileUtil.del(filePath);
    }

    @Override
    public byte[] getContent(String path) {
        String filePath = getFilePath(path);
        return FileUtil.readBytes(filePath);
    }

    private String getFilePath(String path) {
        return config.getBasePath() + File.separator + path;
    }

}
