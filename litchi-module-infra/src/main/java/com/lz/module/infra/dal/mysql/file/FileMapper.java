package com.lz.module.infra.dal.mysql.file;

import com.lz.framework.common.pojo.PageResult;
import com.lz.framework.mybatis.core.mapper.BaseMapperX;
import com.lz.framework.mybatis.core.query.LambdaQueryWrapperX;
import com.lz.module.infra.controller.admin.file.vo.file.FilePageReqVO;
import com.lz.module.infra.dal.dataobject.file.FileDO;
import org.apache.ibatis.annotations.Mapper;

/**
 * 文件操作 Mapper
 *
 * @author 荔枝源码
 */
@Mapper
public interface FileMapper extends BaseMapperX<FileDO> {

    default PageResult<FileDO> selectPage(FilePageReqVO reqVO) {
        return selectPage(reqVO, new LambdaQueryWrapperX<FileDO>()
                .likeIfPresent(FileDO::getConfigKey, reqVO.getConfigKey())
                .likeIfPresent(FileDO::getName, reqVO.getName())
                .eqIfPresent(FileDO::getPath, reqVO.getPath())
                .eqIfPresent(FileDO::getAbsolutePath, reqVO.getAbsolutePath())
                .eqIfPresent(FileDO::getRelativePath, reqVO.getRelativePath())
                .likeIfPresent(FileDO::getType, reqVO.getType())
                .betweenIfPresent(FileDO::getSize, reqVO.getSize())
                .eqIfPresent(FileDO::getModuleType, reqVO.getModuleType())
                .betweenIfPresent(FileDO::getCreateTime, reqVO.getCreateTime())
                .applyOrderDesc(reqVO, FileDO::getId));
    }

}
