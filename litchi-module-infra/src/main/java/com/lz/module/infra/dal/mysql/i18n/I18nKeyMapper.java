package com.lz.module.infra.dal.mysql.i18n;

import com.lz.framework.common.pojo.PageResult;
import com.lz.framework.mybatis.core.query.LambdaQueryWrapperX;
import com.lz.framework.mybatis.core.mapper.BaseMapperX;
import com.lz.module.infra.controller.admin.i18n.vo.I18nKeyPageReqVO;
import com.lz.module.infra.dal.dataobject.i18n.I18nKeyDO;
import org.apache.ibatis.annotations.Mapper;

/**
 * 国际化键名 Mapper
 *
 * @author 荔枝软件
 */
@Mapper
public interface I18nKeyMapper extends BaseMapperX<I18nKeyDO> {

    default PageResult<I18nKeyDO> selectPage(I18nKeyPageReqVO reqVO) {
        return selectPage(reqVO, new LambdaQueryWrapperX<I18nKeyDO>()
                .likeIfPresent(I18nKeyDO::getMessageName, reqVO.getMessageName())
                .likeIfPresent(I18nKeyDO::getMessageKey, reqVO.getMessageKey())
                .eqIfPresent(I18nKeyDO::getLocaleTarget, reqVO.getLocaleTarget())
                .eqIfPresent(I18nKeyDO::getIsSystem, reqVO.getIsSystem())
                .eqIfPresent(I18nKeyDO::getModuleType, reqVO.getModuleType())
                .eqIfPresent(I18nKeyDO::getUseType, reqVO.getUseType())
                .betweenIfPresent(I18nKeyDO::getCreateTime, reqVO.getCreateTime())
                .orderByDesc(I18nKeyDO::getId));
    }

}