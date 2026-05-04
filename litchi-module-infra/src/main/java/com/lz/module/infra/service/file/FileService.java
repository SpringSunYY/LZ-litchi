package com.lz.module.infra.service.file;

import com.lz.framework.common.pojo.PageResult;
import com.lz.module.infra.controller.admin.file.vo.file.FileCreateReqVO;
import com.lz.module.infra.controller.admin.file.vo.file.FilePageReqVO;
import com.lz.module.infra.controller.admin.file.vo.file.FilePresignedUrlRespVO;
import com.lz.module.infra.controller.admin.file.vo.file.FileRespVO;
import com.lz.module.infra.dal.dataobject.file.FileDO;
import jakarta.validation.constraints.NotEmpty;

import java.util.List;

/**
 * 文件 Service 接口
 *
 * @author 荔枝源码
 */
public interface FileService {

    /**
     * 获得文件分页
     *
     * @param pageReqVO 分页查询
     * @return 文件分页
     */
    PageResult<FileRespVO> getFilePage(FilePageReqVO pageReqVO);

    /**
     * 保存文件，并返回文件的访问路径（根据配置返回相对路径或绝对路径）
     *
     * @param content   文件内容
     * @param name      文件名称，允许空
     * @param directory 目录，允许空
     * @param type      文件的 MIME 类型，允许空
     * @return 文件访问路径（相对路径或绝对路径）
     */
    String createFile(@NotEmpty(message = "文件内容不能为空") byte[] content,
                      String name, String directory, String type);

    /**
     * 生成文件预签名地址信息
     *
     * @param name      文件名
     * @param directory 目录
     * @return 预签名地址信息
     */
    FilePresignedUrlRespVO getFilePresignedUrl(@NotEmpty(message = "文件名不能为空") String name,
                                               String directory);

    /**
     * 创建文件（用于前端上传模式）
     * 根据配置返回相对路径或绝对路径
     *
     * @param createReqVO 创建信息（包含已上传文件的相对路径和绝对路径）
     * @return 文件访问路径（相对路径或绝对路径）
     */
    String createFile(FileCreateReqVO createReqVO);

    /**
     * 删除文件
     *
     * @param id 编号
     */
    void deleteFile(Long id) throws Exception;

    /**
     * 批量删除文件
     *
     * @param ids 编号列表
     */
    void deleteFileList(List<Long> ids) throws Exception;

    /**
     * 获得文件内容
     *
     * @param configKey 配置key
     * @param path       文件路径
     * @return 文件内容
     */
    byte[] getFileContent(String configKey, String path) throws Exception;

}
