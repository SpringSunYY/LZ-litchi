package com.lz.module.infra.service.file;

import cn.hutool.core.date.LocalDateTimeUtil;
import cn.hutool.core.io.FileUtil;
import cn.hutool.core.lang.Assert;
import cn.hutool.core.util.StrUtil;
import cn.hutool.crypto.digest.DigestUtil;
import com.google.common.annotations.VisibleForTesting;
import com.lz.framework.common.pojo.PageResult;
import com.lz.framework.common.util.object.BeanUtils;
import com.lz.framework.mybatis.core.query.LambdaQueryWrapperX;
import com.lz.framework.tenant.core.util.TenantUtils;
import com.lz.module.infra.constants.FileConstants;
import com.lz.module.infra.controller.admin.file.vo.file.*;
import com.lz.module.infra.dal.dataobject.file.FileConfigDO;
import com.lz.module.infra.dal.dataobject.file.FileDO;
import com.lz.module.infra.dal.mysql.file.FileMapper;
import com.lz.module.infra.enums.file.InfraFilePathTypeEnum;
import com.lz.module.infra.framework.file.core.client.FileClient;
import com.lz.module.infra.framework.file.core.client.s3.FilePresignedUrlRespDTO;
import com.lz.module.infra.framework.file.core.utils.FileTypeUtils;
import com.lz.module.infra.framework.file.core.utils.FileValidationUtils;
import jakarta.annotation.Resource;
import lombok.SneakyThrows;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.*;

import static com.lz.framework.common.exception.util.ServiceExceptionUtil.exception;
import static com.lz.module.infra.enums.ErrorCodeConstants.*;

/**
 * 文件 Service 实现类
 *
 * @author 荔枝源码
 */
@Service
public class FileServiceImpl implements FileService {

    /**
     * 上传文件的前缀，是否包含日期（yyyyMMdd）
     * <p>
     * 目的：按照日期，进行分目录
     */
    static boolean PATH_PREFIX_DATE_ENABLE = true;
    /**
     * 上传文件的后缀，是否包含时间戳
     * <p>
     * 目的：保证文件的唯一性，避免覆盖
     * 定制：可按需调整成 UUID、或者其他方式
     */
    static boolean PATH_SUFFIX_TIMESTAMP_ENABLE = true;


    /**
     * 大多数数据库对 SQL IN 列表的上限在 1000。批量查的 IN 一次不超过这个数。
     */
    int BATCH_IN_LIMIT = 1000;

    @Resource
    private FileConfigService fileConfigService;

    @Resource
    private FileMapper fileMapper;

    @Resource
    private FileValidationUtils fileValidationUtils;

    @Override
    public PageResult<FileRespVO> getFilePage(FilePageReqVO pageReqVO) {
        PageResult<FileDO> pageResult = fileMapper.selectPage(pageReqVO);
        // 根据配置的返回类型，组装 url
        return new PageResult<>(
                BeanUtils.toBean(pageResult.getList(), FileRespVO.class),
                pageResult.getTotal());
    }


