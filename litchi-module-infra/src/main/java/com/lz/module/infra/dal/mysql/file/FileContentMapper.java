package com.lz.module.infra.dal.mysql.file;

import com.lz.module.infra.dal.dataobject.file.FileContentDO;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface FileContentMapper extends BaseMapper<FileContentDO> {

    default void deleteByConfigKeyAndPath(String configKey, String path) {
        this.delete(new LambdaQueryWrapper<FileContentDO>()
                .eq(FileContentDO::getConfigKey, configKey)
                .eq(FileContentDO::getPath, path));
    }

    default List<FileContentDO> selectListByConfigKeyAndPath(String configKey, String path) {
        return selectList(new LambdaQueryWrapper<FileContentDO>()
                .eq(FileContentDO::getConfigKey, configKey)
                .eq(FileContentDO::getPath, path));
    }

    default int updateByConfigKeyAndPath(String configKey, String path, FileContentDO updateDO) {
        return update(updateDO, new LambdaQueryWrapper<FileContentDO>()
                .eq(FileContentDO::getConfigKey, configKey)
                .eq(FileContentDO::getPath, path));
    }

}
