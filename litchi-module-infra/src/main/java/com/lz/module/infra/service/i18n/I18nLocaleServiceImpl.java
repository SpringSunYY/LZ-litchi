package com.lz.module.infra.service.i18n;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.LambdaUpdateWrapper;
import com.lz.framework.common.pojo.PageResult;
import com.lz.framework.common.util.object.BeanUtils;
import com.lz.framework.common.util.object.ObjectUtils;
import com.lz.framework.mybatis.core.query.LambdaQueryWrapperX;
import com.lz.framework.redis.core.RedisUtils;
import com.lz.module.infra.constants.RedisKeyConstants;
import com.lz.module.infra.controller.admin.i18n.vo.i18nLocale.I18nLocalePageReqVO;
import com.lz.module.infra.controller.admin.i18n.vo.i18nLocale.I18nLocaleSaveReqVO;
import com.lz.module.infra.dal.dataobject.i18n.I18nLocaleDO;
import com.lz.module.infra.dal.mysql.i18n.I18nLocaleMapper;
import com.lz.module.infra.enums.i18n.InfraI18nLocaleIsDefaultEnum;
import com.lz.module.infra.enums.i18n.InfraI18nLocaleStatusEnum;
import com.lz.module.infra.enums.i18n.InfraI18nLocaleTargetEnum;
import com.lz.module.infra.framework.i18n.config.I18nProperties;
import jakarta.annotation.Resource;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;
import org.springframework.validation.annotation.Validated;

import java.util.List;

import static com.lz.framework.common.exception.util.ServiceExceptionUtil.exception;
import static com.lz.module.infra.enums.ErrorCodeConstants.*;

/**
 * 国际化国家 Service 实现类
 *
 * @author 荔枝软件
 */
@Service
@Validated
public class I18nLocaleServiceImpl implements I18nLocaleService {

    @Resource
    private I18nLocaleMapper i18nLocaleMapper;

    @Resource
    private RedisUtils redisUtils;

    @Resource
    private I18nProperties i18nProperties;

    @Resource
    private I18nMessageService i18nMessageService;

    @Override
    public Long createI18nLocale(I18nLocaleSaveReqVO createReqVO) {
        // 插入
        I18nLocaleDO i18nLocale = BeanUtils.toBean(createReqVO, I18nLocaleDO.class);
//        //查询是否有通用的了，如果有通用的话也不允许创建
//        I18nLocaleDO i18nLocaleByLocaleCommon = i18nLocaleMapper.selectOne(I18nLocaleDO::getLocale, i18nLocale.getLocale(),
//                I18nLocaleDO::getLocaleTarget, InfraI18nLocaleTargetEnum.LOCALE_TARGET_0.getStatus());
//        if (ObjectUtils.isNotNull(i18nLocaleByLocaleCommon)) {
//            throw exception(I18N_LOCALE_EXISTS, "common");
//        }
        //根据简称查询，如果已存在则不允许创建
        I18nLocaleDO i18nLocaleByLocale = i18nLocaleMapper.selectOne(I18nLocaleDO::getLocale, i18nLocale.getLocale(),
                I18nLocaleDO::getLocaleTarget, i18nLocale.getLocaleTarget());
        if (ObjectUtils.isNotNull(i18nLocaleByLocale)) {
            throw exception(I18N_LOCALE_EXISTS);
        }

        //如果传过来的是默认，其他的全部设置为否
        if (createReqVO.getIsDefault().equals(InfraI18nLocaleIsDefaultEnum.IS_DEFAULT_0.getStatus())) {
            i18nLocaleMapper.update(new I18nLocaleDO().setIsDefault(InfraI18nLocaleIsDefaultEnum.IS_DEFAULT_1.getStatus()),
                    new LambdaUpdateWrapper<I18nLocaleDO>()
                            .eq(I18nLocaleDO::getLocaleTarget, i18nLocale.getLocaleTarget())
                            .set(I18nLocaleDO::getIsDefault, InfraI18nLocaleIsDefaultEnum.IS_DEFAULT_1.getStatus()));
        }
        i18nLocaleMapper.insert(i18nLocale);
        this.clearI18nCache();
        // 返回
        return i18nLocale.getId();
    }

