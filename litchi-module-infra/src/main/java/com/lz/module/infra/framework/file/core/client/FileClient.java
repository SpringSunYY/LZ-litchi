package com.lz.module.infra.framework.file.core.client;

import com.lz.module.infra.framework.file.core.client.s3.FilePresignedUrlRespDTO;

/**
 * 文件客户端
 *
 * @author 荔枝源码
 */
public interface FileClient {

    /**
     * 获取配置Key
     */
    String getConfigKey();

    /**
     * 上传文件
     *
     * @param content    文件流
     * @param path       相对路径
     * @param type       文件类型
     * @param moduleType 模块类型
     * @return 完整路径，即 HTTP 访问地址
     * @throws Exception 上传文件时，抛出 Exception 异常
     */
    String upload(byte[] content, String path, String type, String moduleType) throws Exception;

    /**
     * 上传文件（兼容旧方法）
     */
    default String upload(byte[] content, String path, String type) throws Exception {
        return upload(content, path, type, null);
    }

    /**
     * 删除文件
     *
     * @param path 相对路径
     * @throws Exception 删除文件时，抛出 Exception 异常
     */
    void delete(String path) throws Exception;

    /**
     * 获得文件的内容
     *
     * @param path 相对路径
     * @return 文件的内容
     */
    byte[] getContent(String path) throws Exception;

    /**
     * 获得文件预签名地址
     *
     * @param path 相对路径
     * @return 文件预签名地址
     */
    default FilePresignedUrlRespDTO getPresignedObjectUrl(String path) throws Exception {
        throw new UnsupportedOperationException("不支持的操作");
    }

    /**
     * 更新文件元数据（可选实现，用于同步文件信息）
     *
     * @param path 文件路径
     * @param name 文件名
     * @param type 文件类型
     * @param size 文件大小
     */
    default void updateMetadata(String path, String name, String type, Integer size) {
        // 默认不实现
    }

}
