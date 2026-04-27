package com.lz.module.infra.dal.mysql.i18n;

import com.lz.framework.common.pojo.PageResult;
import com.lz.framework.mybatis.core.query.LambdaQueryWrapperX;
import com.lz.framework.mybatis.core.mapper.BaseMapperX;
import com.lz.module.infra.controller.admin.i18n.vo.I18nMessagePageReqVO;
import com.lz.module.infra.dal.dataobject.i18n.I18nMessageDO;
import org.apache.ibatis.annotations.Mapper;

/**
 * 国际化信息 Mapper
 *
 * @author 荔枝软件
 */
@Mapper
public interface I18nMessageMapper extends BaseMapperX<I18nMessageDO> {

    default PageResult<I18nMessageDO> selectPage(I18nMessagePageReqVO reqVO) {
        return selectPage(reqVO, new LambdaQueryWrapperX<I18nMessageDO>()
                .likeIfPresent(I18nMessageDO::getMessageName, reqVO.getMessageName())
                .likeIfPresent(I18nMessageDO::getMessageKey, reqVO.getMessageKey())
                .eqIfPresent(I18nMessageDO::getLocale, reqVO.getLocale())
                .eqIfPresent(I18nMessageDO::getLocaleTarget, reqVO.getLocaleTarget())
                .eqIfPresent(I18nMessageDO::getIsSystem, reqVO.getIsSystem())
                .eqIfPresent(I18nMessageDO::getModuleType, reqVO.getModuleType())
                .eqIfPresent(I18nMessageDO::getUseType, reqVO.getUseType())
                .eqIfPresent(I18nMessageDO::getRemark, reqVO.getRemark())
                .betweenIfPresent(I18nMessageDO::getCreateTime, reqVO.getCreateTime())
                .orderByDesc(I18nMessageDO::getId));
    }

}