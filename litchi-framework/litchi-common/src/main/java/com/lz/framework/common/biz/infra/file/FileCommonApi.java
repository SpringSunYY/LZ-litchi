package com.lz.framework.common.biz.infra.file;

import com.lz.framework.common.biz.infra.file.dto.FileSimpVo;
import jakarta.validation.constraints.NotEmpty;

import java.util.List;

/**
 * 文件 API 接口
 *
 * @author 荔枝源码
 */
public interface FileCommonApi {

    /**
     * 保存文件，并返回文件的访问路径
     *
     * @param content 文件内容
     * @return 文件路径
     */
    default String createFile(byte[] content) {
        return createFile(content, null, null, null, null);
    }

    /**
     * 保存文件，并返回文件的访问路径
     *
     * @param content 文件内容
     * @param name    文件名称，允许空
     * @return 文件路径
     */
    default String createFile(byte[] content, String name) {
        return createFile(content, name, null, null, null);
    }

    /**
     * 保存文件，并返回文件的访问路径
     *
     * @param content   文件内容
     * @param name      文件名称，允许空
     * @param directory 目录，允许空
     * @param type      文件的 MIME 类型，允许空
     * @return 文件路径
     */
    default String createFile(byte[] content, String name, String directory, String type) {
        return createFile(content, name, directory, type, null);
    }

    String createFile(byte[] content, String name, String directory, String type, String moduleType);

    /**
     * 获取文件路径
     *
     * @param path 文件路径
     */
    String getFilePath(@NotEmpty(message = "文件路径不能为空") String path);

    /**
     * 获取文件路径列表
     *
     * @param path 文件路径
     */
    List<String> getFilePaths(@NotEmpty(message = "文件路径不能为空") String path);

    /**
     * 获取文件内容
     */
    List<byte[]> getFileContents(String path);

    /**
     * 获取文件内容
     */
    public byte[] getFileContent(String path);

    /**
     * 创建文件返回文件保存信息
     */
    FileSimpVo createFileReturnFileSimpVo(byte[] content, String moduleType);

    /**
     * 删除文件
     */
    void deleteFile(Long fileId) throws Exception;

    /**
     * 获取文件保存信息
     */
    List<FileSimpVo> getFileSimpList(List<Long> fileIds);
}
