package com.lz.module.infra.constants;

/**
 * 文件相关常量
 *
 * @author 荔枝源码
 */
public class FileConstants {

    /**
     * 文件类型分隔符
     */
    public static final String FILE_TYPE_SEPARATOR = ";";

    /**
     * 所有文件类型的标识
     */
    public static final String FILE_TYPE_ALL = "all";

    /**
     * 文件访问路径前缀
     */
    public static final String FILE_GET_PATH_PREFIX = "/admin-api/infra/file/";

    /**
     * 获取文件访问路径
     *
     * @param configKey 配置key
     * @param path      文件路径
     * @return 文件访问路径
     */
    public static String getFileGetPath(String configKey, String path) {
        return FILE_GET_PATH_PREFIX + configKey + "/get/" + path;
    }

}
