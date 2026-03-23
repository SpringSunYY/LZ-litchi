package com.lz.module.promotion.api.bargain;

import com.lz.module.promotion.service.bargain.BargainActivityService;
import org.springframework.stereotype.Service;
import org.springframework.validation.annotation.Validated;

import jakarta.annotation.Resource;

/**
 * 砍价活动 Api 接口实现类
 *
 * @author HUIHUI
 */
@Service
@Validated
public class BargainActivityApiImpl implements BargainActivityApi {

    @Resource
    private BargainActivityService bargainActivityService;

    @Override
    public void updateBargainActivityStock(Long id, Integer count) {
        bargainActivityService.updateBargainActivityStock(id, count);
    }

}
