package com.lz.module.infra.service.file;

import cn.hutool.core.io.resource.ResourceUtil;
import cn.hutool.core.util.IdUtil;
import com.google.common.cache.CacheLoader;
import com.google.common.cache.LoadingCache;
import com.lz.framework.common.pojo.PageResult;
import com.lz.framework.common.util.json.JsonUtils;
import com.lz.framework.common.util.object.ObjectUtils;
import com.lz.framework.common.util.validation.ValidationUtils;
import com.lz.module.infra.controller.admin.file.vo.config.FileConfigPageReqVO;
import com.lz.module.infra.controller.admin.file.vo.config.FileConfigSaveReqVO;
import com.lz.module.infra.convert.file.FileConfigConvert;
import com.lz.module.infra.dal.dataobject.file.FileConfigDO;
import com.lz.module.infra.dal.mysql.file.FileConfigMapper;
import com.lz.module.infra.framework.file.core.client.FileClient;
import com.lz.module.infra.framework.file.core.client.FileClientConfig;
import com.lz.module.infra.framework.file.core.client.FileClientFactory;
import com.lz.module.infra.framework.file.core.enums.FileStorageEnum;
import jakarta.annotation.Resource;
import jakarta.validation.Validator;
import lombok.Getter;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.annotation.Validated;

import java.time.Duration;
import java.util.List;
import java.util.Map;
import java.util.Objects;

import static com.lz.framework.common.exception.util.ServiceExceptionUtil.exception;
import static com.lz.framework.common.util.cache.CacheUtils.buildAsyncReloadingCache;
import static com.lz.module.infra.enums.ErrorCodeConstants.*;

/**
 * 文件配置 Service 实现类
 *
 * @author 荔枝源码
 */
@Service
@Validated
@Slf4j
public class FileConfigServiceImpl implements FileConfigService {

    /**
     * {@link FileClient} 缓存，通过它异步刷新 fileClientFactory
     * key: configKey
     */
    @Getter
    private final LoadingCache<String, FileClient> clientCache = buildAsyncReloadingCache(Duration.ofSeconds(10L),
            new CacheLoader<String, FileClient>() {

                @Override
                public FileClient load(String configKey) {
                    FileConfigDO config = fileConfigMapper.selectByConfigKey(configKey);
                    if (config != null) {
                        fileClientFactory.createOrUpdateFileClient(config.getConfigKey(), config.getStorage(), config.getConfig());
                    }
                    return fileClientFactory.getFileClient(configKey);
                }

            });

    /**
     * {@link FileConfigDO} 配置缓存
     * key: configKey
     */
    @Getter
    private final LoadingCache<String, FileConfigDO> configCache = buildAsyncReloadingCache(Duration.ofSeconds(10L),
            new CacheLoader<String, FileConfigDO>() {

                @Override
                public FileConfigDO load(String configKey) {
                    return fileConfigMapper.selectByConfigKey(configKey);
                }

            });

    @Resource
    private FileClientFactory fileClientFactory;

    @Resource
    private FileConfigMapper fileConfigMapper;

    @Resource
    private Validator validator;

    @Override
    public Long createFileConfig(FileConfigSaveReqVO createReqVO) {
        //先查询key是否存在
        FileConfigDO config = fileConfigMapper.selectByConfigKey(createReqVO.getConfigKey());
        if (ObjectUtils.isNotNull(config)) {
            throw exception(FILE_CONFIG_KEY_DUPLICATE);
        }
        FileConfigDO fileConfig = FileConfigConvert.INSTANCE.convert(createReqVO)
                .setConfig(parseClientConfig(createReqVO.getStorage(), createReqVO.getConfig()))
                .setMaster(false); // 默认非 master
        fileConfigMapper.insert(fileConfig);
        return fileConfig.getId();
    }