    @Override
    @SneakyThrows
    public FileUploadRespVO createFile(byte[] content, String name, String directory, String type, String moduleType) {
        // 0. 获取配置并进行文件校验
        FileConfigDO config = fileConfigService.getMasterFileConfig();
        Assert.notNull(config, "文件配置不存在");
        // 校验文件大小
        if (!fileValidationUtils.isValidFileSize(config, content.length)) {
            throw exception(FILE_SIZE_EXCEED, config.getMaxSize());
        }
        // 校验文件类型
        if (!fileValidationUtils.isValidFileType(config, name)) {
            throw exception(FILE_TYPE_NOT_ALLOWED);
        }

        // 1.1 处理 type 为空的情况
        if (StrUtil.isEmpty(type)) {
            type = FileTypeUtils.getMineType(content, name);
        }
        // 1.2 处理 name 为空的情况
        if (StrUtil.isEmpty(name)) {
            name = DigestUtil.sha256Hex(content);
        }
        if (StrUtil.isEmpty(FileUtil.extName(name))) {
            // 如果 name 没有后缀 type，则补充后缀
            String extension = FileTypeUtils.getExtension(type);
            if (StrUtil.isNotEmpty(extension)) {
                name = name + extension;
            }
        }

        // 2.1 生成上传的 path，需要保证唯一
        String path = generateUploadPath(name, directory);
        // 2.2 上传到文件存储器
        FileClient client = fileConfigService.getMasterFileClient();
        Assert.notNull(client, "客户端(master) 不能为空");
        String url = client.upload(content, path, type, moduleType);

        // 3. 同步元数据到存储客户端（如果是数据库存储，需要同步 name、type、size）
        client.updateMetadata(path, name, type, content.length);

        // 4. 拼接绝对路径和相对路径
        String absolutePath = url; // 绝对路径（完整URL）
        String relativePath = FileConstants.getFileGetPath(client.getConfigKey(), path); // 相对路径
        // 4.1 拿到文件类型，只需要文件的.后缀
        String fileType = FileUtil.extName(name);
        // 5. 保存到数据库
        FileDO fileDO = new FileDO();
        fileMapper.insert(fileDO.setConfigKey(client.getConfigKey())
                .setName(name).setPath(path).setRelativePath(relativePath).setAbsolutePath(absolutePath)
                .setType(fileType).setSize(content.length).setModuleType(moduleType));

        // 6. 根据配置返回路径
        String resultUrl = buildReturnPath(config, relativePath, absolutePath);
        return new FileUploadRespVO(fileDO.getId(), fileDO.getName(), resultUrl);
    }

    /**
     * 根据配置构建返回路径
     */
    private String buildReturnPath(FileConfigDO config, String relativePath, String absolutePath) {
        // 根据 pathType 返回相对路径或绝对路径
        if (InfraFilePathTypeEnum.FILE_PATH_TYPE_1.getStatus().equals(config.getPathType())) {
            // 返回绝对路径
            return absolutePath;
        }
        // 返回相对路径
        return relativePath;
    }

    @VisibleForTesting
    String generateUploadPath(String name, String directory) {
        // 1. 生成前缀、后缀
        String prefix = null;
        if (PATH_PREFIX_DATE_ENABLE) {
            LocalDateTime now = LocalDateTimeUtil.now();
            prefix = now.getYear() + StrUtil.SLASH
                    + String.format("%02d", now.getMonthValue()) + StrUtil.SLASH
                    + String.format("%02d", now.getDayOfMonth());
        }
        String suffix = null;
        if (PATH_SUFFIX_TIMESTAMP_ENABLE) {
            suffix = String.valueOf(System.currentTimeMillis());
        }

        // 2.1 先拼接 suffix 后缀
        if (StrUtil.isNotEmpty(suffix)) {
            String ext = FileUtil.extName(name);
            if (StrUtil.isNotEmpty(ext)) {
                name = FileUtil.mainName(name) + StrUtil.C_UNDERLINE + suffix + StrUtil.DOT + ext;
            } else {
                name = name + StrUtil.C_UNDERLINE + suffix;
            }
        }
        // 2.2 再拼接 prefix 前缀
        if (StrUtil.isNotEmpty(prefix)) {
            name = prefix + StrUtil.SLASH + name;
        }
        // 2.3 最后拼接 directory 目录
        if (StrUtil.isNotEmpty(directory)) {
            name = directory + StrUtil.SLASH + name;
        }
        return name;
    }

    @Override
    @SneakyThrows
    public FilePresignedUrlRespVO getFilePresignedUrl(String name, String directory) {
        // 1. 生成上传的 path，需要保证唯一
        String path = generateUploadPath(name, directory);

        // 2. 获取文件预签名地址
        FileClient fileClient = fileConfigService.getMasterFileClient();
        FilePresignedUrlRespDTO presignedObjectUrl = fileClient.getPresignedObjectUrl(path);
        return BeanUtils.toBean(presignedObjectUrl, FilePresignedUrlRespVO.class,
                object -> object.setUrl(fileClient.getConfigKey()).setPath(path));
    }

    @Override
    public String createFile(FileCreateReqVO createReqVO) {
        // 1. 保存到数据库
        FileDO file = BeanUtils.toBean(createReqVO, FileDO.class);
        fileMapper.insert(file);

        // 2. 获取配置
        FileConfigDO config = fileConfigService.getFileConfig(file.getConfigKey());
        if (config == null) {
            // 如果没有配置，默认返回相对路径
            return createReqVO.getRelativePath();
        }

        // 3. 根据 pathType 返回相对路径或绝对路径
        if (InfraFilePathTypeEnum.FILE_PATH_TYPE_1.getStatus().equals(config.getPathType())) {
            return createReqVO.getAbsolutePath();
        }
        return createReqVO.getRelativePath();
    }

