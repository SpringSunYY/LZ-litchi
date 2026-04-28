package com.lz.module.infra.dal.mysql.i18n;

import com.lz.framework.common.pojo.PageResult;
import com.lz.framework.mybatis.core.query.LambdaQueryWrapperX;
import com.lz.framework.mybatis.core.mapper.BaseMapperX;
import com.lz.module.infra.dal.dataobject.i18n.I18nLocaleDO;
import org.apache.ibatis.annotations.Mapper;
import com.lz.module.infra.controller.admin.i18n.vo.*;

/**
 * 国际化国家 Mapper
 *
 * @author 荔枝软件
 */
@Mapper
public interface I18nLocaleMapper extends BaseMapperX<I18nLocaleDO> {

    default PageResult<I18nLocaleDO> selectPage(I18nLocalePageReqVO reqVO) {
        return selectPage(reqVO, new LambdaQueryWrapperX<I18nLocaleDO>()
                .likeIfPresent(I18nLocaleDO::getLocaleName, reqVO.getLocaleName())
                .eqIfPresent(I18nLocaleDO::getLocale, reqVO.getLocale())
                .eqIfPresent(I18nLocaleDO::getLocaleStatus, reqVO.getLocaleStatus())
                .eqIfPresent(I18nLocaleDO::getLocaleTarget, reqVO.getLocaleTarget())
                .eqIfPresent(I18nLocaleDO::getIsDefault, reqVO.getIsDefault())
                .betweenIfPresent(I18nLocaleDO::getCreateTime, reqVO.getCreateTime())
                .orderByAsc(I18nLocaleDO::getOrderNum));
    }

}