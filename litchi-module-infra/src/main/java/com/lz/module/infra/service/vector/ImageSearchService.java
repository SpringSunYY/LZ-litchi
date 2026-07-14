package com.lz.module.infra.service.vector;

import com.lz.framework.common.pojo.PageResult;
import com.lz.framework.vector.pojo.SearchResult;
import com.lz.module.infra.controller.admin.vector.vo.BatchUploadRespVO;
import com.lz.module.infra.controller.admin.vector.vo.UploadRespVO;
import com.lz.module.infra.controller.admin.vector.vo.VectorImagePageReqVO;
import com.lz.module.infra.controller.admin.vector.vo.VectorImageRespVO;
import org.springframework.web.multipart.MultipartFile;

import java.io.InputStream;
import java.util.List;
import java.util.Map;

public interface ImageSearchService {

    /**
     * 上传图片并写入 Milvus 向量库
     *
     * @param fileUrl   文件访问 URL
     * @param content   文件原始字节
     * @param fileId    关联的 infra_file.id
     * @param collection Milvus 集合名
     * @return 上传结果（id + url）
     */
    UploadRespVO uploadImage(String fileUrl, byte[] content, Long fileId, String collection) throws Exception;

    /**
     * 批量上传图片。
     *
     * <p>逐个按文件名查 infra_file，已存在则跳过、不构建向量；不存在的走索引。
     * 单个文件失败不影响其他文件。
     *
     * @param files       上传的文件列表
     * @param moduleType  模块类型
     * @param collection  Milvus 集合名
     * @return 批量结果
     */
    BatchUploadRespVO batchUpload(List<MultipartFile> files, String moduleType, String collection) throws Exception;

    /**
     * 按 URL 列表构建向量。
     *
     * <p>对每个 URL 下载字节 → fileService.createFile → 索引。
     * 单条失败不影响其他 URL。
     *
     * @param urls       图片 URL 列表
     * @param collection Milvus 集合名
     * @return 批量结果
     */
    BatchUploadRespVO uploadImagesByUrls(List<String> urls, String collection) throws Exception;

    /**
     * 从本地目录导入图片并构建向量。
     *
     * <p>递归（可选）扫描目录下的图片，对每个文件查 infra_file，命中跳过、未命中入库。
     * 单个文件失败不影响其他文件。
     *
     * @param dir        本地目录（绝对路径或相对路径）
     * @param recursive  是否递归子目录
     * @param collection Milvus 集合名
     * @return 批量结果
     */
    BatchUploadRespVO importFromDirectory(String dir, boolean recursive, String collection) throws Exception;

    /**
     * 获得图片分页（基于 Milvus 条件查询，内存分页）
     *
     * @param pageReqVO 分页查询条件
     * @param collection Milvus 集合名
     * @return 分页结果
     */
    PageResult<VectorImageRespVO> getImagePage(VectorImagePageReqVO pageReqVO, String collection);

    /**
     * 按主键集合查询图片
     *
     * @param ids        主键列表
     * @param collection Milvus 集合名
     * @return 图片列表
     */
    List<VectorImageRespVO> getImageListByIds(List<String> ids, String collection);

    /**
     * 删除图片（按 id）
     *
     * @param id         主键
     * @param collection Milvus 集合名
     * @return 是否成功
     */
    boolean deleteImage(String id, String collection) throws Exception;

    /**
     * 批量删除图片（按 id 列表）
     *
     * @param ids        主键列表
     * @param collection Milvus 集合名
     * @return 删除成功的数量
     */
    int deleteImageList(List<String> ids, String collection) throws Exception;

    /**
     * 以图搜图（按 id）
     *
     * @param id         库内已索引的图片 id
     * @param topK       返回 Top K
     * @param collection Milvus 集合名
     * @return 相似结果
     */
    List<SearchResult> searchById(String id, int topK, String collection) throws Exception;

    /**
     * 以图搜图（按上传的输入流）
     *
     * @param inputStream 查询图输入流（方法内部会关闭）
     * @param topK       返回 Top K
     * @param collection Milvus 集合名
     * @return 相似结果
     */
    List<SearchResult> searchByStream(InputStream inputStream, int topK, String collection) throws Exception;

    /**
     * 获得 Milvus 集合信息（集合名 / 维度 / 是否存在）
     *
     * @param collection Milvus 集合名
     */
    Map<String, Object> getCollectionInfo(String collection);

    /**
     * 获得 Milvus 集合统计（记录数 + 样本）
     *
     * @param sampleSize 样本数量
     * @param collection Milvus 集合名
     */
    Map<String, Object> getCollectionStats(int sampleSize, String collection);

    /**
     * 重置集合（清空数据并重建）
     *
     * @param collection Milvus 集合名
     */
    void resetCollection(String collection) throws Exception;
}
