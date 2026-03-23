package com.lz.module.promotion.dal.mysql.article;

import com.lz.framework.common.pojo.PageResult;
import com.lz.framework.mybatis.core.mapper.BaseMapperX;
import com.lz.framework.mybatis.core.query.LambdaQueryWrapperX;
import com.lz.module.promotion.controller.admin.article.vo.category.ArticleCategoryPageReqVO;
import com.lz.module.promotion.dal.dataobject.article.ArticleCategoryDO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * 文章分类 Mapper
 *
 * @author HUIHUI
 */
@Mapper
public interface ArticleCategoryMapper extends BaseMapperX<ArticleCategoryDO> {

    default PageResult<ArticleCategoryDO> selectPage(ArticleCategoryPageReqVO reqVO) {
        return selectPage(reqVO, new LambdaQueryWrapperX<ArticleCategoryDO>()
                .likeIfPresent(ArticleCategoryDO::getName, reqVO.getName())
                .eqIfPresent(ArticleCategoryDO::getStatus, reqVO.getStatus())
                .betweenIfPresent(ArticleCategoryDO::getCreateTime, reqVO.getCreateTime())
                .orderByDesc(ArticleCategoryDO::getSort));
    }

    default List<ArticleCategoryDO> selectListByStatus(Integer status) {
        return selectList(ArticleCategoryDO::getStatus, status);
    }

}
