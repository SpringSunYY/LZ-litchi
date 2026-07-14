package com.lz.module.infra.controller.admin.vector;

import cn.hutool.core.io.IoUtil;
import com.lz.framework.common.pojo.CommonResult;
import com.lz.framework.common.pojo.PageResult;
import com.lz.framework.vector.constants.CollectionConstants;
import com.lz.framework.vector.pojo.SearchResult;
import com.lz.module.infra.controller.admin.file.vo.file.FileUploadReqVO;
import com.lz.module.infra.controller.admin.file.vo.file.FileUploadRespVO;
import com.lz.module.infra.controller.admin.vector.vo.*;
import com.lz.module.infra.dal.dataobject.file.FileDO;
import com.lz.module.infra.service.file.FileService;
import com.lz.module.infra.service.vector.ImageSearchService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.annotation.Resource;
import jakarta.validation.Valid;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;
import java.util.Map;

import static com.lz.framework.common.pojo.CommonResult.success;

@Tag(name = "管理后台 - 以图搜图")
@RestController
@RequestMapping("/infra/vector/image")
@Validated
@Slf4j
public class VectorImageController {

    @Resource
    private ImageSearchService imageSearchService;

    @Resource
    private FileService fileService;

    /**
     * 上传并索引单张图片
     * <p>顺序：先写文件日志（拿到 fileId + 真 url）→ 再索引（写 Milvus，fileId 直接传入）。
     * <p>回滚：写向量失败 → 把刚写的文件日志删掉，避免孤儿日志（infra_file 行 + 文件存储）。
     */
    @PostMapping("/upload")
    @Operation(summary = "上传并索引单张图片")
    @PreAuthorize("@ss.hasPermission('infra:vectorImage:add')")
    public CommonResult<UploadRespVO> uploadImage(FileUploadReqVO uploadReqVO) throws Exception {
        MultipartFile file = uploadReqVO.getFile();
        byte[] content = IoUtil.readBytes(file.getInputStream());
        //首先根据文件名查询文件是否存在，如果存在就没必要构建了，因为这里只是测试
        FileDO existing = fileService.getFileByFileName(file.getOriginalFilename());
        if (existing != null) {
            return success(new UploadRespVO());
        }
        // 1) 先写文件日志：拿到 fileId 和真 url
        FileUploadRespVO uploaded = fileService.createFile(content, file.getOriginalFilename(),
                uploadReqVO.getDirectory(), file.getContentType(), uploadReqVO.getModuleType() == null ? "infra" : uploadReqVO.getModuleType());
        // 2) 再索引：用真 url 写 Milvus.imagePath，保证搜索结果可点开
        try {
            return success(imageSearchService.uploadImage(uploaded.getUrl(), content, uploaded.getId(), CollectionConstants.INFRA_IMAGE_SEARCH));
        } catch (Exception e) {
            // 索引失败 → 回滚日志（删 infra_file 行 + 文件存储）
            try {
                fileService.deleteFile(uploaded.getId());
            } catch (Exception ignore) {
            }
            throw e;
        }
    }

    /**
     * 批量上传并索引多张图片。
     *
     * <p>逐个按文件名查重（命中即跳过、未命中才落盘 + 建向量），单条失败不影响其他文件。
     * 用于：管理后台一次拖多张图快速入库；与单图接口相同的去重策略。
     */
    @PostMapping("/upload/batch")
    @Operation(summary = "批量上传并索引图片（同名跳过）")
    @PreAuthorize("@ss.hasPermission('infra:vectorImage:add')")
    public CommonResult<BatchUploadRespVO> uploadImages(
            @RequestParam("files") List<MultipartFile> files,
            @RequestParam(value = "moduleType", required = false) String moduleType) throws Exception {
        return success(imageSearchService.batchUpload(files, moduleType, CollectionConstants.INFRA_IMAGE_SEARCH));
    }

    /**
     * 按 URL 列表索引图片（demo 的 /import 风格的轻量版本）。
     *
     * <p>流程：对每个 URL 按末段文件名查 infra_file，命中跳过、未命中下载后落盘 + 建向量。
     * 单条失败不影响其他 URL。
     */
    @PostMapping("/upload/urls")
    @Operation(summary = "按 URL 列表索引图片（同名跳过）")
    @PreAuthorize("@ss.hasPermission('infra:vectorImage:add')")
    public CommonResult<BatchUploadRespVO> uploadImagesByUrls(@Valid @RequestBody UploadUrlsReqVO reqVO) throws Exception {
        return success(imageSearchService.uploadImagesByUrls(reqVO.getUrls(), CollectionConstants.INFRA_IMAGE_SEARCH));
    }

    /**
     * 从服务器本地目录导入图片并索引（demo 的 /import 风格）。
     *
     * <p>递归（可选）扫描目录下的图片，逐个按文件名查 infra_file，命中跳过、
     * 未命中走 fileService.createFile + imageIndexService.index。
     *
     * <p>注意：路径是 <b>服务器</b> 的本地路径，不是浏览器侧路径。
     */
    @PostMapping("/upload/import")
    @Operation(summary = "从本地目录导入图片并索引（同名跳过）")
    @PreAuthorize("@ss.hasPermission('infra:vectorImage:add')")
    public CommonResult<BatchUploadRespVO> importFromDirectory(
            @RequestParam("dir") String dir,
            @RequestParam(value = "recursive", defaultValue = "true") boolean recursive) throws Exception {
        return success(imageSearchService.importFromDirectory(dir, recursive, CollectionConstants.INFRA_IMAGE_SEARCH));
    }

