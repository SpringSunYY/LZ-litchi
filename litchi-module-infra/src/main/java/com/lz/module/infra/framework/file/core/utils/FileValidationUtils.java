package com.lz.module.infra.framework.file.core.utils;

import cn.hutool.core.io.FileUtil;
import cn.hutool.core.util.StrUtil;
import com.lz.module.infra.constants.FileConstants;
import com.lz.module.infra.dal.dataobject.file.FileConfigDO;
import org.springframework.stereotype.Component;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

/**
 * 文件校验工具类
 *
 * @author 荔枝源码
 */
@Component
public class FileValidationUtils {

    /**
     * 校验文件类型是否允许
     *
     * @param config  文件配置
     * @param fileName 文件名
     * @return true 允许，false 不允许
     */
    public boolean isValidFileType(FileConfigDO config, String fileName) {
        String fileType = config.getFileType();
        // 如果为空，不允许上传任何文件
        if (StrUtil.isEmpty(fileType)) {
            return false;
        }

        // 如果包含 all，允许所有文件类型
        if (FileConstants.FILE_TYPE_ALL.equalsIgnoreCase(fileType)) {
            return true;
        }

        // 获取文件扩展名
        String extension = FileUtil.extName(fileName);
        if (StrUtil.isEmpty(extension)) {
            return false;
        }
        extension = extension.toLowerCase();

        // 解析配置的文件类型列表
        List<String> allowedTypes = Arrays.stream(fileType.split(FileConstants.FILE_TYPE_SEPARATOR))
                .map(String::trim)
                .map(String::toLowerCase)
                .filter(StrUtil::isNotEmpty)
                .collect(Collectors.toList());

        return allowedTypes.contains(extension);
    }

    /**
     * 校验文件大小是否允许
     *
     * @param config   文件配置
     * @param fileSize 文件大小（字节）
     * @return true 允许，false 超出限制
     */
    public boolean isValidFileSize(FileConfigDO config, long fileSize) {
        Integer maxSize = config.getMaxSize();
        // 如果为空或0，不允许上传
        if (maxSize == null || maxSize <= 0) {
            return false;
        }
        // 将 MB 转换为字节
        long maxSizeInBytes = maxSize * 1024L * 1024L;
        return fileSize <= maxSizeInBytes;
    }

}
