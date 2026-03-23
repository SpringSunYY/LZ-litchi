package com.lz.module.pay.dal.mysql.wallet;


import cn.hutool.core.collection.CollUtil;
import cn.hutool.core.map.MapUtil;
import com.lz.framework.common.pojo.PageParam;
import com.lz.framework.common.pojo.PageResult;
import com.lz.framework.mybatis.core.mapper.BaseMapperX;
import com.lz.framework.mybatis.core.query.LambdaQueryWrapperX;
import com.lz.framework.mybatis.core.query.QueryWrapperX;
import com.lz.module.pay.controller.app.wallet.vo.transaction.AppPayWalletTransactionPageReqVO;
import com.lz.module.pay.dal.dataobject.wallet.PayWalletTransactionDO;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import org.apache.ibatis.annotations.Mapper;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.function.Consumer;

import static com.lz.module.pay.controller.app.wallet.vo.transaction.AppPayWalletTransactionPageReqVO.*;

@Mapper
public interface PayWalletTransactionMapper extends BaseMapperX<PayWalletTransactionDO> {

    default PageResult<PayWalletTransactionDO> selectPage(Long walletId, Integer type,
                                                          PageParam pageParam, LocalDateTime[] createTime) {
        LambdaQueryWrapperX<PayWalletTransactionDO> query = new LambdaQueryWrapperX<PayWalletTransactionDO>()
                .eqIfPresent(PayWalletTransactionDO::getWalletId, walletId);
        if (Objects.equals(type, TYPE_INCOME)) {
            query.gt(PayWalletTransactionDO::getPrice, 0);
        } else if (Objects.equals(type, TYPE_EXPENSE)) {
            query.lt(PayWalletTransactionDO::getPrice, 0);
        }
        query.betweenIfPresent(PayWalletTransactionDO::getCreateTime, createTime);
        query.orderByDesc(PayWalletTransactionDO::getId);
        return selectPage(pageParam, query);
    }

    default Integer selectPriceSum(Long walletId, Integer type, LocalDateTime[] createTime) {
        // SQL sum 查询
        List<Map<String, Object>> result = selectMaps(new QueryWrapperX<PayWalletTransactionDO>()
                .select("SUM(price) AS priceSum")
                .gt(Objects.equals(type, TYPE_INCOME), "price", 0) // 收入
                .lt(Objects.equals(type, TYPE_EXPENSE), "price", 0) // 支出
                .eq("wallet_id", walletId)
                .between("create_time", createTime[0], createTime[1]));
        // 获得 sum 结果
        Map<String, Object> first = CollUtil.getFirst(result);
        return MapUtil.getInt(first, "priceSum", 0);
    }

    default PayWalletTransactionDO selectByNo(String no) {
        return selectOne(PayWalletTransactionDO::getNo, no);
    }

    default PayWalletTransactionDO selectByBiz(String bizId, Integer bizType) {
        return selectOne(PayWalletTransactionDO::getBizId, bizId,
                PayWalletTransactionDO::getBizType, bizType);
    }

}




