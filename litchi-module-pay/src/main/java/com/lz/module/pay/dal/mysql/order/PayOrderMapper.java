package com.lz.module.pay.dal.mysql.order;

import com.lz.framework.common.pojo.PageResult;
import com.lz.framework.mybatis.core.mapper.BaseMapperX;
import com.lz.framework.mybatis.core.query.LambdaQueryWrapperX;
import com.lz.module.pay.controller.admin.order.vo.PayOrderExportReqVO;
import com.lz.module.pay.controller.admin.order.vo.PayOrderPageReqVO;
import com.lz.module.pay.dal.dataobject.order.PayOrderDO;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import org.apache.ibatis.annotations.Mapper;

import java.time.LocalDateTime;
import java.util.List;

@Mapper
public interface PayOrderMapper extends BaseMapperX<PayOrderDO> {

    default PageResult<PayOrderDO> selectPage(PayOrderPageReqVO reqVO) {
        return selectPage(reqVO, new LambdaQueryWrapperX<PayOrderDO>()
                .eqIfPresent(PayOrderDO::getAppId, reqVO.getAppId())
                .eqIfPresent(PayOrderDO::getChannelCode, reqVO.getChannelCode())
                .likeIfPresent(PayOrderDO::getMerchantOrderId, reqVO.getMerchantOrderId())
                .likeIfPresent(PayOrderDO::getChannelOrderNo, reqVO.getChannelOrderNo())
                .likeIfPresent(PayOrderDO::getNo, reqVO.getNo())
                .eqIfPresent(PayOrderDO::getStatus, reqVO.getStatus())
                .betweenIfPresent(PayOrderDO::getCreateTime, reqVO.getCreateTime())
                .orderByDesc(PayOrderDO::getId));
    }

    default List<PayOrderDO> selectList(PayOrderExportReqVO reqVO) {
        return selectList(new LambdaQueryWrapperX<PayOrderDO>()
                .eqIfPresent(PayOrderDO::getAppId, reqVO.getAppId())
                .eqIfPresent(PayOrderDO::getChannelCode, reqVO.getChannelCode())
                .likeIfPresent(PayOrderDO::getMerchantOrderId, reqVO.getMerchantOrderId())
                .likeIfPresent(PayOrderDO::getChannelOrderNo, reqVO.getChannelOrderNo())
                .likeIfPresent(PayOrderDO::getNo, reqVO.getNo())
                .eqIfPresent(PayOrderDO::getStatus, reqVO.getStatus())
                .betweenIfPresent(PayOrderDO::getCreateTime, reqVO.getCreateTime())
                .orderByDesc(PayOrderDO::getId));
    }

    default Long selectCountByAppId(Long appId) {
        return selectCount(PayOrderDO::getAppId, appId);
    }

    default PayOrderDO selectByAppIdAndMerchantOrderId(Long appId, String merchantOrderId) {
        return selectOne(PayOrderDO::getAppId, appId,
                PayOrderDO::getMerchantOrderId, merchantOrderId);
    }

    default int updateByIdAndStatus(Long id, Integer status, PayOrderDO update) {
        return update(update, new LambdaQueryWrapper<PayOrderDO>()
                .eq(PayOrderDO::getId, id).eq(PayOrderDO::getStatus, status));
    }

    default List<PayOrderDO> selectListByStatusAndExpireTimeLt(Integer status, LocalDateTime expireTime) {
        return selectList(new LambdaQueryWrapper<PayOrderDO>()
                .eq(PayOrderDO::getStatus, status)
                .lt(PayOrderDO::getExpireTime, expireTime));
    }

}