    /**
     * 获得图片分页
     */
    @GetMapping("/page")
    @Operation(summary = "获得以图搜图图片分页")
    @PreAuthorize("@ss.hasPermission('infra:vectorImage:query')")
    public CommonResult<PageResult<VectorImageRespVO>> getImagePage(@Valid VectorImagePageReqVO pageVO) {
        return success(imageSearchService.getImagePage(pageVO, CollectionConstants.INFRA_IMAGE_SEARCH));
    }

    /**
     * 获得图片详情（按 id）
     */
    @GetMapping("/get")
    @Operation(summary = "获得以图搜图图片详情")
    @Parameter(name = "id", description = "图片主键", required = true)
    @PreAuthorize("@ss.hasPermission('infra:vectorImage:query')")
    public CommonResult<VectorImageRespVO> getImage(@RequestParam("id") String id) {
        List<VectorImageRespVO> list = imageSearchService.getImageListByIds(List.of(id), CollectionConstants.INFRA_IMAGE_SEARCH);
        return success(list.isEmpty() ? null : list.getFirst());
    }

    /**
     * 删除图片（按 id）
     */
    @DeleteMapping("/delete")
    @Operation(summary = "删除以图搜图图片")
    @Parameter(name = "id", description = "图片主键", required = true)
    @PreAuthorize("@ss.hasPermission('infra:vectorImage:delete')")
    public CommonResult<Boolean> deleteImage(@RequestParam("id") String id) throws Exception {
        return success(imageSearchService.deleteImage(id, CollectionConstants.INFRA_IMAGE_SEARCH));
    }

    /**
     * 批量删除图片
     */
    @DeleteMapping("/delete-list")
    @Operation(summary = "批量删除以图搜图图片")
    @Parameter(name = "ids", description = "主键列表", required = true)
    @PreAuthorize("@ss.hasPermission('infra:vectorImage:delete')")
    public CommonResult<Integer> deleteImageList(@RequestParam("ids") List<String> ids) throws Exception {
        return success(imageSearchService.deleteImageList(ids, CollectionConstants.INFRA_IMAGE_SEARCH));
    }

    /**
     * 以图搜图（按库内 id）
     */
    @GetMapping("/search")
    @Operation(summary = "以图搜图（按库内图片 id）")
    @Parameter(name = "id", description = "库内图片主键", required = true)
    @PreAuthorize("@ss.hasPermission('infra:vectorImage:search')")
    public CommonResult<List<SearchResult>> searchById(@RequestParam("id") String id,
                                                       @Valid VectorImageSearchReqVO reqVO) throws Exception {
        return success(imageSearchService.searchById(id, reqVO.getTopK(), CollectionConstants.INFRA_IMAGE_SEARCH));
    }

    /**
     * 以图搜图（按上传的图片）
     */
    @PostMapping("/search/upload")
    @Operation(summary = "以图搜图（按上传图片）")
    @PreAuthorize("@ss.hasPermission('infra:vectorImage:search')")
    public CommonResult<List<SearchResult>> searchByUpload(@Valid VectorImageSearchReqVO reqVO)
            throws Exception {
        return success(imageSearchService
                .searchByStream(reqVO.getFile().getInputStream(), reqVO.getTopK(), CollectionConstants.INFRA_IMAGE_SEARCH));
    }

    /**
     * 获得 Milvus 集合信息
     *
     * <p>之前 {@link #getCollectionInfo()} 只返回 collectionName / dimension / exists，
     * 前端要 recordCount 必须再发一次 {@code /stats}（里面要 sampleSize 参数 + 拉样本，浪费流量）。
     * 这里直接把行数也带回，避免前端二次请求；同时保留 {@link #getCollectionStats} 给"想看样本"的场景用。
     */
    @GetMapping("/info")
    @Operation(summary = "获得 Milvus 集合信息")
    @PreAuthorize("@ss.hasPermission('infra:vectorImage:query')")
    public CommonResult<Map<String, Object>> getCollectionInfo() {
        return success(imageSearchService.getCollectionInfo(CollectionConstants.INFRA_IMAGE_SEARCH));
    }

    /**
     * 获得 Milvus 集合统计信息（记录数 + 样本）
     */
    @GetMapping("/stats")
    @Operation(summary = "获得 Milvus 集合统计信息")
    @Parameter(name = "sampleSize", description = "样本数量")
    @PreAuthorize("@ss.hasPermission('infra:vectorImage:query')")
    public CommonResult<Map<String, Object>> getCollectionStats(
            @RequestParam(value = "sampleSize", defaultValue = "20") Integer sampleSize) {
        return success(imageSearchService.getCollectionStats(sampleSize == null ? 20 : sampleSize, CollectionConstants.INFRA_IMAGE_SEARCH));
    }

    /**
     * 重置集合（清空数据并重建）
     */
    @DeleteMapping("/reset")
    @Operation(summary = "重置 Milvus 集合")
    @PreAuthorize("@ss.hasPermission('infra:vectorImage:delete')")
    public CommonResult<Boolean> resetCollection() throws Exception {
        imageSearchService.resetCollection(CollectionConstants.INFRA_IMAGE_SEARCH);
        return success(true);
    }
}
