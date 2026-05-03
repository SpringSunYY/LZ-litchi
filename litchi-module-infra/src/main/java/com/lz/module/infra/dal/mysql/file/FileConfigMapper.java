package com.lz.module.infra.dal.mysql.file;

import com.lz.framework.common.pojo.PageResult;
import com.lz.framework.mybatis.core.mapper.BaseMapperX;
import com.lz.framework.mybatis.core.query.LambdaQueryWrapperX;
import com.lz.module.infra.controller.admin.file.vo.config.FileConfigPageReqVO;
import com.lz.module.infra.dal.dataobject.file.FileConfigDO;
import jakarta.validation.constraints.NotEmpty;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface FileConfigMapper extends BaseMapperX<FileConfigDO> {

    default PageResult<FileConfigDO> selectPage(FileConfigPageReqVO reqVO) {
        return selectPage(reqVO, new LambdaQueryWrapperX<FileConfigDO>()
                .eqIfPresent(FileConfigDO::getConfigKey, reqVO.getConfigKey())
                .likeIfPresent(FileConfigDO::getName, reqVO.getName())
                .eqIfPresent(FileConfigDO::getStorage, reqVO.getStorage())
                .eqIfPresent(FileConfigDO::getPathType, reqVO.getPathType())
                .eqIfPresent(FileConfigDO::getReturnType, reqVO.getReturnType())
                .betweenIfPresent(FileConfigDO::getMaxSize, reqVO.getMaxSize())
                .likeIfPresent(FileConfigDO::getFileType, reqVO.getFileType())
                .eqIfPresent(FileConfigDO::getMaster, reqVO.getMaster())
                .betweenIfPresent(FileConfigDO::getCreateTime, reqVO.getCreateTime())
                .applyOrderDesc(reqVO, FileConfigDO::getId));
    }

    default FileConfigDO selectByMaster() {
        return selectOne(FileConfigDO::getMaster, true);
    }

    default FileConfigDO selectByConfigKey(@NotEmpty(message = "配置键不能为空") String configKey) {
        return selectFirstOne(FileConfigDO::getConfigKey, configKey);
    }
}
