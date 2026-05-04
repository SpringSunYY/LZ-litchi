package com.lz.module.infra.framework.file.core.client;

import com.lz.module.infra.framework.file.core.enums.FileStorageEnum;

public interface FileClientFactory {

    /**
     * 获得文件客户端
     *
     * @param configKey 配置key
     * @return 文件客户端
     */
    FileClient getFileClient(String configKey);

    /**
     * 创建文件客户端
     *
     * @param configKey 配置key
     * @param storage   存储器的枚举 {@link FileStorageEnum}
     * @param config   文件配置
     */
    <Config extends FileClientConfig> void createOrUpdateFileClient(String configKey, Integer storage, Config config);

}