    @Override
    public void updateI18nLocale(I18nLocaleSaveReqVO updateReqVO) {
        // 校验存在
        I18nLocaleDO i18nLocaleDO = validateI18nLocaleExists(updateReqVO.getId());
        // 更新
        I18nLocaleDO updateObj = BeanUtils.toBean(updateReqVO, I18nLocaleDO.class);
//        //查询是否有通用的了，如果有通用的话也不允许创建
//        I18nLocaleDO i18nLocaleByLocaleCommon = i18nLocaleMapper.selectOne(I18nLocaleDO::getLocale, updateObj.getLocale(),
//                I18nLocaleDO::getLocaleTarget, InfraI18nLocaleTargetEnum.LOCALE_TARGET_0.getStatus());
//        if (ObjectUtils.isNotNull(i18nLocaleByLocaleCommon) && !i18nLocaleByLocaleCommon.getId().equals(updateReqVO.getId())) {
//            throw exception(I18N_LOCALE_EXISTS, "通用");
//        }
        // 校验简称已存在
        I18nLocaleDO i18nLocaleByLocale = i18nLocaleMapper.selectOne(I18nLocaleDO::getLocale, updateObj.getLocale(),
                I18nLocaleDO::getLocaleTarget, updateObj.getLocaleTarget());
        if (ObjectUtils.isNotNull(i18nLocaleByLocale) && !i18nLocaleByLocale.getId().equals(updateReqVO.getId())) {
            throw exception(I18N_LOCALE_EXISTS);
        }
        //如果传递过来是默认，且之前不是默认，则将之前默认的设置为否
        if (updateReqVO.getIsDefault().equals(InfraI18nLocaleIsDefaultEnum.IS_DEFAULT_0.getStatus())
                && i18nLocaleDO.getIsDefault().equals(InfraI18nLocaleIsDefaultEnum.IS_DEFAULT_1.getStatus())) {
            i18nLocaleMapper.update(new I18nLocaleDO().setIsDefault(InfraI18nLocaleIsDefaultEnum.IS_DEFAULT_1.getStatus()),
                    new LambdaUpdateWrapper<I18nLocaleDO>()
                            .eq(I18nLocaleDO::getLocaleTarget, updateReqVO.getLocaleTarget())
                            .set(I18nLocaleDO::getIsDefault, InfraI18nLocaleIsDefaultEnum.IS_DEFAULT_1.getStatus()));
        }
        i18nLocaleMapper.updateById(updateObj);
        this.clearI18nCache();
    }

    @Override
    public void deleteI18nLocale(Long id) {
        // 校验存在
        I18nLocaleDO i18nLocaleDO = validateI18nLocaleExists(id);
        //默认不可删除
        if (i18nLocaleDO.getIsDefault().equals(InfraI18nLocaleIsDefaultEnum.IS_DEFAULT_0.getStatus())) {
            throw exception(I18N_LOCALE_PROHIBIT_DELETE);
        }
        // 删除
        i18nLocaleMapper.deleteById(id);
        this.clearI18nCache();
    }

    @Override
    public void deleteI18nLocaleListByIds(List<Long> ids) {
        // 删除
        ids.forEach(this::deleteI18nLocale);
    }


    private I18nLocaleDO validateI18nLocaleExists(Long id) {
        I18nLocaleDO i18nLocaleDO = i18nLocaleMapper.selectById(id);
        if (i18nLocaleDO == null) {
            throw exception(I18N_LOCALE_NOT_EXISTS);
        }
        return i18nLocaleDO;
    }

    @Override
    public I18nLocaleDO getI18nLocale(Long id) {
        return i18nLocaleMapper.selectById(id);
    }

    @Override
    public PageResult<I18nLocaleDO> getI18nLocalePage(I18nLocalePageReqVO pageReqVO) {
        return i18nLocaleMapper.selectPage(pageReqVO);
    }