    @Override
    public void deleteFile(Long id) throws Exception {
        // 校验存在
        FileDO file = validateFileExists(id);

        // 从文件存储器中删除
        FileClient client = fileConfigService.getFileClient(file.getConfigKey());
        Assert.notNull(client, "客户端({}) 不能为空", file.getConfigKey());
        client.delete(file.getPath());

        // 删除记录
        fileMapper.deleteById(id);
    }

    @Override
    @SneakyThrows
    public void deleteFileList(List<Long> ids) {
        // 删除文件
        List<FileDO> files = fileMapper.selectByIds(ids);
        for (FileDO file : files) {
            // 获取客户端
            FileClient client = fileConfigService.getFileClient(file.getConfigKey());
            Assert.notNull(client, "客户端({}) 不能为空", file.getPath());
            // 删除文件
            client.delete(file.getPath());
        }

        // 删除记录
        fileMapper.deleteByIds(ids);
    }

    private FileDO validateFileExists(Long id) {
        FileDO fileDO = fileMapper.selectById(id);
        if (fileDO == null) {
            throw exception(FILE_NOT_EXISTS);
        }
        return fileDO;
    }

    @Override
    public byte[] getFileContent(String configKey, String path) throws Exception {
        FileClient client = fileConfigService.getFileClient(configKey);
        Assert.notNull(client, "客户端({}) 不能为空", configKey);
        return client.getContent(path);
    }

    @Override
    public String buildFileAccessUrl(String configKey, String path, String domain) {
        // 优先使用传入的 domain
        if (StrUtil.isEmpty(domain)) {
            domain = "";
        }
        return domain + FileConstants.getFileGetPath(configKey, path);
    }

    @Override
    public String buildFileAccessUrl(String configKey, String path) {
        // 获取配置中的域名
        FileConfigDO config = fileConfigService.getFileConfig(configKey);
        String domain = "";
        if (config != null && config.getConfig() != null) {
            Object domainObj = cn.hutool.core.util.ReflectUtil.getFieldValue(config.getConfig(), "domain");
            domain = domainObj != null ? domainObj.toString() : "";
        }
        return buildFileAccessUrl(configKey, path, domain);
    }

    @Override
    public String buildFileAccessUrl(String configKey, String path, String scheme, String serverName, int serverPort) {
        String domain = scheme + "://" + serverName + (serverPort == 80 || serverPort == 443 ? "" : ":" + serverPort);
        return buildFileAccessUrl(configKey, path, domain);
    }

    @Override
    public FileCountRespVO getFileCount(FilePageReqVO pageVO) {
        return TenantUtils.executeSystemOrTenant(() ->
                fileMapper.selectFileCount(pageVO)
        );
    }

    @Override
    public Set<String> getExistingFileNames(Collection<String> fileNames) {
        if (fileNames == null || fileNames.isEmpty()) {
            return Collections.emptySet();
        }
        // 去空 + 去重，避免 IN 列表中出现 NULL
        Set<String> distinct = new LinkedHashSet<>();
        for (String n : fileNames) {
            if (n != null && !n.isEmpty()) {
                distinct.add(n);
            }
        }
        if (distinct.isEmpty()) {
            return Collections.emptySet();
        }
        Set<String> existed = new HashSet<>();
        List<String> snapshot = new ArrayList<>(distinct);
        for (int from = 0; from < snapshot.size(); from += BATCH_IN_LIMIT) {
            int to = Math.min(from + BATCH_IN_LIMIT, snapshot.size());
            List<String> chunk = snapshot.subList(from, to);
            List<FileDO> hits = fileMapper.selectList(
                    new LambdaQueryWrapperX<FileDO>()
                            .in(FileDO::getName, chunk)
                            .select(FileDO::getName));
            for (FileDO f : hits) {
                if (f.getName() != null) {
                    existed.add(f.getName());
                }
            }
        }
        return existed;
    }

    public FileDO getFileByFileName(String originalFilename) {
        return fileMapper.selectOne(FileDO::getName, originalFilename);
    }

}