    @Override
    public void updateFileConfig(FileConfigSaveReqVO updateReqVO) {
        // 校验存在
        FileConfigDO config = validateFileConfigExists(updateReqVO.getId());
        //查询key是否存在
        FileConfigDO configByConfigKey = fileConfigMapper.selectByConfigKey(updateReqVO.getConfigKey());
        if (ObjectUtils.isNotNull(configByConfigKey) && !Objects.equals(configByConfigKey.getId(), config.getId())) {
            throw exception(FILE_CONFIG_KEY_DUPLICATE);
        }
        // 更新
        FileConfigDO updateObj = FileConfigConvert.INSTANCE.convert(updateReqVO)
                .setConfig(parseClientConfig(config.getStorage(), updateReqVO.getConfig()));
        fileConfigMapper.updateById(updateObj);

        // 清空缓存
        clearCache(config.getConfigKey(), null);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void updateFileConfigMaster(Long id) {
        // 校验存在
        FileConfigDO config = validateFileConfigExists(id);
        // 更新其它为非 master
        fileConfigMapper.updateBatch(new FileConfigDO().setMaster(false));
        // 更新
        fileConfigMapper.updateById(new FileConfigDO().setId(id).setMaster(true));

        // 清空缓存
        clearCache(config.getConfigKey(), true);
    }

    private FileClientConfig parseClientConfig(Integer storage, Map<String, Object> config) {
        // 获取配置类
        Class<? extends FileClientConfig> configClass = FileStorageEnum.getByStorage(storage)
                .getConfigClass();
        FileClientConfig clientConfig = JsonUtils.parseObject2(JsonUtils.toJsonString(config), configClass);
        // 参数校验
        ValidationUtils.validate(validator, clientConfig);
        // 设置参数
        return clientConfig;
    }

    @Override
    public void deleteFileConfig(Long id) {
        // 校验存在
        FileConfigDO config = validateFileConfigExists(id);
        if (Boolean.TRUE.equals(config.getMaster())) {
            throw exception(FILE_CONFIG_DELETE_FAIL_MASTER);
        }
        // 删除
        fileConfigMapper.deleteById(id);

        // 清空缓存
        clearCache(config.getConfigKey(), null);
    }

    @Override
    public void deleteFileConfigList(List<Long> ids) {
        // 校验是否有主配置
        List<FileConfigDO> configs = fileConfigMapper.selectByIds(ids);
        for (FileConfigDO config : configs) {
            if (Boolean.TRUE.equals(config.getMaster())) {
                throw exception(FILE_CONFIG_DELETE_FAIL_MASTER);
            }
        }

        // 批量删除
        fileConfigMapper.deleteByIds(ids);

        // 清空缓存
        configs.forEach(config -> clearCache(config.getConfigKey(), null));
    }

    /**
     * 清空指定文件配置
     *
     * @param configKey 配置key
     * @param master    是否主配置
     */
    private void clearCache(String configKey, Boolean master) {
        if (configKey != null) {
            clientCache.invalidate(configKey);
            configCache.invalidate(configKey);
        }
        if (Boolean.TRUE.equals(master)) {
            FileConfigDO masterConfig = fileConfigMapper.selectByMaster();
            if (masterConfig != null) {
                clientCache.invalidate(masterConfig.getConfigKey());
                configCache.invalidate(masterConfig.getConfigKey());
            }
        }
    }

    private FileConfigDO validateFileConfigExists(Long id) {
        FileConfigDO config = fileConfigMapper.selectById(id);
        if (config == null) {
            throw exception(FILE_CONFIG_NOT_EXISTS);
        }
        return config;
    }

    @Override
    public FileConfigDO getFileConfig(Long id) {
        return fileConfigMapper.selectById(id);
    }

    @Override
    public FileConfigDO getFileConfig(String configKey) {
        return configCache.getUnchecked(configKey);
    }

    @Override
    public PageResult<FileConfigDO> getFileConfigPage(FileConfigPageReqVO pageReqVO) {
        return fileConfigMapper.selectPage(pageReqVO);
    }

    @Override
    public String testFileConfig(Long id) throws Exception {
        // 校验存在
        FileConfigDO config = validateFileConfigExists(id);
        // 上传文件
        byte[] content = ResourceUtil.readBytes("file/erweima.jpg");
        return getFileClient(config.getConfigKey()).upload(content, IdUtil.fastSimpleUUID() + ".jpg", "image/jpeg");
    }

    @Override
    public FileClient getFileClient(Long id) {
        FileConfigDO config = fileConfigMapper.selectById(id);
        if (config == null) {
            return null;
        }
        return getFileClient(config.getConfigKey());
    }

    @Override
    public FileClient getFileClient(String configKey) {
        return clientCache.getUnchecked(configKey);
    }

    @Override
    public FileClient getMasterFileClient() {
        FileConfigDO masterConfig = fileConfigMapper.selectByMaster();
        if (masterConfig == null) {
            throw exception(FILE_CONFIG_MASTER_NOT_EXISTS);
        }
        return getFileClient(masterConfig.getConfigKey());
    }

    @Override
    public FileConfigDO getMasterFileConfig() {
        return fileConfigMapper.selectByMaster();
    }

}
