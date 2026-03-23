package com.lz.module.infra.dal.mysql.db;

import com.lz.framework.mybatis.core.mapper.BaseMapperX;
import com.lz.module.infra.dal.dataobject.db.DataSourceConfigDO;
import org.apache.ibatis.annotations.Mapper;

/**
 * 数据源配置 Mapper
 *
 * @author 荔枝源码
 */
@Mapper
public interface DataSourceConfigMapper extends BaseMapperX<DataSourceConfigDO> {
}
