package com.lz.module.statistics.service.product;

import com.lz.framework.common.pojo.PageResult;
import com.lz.framework.common.pojo.SortablePageParam;
import com.lz.module.statistics.controller.admin.common.vo.DataComparisonRespVO;
import com.lz.module.statistics.controller.admin.product.vo.ProductStatisticsReqVO;
import com.lz.module.statistics.controller.admin.product.vo.ProductStatisticsRespVO;
import com.lz.module.statistics.dal.dataobject.product.ProductStatisticsDO;

import java.util.List;

/**
 * 商品统计 Service 接口
 *
 * @author owen
 */
public interface ProductStatisticsService {

    /**
     * 获得商品统计排行榜分页
     *
     * @param reqVO     查询条件
     * @param pageParam 分页排序查询
     * @return 商品统计分页
     */
    PageResult<ProductStatisticsDO> getProductStatisticsRankPage(ProductStatisticsReqVO reqVO, SortablePageParam pageParam);

    /**
     * 获得商品状况统计分析
     *
     * @param reqVO 查询条件
     * @return 统计数据对照
     */
    DataComparisonRespVO<ProductStatisticsRespVO> getProductStatisticsAnalyse(ProductStatisticsReqVO reqVO);

    /**
     * 获得商品状况明细
     *
     * @param reqVO 查询条件
     * @return 统计数据对照
     */
    List<ProductStatisticsDO> getProductStatisticsList(ProductStatisticsReqVO reqVO);

    /**
     * 统计指定天数的商品数据
     *
     * @return 统计结果
     */
    String statisticsProduct(Integer days);

}