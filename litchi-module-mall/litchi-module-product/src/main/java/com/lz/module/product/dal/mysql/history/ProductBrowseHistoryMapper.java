package com.lz.module.product.dal.mysql.history;

import cn.hutool.core.collection.CollUtil;
import com.lz.framework.common.pojo.PageResult;
import com.lz.framework.mybatis.core.mapper.BaseMapperX;
import com.lz.framework.mybatis.core.query.LambdaQueryWrapperX;
import com.lz.module.product.controller.admin.history.vo.ProductBrowseHistoryPageReqVO;
import com.lz.module.product.dal.dataobject.history.ProductBrowseHistoryDO;
import com.baomidou.mybatisplus.core.conditions.update.LambdaUpdateWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.apache.ibatis.annotations.Mapper;

import java.util.Collection;

/**
 * 商品浏览记录 Mapper
 *
 * @author owen
 */
@Mapper
public interface ProductBrowseHistoryMapper extends BaseMapperX<ProductBrowseHistoryDO> {

    default ProductBrowseHistoryDO selectByUserIdAndSpuId(Long userId, Long spuId) {
        return selectFirstOne(ProductBrowseHistoryDO::getUserId, userId,
                ProductBrowseHistoryDO::getSpuId, spuId);
    }

    default PageResult<ProductBrowseHistoryDO> selectPage(ProductBrowseHistoryPageReqVO reqVO) {
        return selectPage(reqVO, new LambdaQueryWrapperX<ProductBrowseHistoryDO>()
                .eqIfPresent(ProductBrowseHistoryDO::getUserId, reqVO.getUserId())
                .eqIfPresent(ProductBrowseHistoryDO::getUserDeleted, reqVO.getUserDeleted())
                .eqIfPresent(ProductBrowseHistoryDO::getSpuId, reqVO.getSpuId())
                .betweenIfPresent(ProductBrowseHistoryDO::getCreateTime, reqVO.getCreateTime())
                .orderByDesc(ProductBrowseHistoryDO::getId));
    }

    default void updateUserDeletedByUserId(Long userId, Collection<Long> spuIds, Boolean userDeleted) {
        update(new LambdaUpdateWrapper<ProductBrowseHistoryDO>()
                .eq(ProductBrowseHistoryDO::getUserId, userId)
                .in(CollUtil.isNotEmpty(spuIds), ProductBrowseHistoryDO::getSpuId, spuIds)
                .set(ProductBrowseHistoryDO::getUserDeleted, userDeleted));
    }

    default Page<ProductBrowseHistoryDO> selectPageByUserIdOrderByCreateTimeAsc(Long userId, Integer pageNo, Integer pageSize) {
        Page<ProductBrowseHistoryDO> page = Page.of(pageNo, pageSize);
        return selectPage(page, new LambdaQueryWrapperX<ProductBrowseHistoryDO>()
                .eqIfPresent(ProductBrowseHistoryDO::getUserId, userId)
                .orderByAsc(ProductBrowseHistoryDO::getCreateTime));
    }

}