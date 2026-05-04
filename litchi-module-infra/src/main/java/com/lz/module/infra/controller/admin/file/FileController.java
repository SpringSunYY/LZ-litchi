package com.lz.module.infra.controller.admin.file;

import cn.hutool.core.io.IoUtil;
import cn.hutool.core.util.ReflectUtil;
import cn.hutool.core.util.StrUtil;
import cn.hutool.core.util.URLUtil;
import com.lz.framework.common.pojo.CommonResult;
import com.lz.framework.common.pojo.PageResult;
import com.lz.framework.tenant.core.aop.TenantIgnore;
import com.lz.module.infra.controller.admin.file.vo.file.*;
import com.lz.module.infra.dal.dataobject.file.FileConfigDO;
import com.lz.module.infra.enums.file.InfraFilePathTypeEnum;
import com.lz.module.infra.enums.file.InfraFileReturnTypeEnum;
import com.lz.module.infra.service.file.FileConfigService;
import com.lz.module.infra.service.file.FileService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.Parameters;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.annotation.Resource;
import jakarta.annotation.security.PermitAll;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.validation.Valid;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

import static com.lz.framework.common.pojo.CommonResult.success;
import static com.lz.module.infra.framework.file.core.utils.FileTypeUtils.writeAttachment;

@Tag(name = "管理后台 - 文件存储")
@RestController
@RequestMapping("/infra/file")
@Validated
@Slf4j
public class FileController {

    @Resource
    private FileService fileService;

    @Resource
    private FileConfigService fileConfigService;

    @PostMapping("/upload")
    @Operation(summary = "上传文件", description = "模式一：后端上传文件")
    public CommonResult<String> uploadFile(FileUploadReqVO uploadReqVO) throws Exception {
        MultipartFile file = uploadReqVO.getFile();
        byte[] content = IoUtil.readBytes(file.getInputStream());
        return success(fileService.createFile(content, file.getOriginalFilename(),
                uploadReqVO.getDirectory(), file.getContentType()));
    }

    @GetMapping("/presigned-url")
    @Operation(summary = "获取文件预签名地址", description = "模式二：前端上传文件：用于前端直接上传七牛、阿里云 OSS 等文件存储器")
    @Parameters({
            @Parameter(name = "name", description = "文件名称", required = true),
            @Parameter(name = "directory", description = "文件目录")
    })
    public CommonResult<FilePresignedUrlRespVO> getFilePresignedUrl(
            @RequestParam("name") String name,
            @RequestParam(value = "directory", required = false) String directory) {
        return success(fileService.getFilePresignedUrl(name, directory));
    }

    @PostMapping("/create")
    @Operation(summary = "创建文件", description = "模式二：前端上传文件：配合 presigned-url 接口，记录上传了上传的文件")
    public CommonResult<String> createFile(@Valid @RequestBody FileCreateReqVO createReqVO) {
        return success(fileService.createFile(createReqVO));
    }

    @DeleteMapping("/delete")
    @Operation(summary = "删除文件")
    @Parameter(name = "id", description = "编号", required = true)
    @PreAuthorize("@ss.hasPermission('infra:file:delete')")
    public CommonResult<Boolean> deleteFile(@RequestParam("id") Long id) throws Exception {
        fileService.deleteFile(id);
        return success(true);
    }

    @DeleteMapping("/delete-list")
    @Operation(summary = "批量删除文件")
    @Parameter(name = "ids", description = "编号列表", required = true)
    @PreAuthorize("@ss.hasPermission('infra:file:delete')")
    public CommonResult<Boolean> deleteFileList(@RequestParam("ids") List<Long> ids) throws Exception {
        fileService.deleteFileList(ids);
        return success(true);
    }

    @GetMapping("/{configKey}/get/**")
    @PermitAll
    @TenantIgnore
    @Operation(summary = "下载/预览文件")
    @Parameter(name = "configKey", description = "配置key", required = true)
    public void getFileContent(HttpServletRequest request,
                               HttpServletResponse response,
                               @PathVariable("configKey") String configKey) throws Exception {
        // 获取请求的路径
        String path = StrUtil.subAfter(request.getRequestURI(), "/get/", false);
        if (StrUtil.isEmpty(path)) {
            throw new IllegalArgumentException("结尾的 path 路径必须传递");
        }
        // 解码，解决中文路径的问题 https://gitee.com/zhijiantianya/litchi/pulls/807/
        path = URLUtil.decode(path);

        // 获取配置判断返回类型
        FileConfigDO config = fileConfigService.getFileConfig(configKey);
        if (config != null && InfraFileReturnTypeEnum.FILE_RETURN_TYPE_0.getStatus().equals(config.getReturnType())) {
            // 返回 URL 类型，根据 pathType 返回绝对路径或相对路径
            String url;
            if (InfraFilePathTypeEnum.FILE_PATH_TYPE_1.getStatus().equals(config.getPathType())) {
                // 绝对路径
                url = getDomainByConfig(configKey) + "/admin-api/infra/file/" + configKey + "/get/" + path;
            } else {
                // 相对路径
                url = "/admin-api/infra/file/" + configKey + "/get/" + path;
            }
            // 重定向到URL
            response.sendRedirect(url);
            return;
        }

        // 后端下载类型 - 读取内容
        byte[] content = fileService.getFileContent(configKey, path);
        if (content == null) {
            log.warn("[getFileContent][configKey({}) path({}) 文件不存在]", configKey, path);
            response.setStatus(HttpStatus.NOT_FOUND.value());
            return;
        }
        writeAttachment(response, path, content);
    }

    /**
     * 根据配置key获取域名
     */
    private String getDomainByConfig(String configKey) {
        FileConfigDO config = fileConfigService.getFileConfig(configKey);
        if (config == null || config.getConfig() == null) {
            return "";
        }
        // 通过反射获取 domain 字段
        try {
            Object domain = ReflectUtil.getFieldValue(config.getConfig(), "domain");
            return domain != null ? domain.toString() : "";
        } catch (Exception e) {
            return "";
        }
    }

    @GetMapping("/page")
    @Operation(summary = "获得文件分页")
    @PreAuthorize("@ss.hasPermission('infra:file:query')")
    public CommonResult<PageResult<FileRespVO>> getFilePage(@Valid FilePageReqVO pageVO) {
        return success(fileService.getFilePage(pageVO));
    }

}