    @Override
    public List<I18nLocaleDO> getI18nLocaleByLocaleTarget(Integer localeTarget) {
        //查询通用和类型是这个的target
        LambdaQueryWrapper<I18nLocaleDO> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.select(
                I18nLocaleDO::getLocaleTarget,
                I18nLocaleDO::getLocaleName,
                I18nLocaleDO::getLocale,
                I18nLocaleDO::getIsDefault);
        queryWrapper.and(wrapper ->
                wrapper.eq(I18nLocaleDO::getLocaleTarget, InfraI18nLocaleTargetEnum.LOCALE_TARGET_0.getStatus())
                        .or()
                        .eq(I18nLocaleDO::getLocaleTarget, localeTarget)
                        .eq(I18nLocaleDO::getLocaleStatus, InfraI18nLocaleStatusEnum.LOCALE_STATUS_0.getStatus()));
        queryWrapper.eq(I18nLocaleDO::getLocaleStatus, InfraI18nLocaleStatusEnum.LOCALE_STATUS_0.getStatus());
        queryWrapper.orderByAsc(I18nLocaleDO::getOrderNum);
        return i18nLocaleMapper.selectList(queryWrapper);
    }

    @Override
    public void clearI18nCache() {
        redisUtils.deleteByPatterns(RedisKeyConstants.I18N_LOCALE, RedisKeyConstants.I18N_MESSAGE);
        //重新缓存一次国际化信息
        //查询到国家，每个国家都要缓存
        List<I18nLocaleDO> i18nLocaleDOList = i18nLocaleMapper.selectList();
        for (I18nLocaleDO i18nLocaleDO : i18nLocaleDOList) {
            i18nMessageService.getI18nLocaleByLocaleTargetAndLocale(i18nLocaleDO.getLocaleTarget(), i18nLocaleDO.getLocale());
        }
        //拿到是否更新
        Boolean updatedB = redisUtils.get(RedisKeyConstants.I18N_UPDATED);
        if (ObjectUtils.isNull(updatedB)) {
            updatedB = true;
        } else {
            updatedB = !updatedB;
        }
        redisUtils.set(RedisKeyConstants.I18N_UPDATED, updatedB);
    }

    @Override
    public Boolean getI18nUpdate(boolean updated) {
        //拿到是否更新
        Boolean updatedB = redisUtils.get(RedisKeyConstants.I18N_UPDATED);
        //如果为空先设置,提示已经更新
        if (ObjectUtils.isNull(updatedB)) {
            updatedB = true;
            redisUtils.set(RedisKeyConstants.I18N_UPDATED, updatedB);
            return true;
        }
        //如果为空则直接返回更新
        if (ObjectUtils.isNull(updated)) {
            updated = true;
        }
        //对比两次值，如果相同则返回false，否则返回true
        return updatedB != updated;
    }

    @Cacheable(cacheNames = RedisKeyConstants.I18N_LOCALE, key = "#localeTarget")
    @Override
    public String getI18nLocaleDefaultLangByLocalTarget(Integer localeTarget) {
        //获取默认使用语言
        I18nLocaleDO i18nLocaleDO = i18nLocaleMapper.selectOne(
                new LambdaQueryWrapperX<I18nLocaleDO>()
                        .in(I18nLocaleDO::getLocaleTarget, localeTarget, InfraI18nLocaleTargetEnum.LOCALE_TARGET_0.getStatus())
                        .eq(I18nLocaleDO::getIsDefault, InfraI18nLocaleIsDefaultEnum.IS_DEFAULT_1.getStatus())
                        .eq(I18nLocaleDO::getLocaleStatus, InfraI18nLocaleStatusEnum.LOCALE_STATUS_0.getStatus())
                        .orderByDesc(I18nLocaleDO::getLocaleTarget)
                        .last("LIMIT 1")
        );
        //默认语言,如果没查到返回默认语言
        return ObjectUtils.isNotNull(i18nLocaleDO) ? i18nLocaleDO.getLocale() : i18nProperties.getDefaultLocale();
    }
}
