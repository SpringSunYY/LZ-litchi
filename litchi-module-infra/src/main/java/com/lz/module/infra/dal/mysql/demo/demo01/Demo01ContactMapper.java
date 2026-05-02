package com.lz.module.infra.dal.mysql.demo.demo01;

import com.lz.framework.common.pojo.PageResult;
import com.lz.framework.mybatis.core.mapper.BaseMapperX;
import com.lz.framework.mybatis.core.query.LambdaQueryWrapperX;
import com.lz.module.infra.controller.admin.demo.demo01.vo.Demo01ContactPageReqVO;
import com.lz.module.infra.dal.dataobject.demo.demo01.Demo01ContactDO;
import org.apache.ibatis.annotations.Mapper;

/**
 * 示例联系人 Mapper
 *
 * @author 荔枝源码
 */
@Mapper
public interface Demo01ContactMapper extends BaseMapperX<Demo01ContactDO> {

    default PageResult<Demo01ContactDO> selectPage(Demo01ContactPageReqVO reqVO) {
        return selectPage(reqVO, new LambdaQueryWrapperX<Demo01ContactDO>()
                .likeIfPresent(Demo01ContactDO::getName, reqVO.getName())
                .eqIfPresent(Demo01ContactDO::getSex, reqVO.getSex())
                .betweenIfPresent(Demo01ContactDO::getBirthday, reqVO.getBirthday())
                .eqIfPresent(Demo01ContactDO::getDescription, reqVO.getDescription())
                .betweenIfPresent(Demo01ContactDO::getAge, reqVO.getAge())
                .eqIfPresent(Demo01ContactDO::getAvatar, reqVO.getAvatar())
                .betweenIfPresent(Demo01ContactDO::getCreateTime, reqVO.getCreateTime())
                .applyOrderDesc(reqVO, Demo01ContactDO::getId));
    }

}
