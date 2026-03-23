package com.lz.module.promotion.api.seckill;

import com.lz.module.promotion.api.seckill.dto.SeckillValidateJoinRespDTO;
import com.lz.module.promotion.service.seckill.SeckillActivityService;
import org.springframework.stereotype.Service;
import org.springframework.validation.annotation.Validated;

import jakarta.annotation.Resource;

/**
 * 秒杀活动接口 Api 接口实现类
 *
 * @author HUIHUI
 */
@Service
@Validated
public class SeckillActivityApiImpl implements SeckillActivityApi {

    @Resource
    private SeckillActivityService activityService;

    @Override
    public void updateSeckillStockDecr(Long id, Long skuId, Integer count) {
        activityService.updateSeckillStockDecr(id, skuId, count);
    }

    @Override
    public void updateSeckillStockIncr(Long id, Long skuId, Integer count) {
        activityService.updateSeckillStockIncr(id, skuId, count);
    }

    @Override
    public SeckillValidateJoinRespDTO validateJoinSeckill(Long activityId, Long skuId, Integer count) {
        return activityService.validateJoinSeckill(activityId, skuId, count);
    }

}
