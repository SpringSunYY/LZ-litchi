package com.lz.module.infra.api.file;

import cn.hutool.core.util.StrUtil;
import com.lz.framework.common.util.collection.ArrayUtils;
import com.lz.module.infra.dal.dataobject.file.FileConfigDO;
import com.lz.module.infra.service.file.FileConfigService;
import com.lz.module.infra.service.file.FileService;
import jakarta.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.validation.annotation.Validated;

import static com.lz.module.infra.constants.FileConstants.FILE_GET_PATH_PREFIX;

/**
 * 文件 API 实现类
 *
 * @author 荔枝源码
 */
@Service
@Validated
public class FileApiImpl implements FileApi {

    @Resource
    private FileService fileService;

    @Override
    public String createFile(byte[] content, String name, String directory, String type, String moduleType) {
        return fileService.createFile(content, name, directory, type, moduleType);
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
        if (ArrayUtils.isEmpty( split)|| split.length < 2) {
            return null;
        }
        String configKey = split[0];
        String filePath = split[1];
       return fileService.buildFileAccessUrl(configKey, filePath);
    }


}
