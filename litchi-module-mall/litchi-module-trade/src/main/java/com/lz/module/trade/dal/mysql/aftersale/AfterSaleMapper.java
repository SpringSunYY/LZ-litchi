package com.lz.module.trade.dal.mysql.aftersale;

import com.lz.framework.common.pojo.PageResult;
import com.lz.framework.mybatis.core.mapper.BaseMapperX;
import com.lz.framework.mybatis.core.query.LambdaQueryWrapperX;
import com.lz.module.trade.controller.admin.aftersale.vo.AfterSalePageReqVO;
import com.lz.module.trade.controller.app.aftersale.vo.AppAfterSalePageReqVO;
import com.lz.module.trade.dal.dataobject.aftersale.AfterSaleDO;
import com.baomidou.mybatisplus.core.conditions.update.LambdaUpdateWrapper;
import org.apache.ibatis.annotations.Mapper;

import java.util.Collection;

@Mapper
public interface AfterSaleMapper extends BaseMapperX<AfterSaleDO> {

    default PageResult<AfterSaleDO> selectPage(AfterSalePageReqVO reqVO) {
        return selectPage(reqVO, new LambdaQueryWrapperX<AfterSaleDO>()
                .eqIfPresent(AfterSaleDO::getUserId, reqVO.getUserId())
                .likeIfPresent(AfterSaleDO::getNo, reqVO.getNo())
                .eqIfPresent(AfterSaleDO::getStatus, reqVO.getStatus())
                .eqIfPresent(AfterSaleDO::getType, reqVO.getType())
                .eqIfPresent(AfterSaleDO::getWay, reqVO.getWay())
                .likeIfPresent(AfterSaleDO::getOrderNo, reqVO.getOrderNo())
                .likeIfPresent(AfterSaleDO::getSpuName, reqVO.getSpuName())
                .betweenIfPresent(AfterSaleDO::getCreateTime, reqVO.getCreateTime())
                .orderByDesc(AfterSaleDO::getId));
    }

    default PageResult<AfterSaleDO> selectPage(Long userId, AppAfterSalePageReqVO pageReqVO) {
        return selectPage(pageReqVO, new LambdaQueryWrapperX<AfterSaleDO>()
                .eq(AfterSaleDO::getUserId, userId)
                .inIfPresent(AfterSaleDO::getStatus, pageReqVO.getStatuses())
                .orderByDesc(AfterSaleDO::getId));
    }

    default int updateByIdAndStatus(Long id, Integer status, AfterSaleDO update) {
        return update(update, new LambdaUpdateWrapper<AfterSaleDO>()
                .eq(AfterSaleDO::getId, id).eq(AfterSaleDO::getStatus, status));
    }

    default AfterSaleDO selectByIdAndUserId(Long id, Long userId) {
        return selectOne(AfterSaleDO::getId, id,
                AfterSaleDO::getUserId, userId);
    }

    default Long selectCountByUserIdAndStatus(Long userId, Collection<Integer> statuses) {
        return selectCount(new LambdaQueryWrapperX<AfterSaleDO>()
                .eq(AfterSaleDO::getUserId, userId)
                .in(AfterSaleDO::getStatus, statuses));
    }

}
