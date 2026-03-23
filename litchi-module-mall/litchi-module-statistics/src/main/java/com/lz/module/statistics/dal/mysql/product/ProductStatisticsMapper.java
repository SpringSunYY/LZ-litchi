package com.lz.module.statistics.dal.mysql.product;

import com.lz.framework.common.pojo.PageResult;
import com.lz.framework.common.pojo.SortablePageParam;
import com.lz.framework.mybatis.core.mapper.BaseMapperX;
import com.lz.framework.mybatis.core.query.LambdaQueryWrapperX;
import com.lz.framework.mybatis.core.query.MPJLambdaWrapperX;
import com.lz.module.statistics.controller.admin.product.vo.ProductStatisticsReqVO;
import com.lz.module.statistics.controller.admin.product.vo.ProductStatisticsRespVO;
import com.lz.module.statistics.dal.dataobject.product.ProductStatisticsDO;
import com.baomidou.mybatisplus.core.metadata.IPage;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.time.LocalDateTime;
import java.util.List;

import static com.lz.framework.mybatis.core.util.MyBatisUtils.toUnderlineCase;

/**
 * 商品统计 Mapper
 *
 * @author owen
 */
@Mapper
public interface ProductStatisticsMapper extends BaseMapperX<ProductStatisticsDO> {

    default PageResult<ProductStatisticsDO> selectPageGroupBySpuId(ProductStatisticsReqVO reqVO, SortablePageParam pageParam) {
        return selectPage(pageParam, buildWrapper(reqVO)
                .groupBy(ProductStatisticsDO::getSpuId)
                .select(ProductStatisticsDO::getSpuId)
        );
    }

    default List<ProductStatisticsDO> selectListByTimeBetween(ProductStatisticsReqVO reqVO) {
        return selectList(buildWrapper(reqVO)
                .groupBy(ProductStatisticsDO::getTime)
                .select(ProductStatisticsDO::getTime));
    }

    default ProductStatisticsRespVO selectVoByTimeBetween(ProductStatisticsReqVO reqVO) {
        return selectJoinOne(ProductStatisticsRespVO.class, buildWrapper(reqVO));
    }

    /**
     * 构建 LambdaWrapper
     *
     * @param reqVO 查询参数
     * @return LambdaWrapper
     */
    private static MPJLambdaWrapperX<ProductStatisticsDO> buildWrapper(ProductStatisticsReqVO reqVO) {
        return new MPJLambdaWrapperX<ProductStatisticsDO>()
                .betweenIfPresent(ProductStatisticsDO::getTime, reqVO.getTimes())
                .selectSum(ProductStatisticsDO::getBrowseCount, toUnderlineCase(ProductStatisticsDO::getBrowseCount))
                .selectSum(ProductStatisticsDO::getBrowseUserCount, toUnderlineCase(ProductStatisticsDO::getBrowseUserCount))
                .selectSum(ProductStatisticsDO::getFavoriteCount, toUnderlineCase(ProductStatisticsDO::getFavoriteCount))
                .selectSum(ProductStatisticsDO::getCartCount, toUnderlineCase(ProductStatisticsDO::getCartCount))
                .selectSum(ProductStatisticsDO::getOrderCount, toUnderlineCase(ProductStatisticsDO::getOrderCount))
                .selectSum(ProductStatisticsDO::getOrderPayCount, toUnderlineCase(ProductStatisticsDO::getOrderPayCount))
                .selectSum(ProductStatisticsDO::getOrderPayPrice, toUnderlineCase(ProductStatisticsDO::getOrderPayPrice))
                .selectSum(ProductStatisticsDO::getAfterSaleCount, toUnderlineCase(ProductStatisticsDO::getAfterSaleCount))
                .selectSum(ProductStatisticsDO::getAfterSaleRefundPrice, toUnderlineCase(ProductStatisticsDO::getAfterSaleRefundPrice))
                .selectAvg(ProductStatisticsDO::getBrowseConvertPercent, toUnderlineCase(ProductStatisticsDO::getBrowseConvertPercent));
    }

    /**
     * 根据时间范围统计商品信息
     *
     * @param page      分页参数
     * @param beginTime 起始时间
     * @param endTime   截止时间
     * @return 统计
     */
    IPage<ProductStatisticsDO> selectStatisticsResultPageByTimeBetween(IPage<ProductStatisticsDO> page,
                                                                       @Param("beginTime") LocalDateTime beginTime,
                                                                       @Param("endTime") LocalDateTime endTime);

    default Long selectCountByTimeBetween(LocalDateTime beginTime, LocalDateTime endTime) {
        return selectCount(new LambdaQueryWrapperX<ProductStatisticsDO>().between(ProductStatisticsDO::getTime, beginTime, endTime));
    }

}