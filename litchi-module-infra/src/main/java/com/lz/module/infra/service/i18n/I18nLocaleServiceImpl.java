package com.lz.module.infra.service.i18n;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.LambdaUpdateWrapper;
import com.lz.framework.common.pojo.PageResult;
import com.lz.framework.common.util.object.BeanUtils;
import com.lz.framework.common.util.object.ObjectUtils;
import com.lz.module.infra.constants.RedisKeyConstants;
import com.lz.module.infra.controller.admin.i18n.vo.I18nLocalePageReqVO;
import com.lz.module.infra.controller.admin.i18n.vo.I18nLocaleSaveReqVO;
import com.lz.module.infra.dal.dataobject.i18n.I18nLocaleDO;
import com.lz.module.infra.dal.mysql.i18n.I18nLocaleMapper;
import com.lz.module.infra.enums.i18n.InfraI18nLocaleIsDefaultEnum;
import com.lz.module.infra.enums.i18n.InfraI18nLocaleStatusEnum;
import com.lz.module.infra.enums.i18n.InfraI18nLocaleTargetEnum;
import jakarta.annotation.Resource;
import org.springframework.cache.annotation.CacheEvict;
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

    @CacheEvict(cacheNames = RedisKeyConstants.I18N_MESSAGE)
    @Override
    public Long createI18nLocale(I18nLocaleSaveReqVO createReqVO) {
        // 插入
        I18nLocaleDO i18nLocale = BeanUtils.toBean(createReqVO, I18nLocaleDO.class);
        //查询是否有通用的了，如果有通用的话也不允许创建
        I18nLocaleDO i18nLocaleByLocaleCommon = i18nLocaleMapper.selectOne(I18nLocaleDO::getLocale, i18nLocale.getLocale(),
                I18nLocaleDO::getLocaleTarget, InfraI18nLocaleTargetEnum.LOCALE_TARGET_0.getStatus());
        if (ObjectUtils.isNotNull(i18nLocaleByLocaleCommon)) {
            throw exception(I18N_LOCALE_EXISTS, "通用");
        }
        //根据简称查询，如果已存在则不允许创建
        I18nLocaleDO i18nLocaleByLocale = i18nLocaleMapper.selectOne(I18nLocaleDO::getLocale, i18nLocale.getLocale(),
                I18nLocaleDO::getLocaleTarget, i18nLocale.getLocaleTarget());
        if (ObjectUtils.isNotNull(i18nLocaleByLocale)) {
            throw exception(I18N_LOCALE_EXISTS);
        }
        //如果传过来的是默认，其他的全部设置为否

        //如果传过来的是默认，其他的全部设置为否
        if (createReqVO.getIsDefault().equals(InfraI18nLocaleIsDefaultEnum.IS_DEFAULT_0.getStatus())) {
            i18nLocaleMapper.update(new I18nLocaleDO().setIsDefault(InfraI18nLocaleIsDefaultEnum.IS_DEFAULT_1.getStatus()),
                    new LambdaUpdateWrapper<I18nLocaleDO>()
                            .eq(I18nLocaleDO::getLocaleTarget, i18nLocale.getLocaleTarget())
                            .set(I18nLocaleDO::getIsDefault, InfraI18nLocaleIsDefaultEnum.IS_DEFAULT_1.getStatus()));
        }
        i18nLocaleMapper.insert(i18nLocale);

        // 返回
        return i18nLocale.getId();
    }

    @CacheEvict(cacheNames = RedisKeyConstants.I18N_MESSAGE)
    @Override
    public void updateI18nLocale(I18nLocaleSaveReqVO updateReqVO) {
        // 校验存在
        I18nLocaleDO i18nLocaleDO = validateI18nLocaleExists(updateReqVO.getId());
        // 更新
        I18nLocaleDO updateObj = BeanUtils.toBean(updateReqVO, I18nLocaleDO.class);
        //查询是否有通用的了，如果有通用的话也不允许创建
        I18nLocaleDO i18nLocaleByLocaleCommon = i18nLocaleMapper.selectOne(I18nLocaleDO::getLocale, updateObj.getLocale(),
                I18nLocaleDO::getLocaleTarget, InfraI18nLocaleTargetEnum.LOCALE_TARGET_0.getStatus());
        if (ObjectUtils.isNotNull(i18nLocaleByLocaleCommon) && !i18nLocaleByLocaleCommon.getId().equals(updateReqVO.getId())) {
            throw exception(I18N_LOCALE_EXISTS, "通用");
        }
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
    }

    @CacheEvict(cacheNames = RedisKeyConstants.I18N_MESSAGE)
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
    }

    @CacheEvict(cacheNames = RedisKeyConstants.I18N_MESSAGE)
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
        queryWrapper.and(wrapper ->
                wrapper.eq(I18nLocaleDO::getLocaleTarget, InfraI18nLocaleTargetEnum.LOCALE_TARGET_0.getStatus())
                        .or()
                        .eq(I18nLocaleDO::getLocaleTarget, localeTarget));
        queryWrapper.eq(I18nLocaleDO::getLocaleStatus, InfraI18nLocaleStatusEnum.LOCALE_STATUS_0.getStatus());
        queryWrapper.orderByAsc(I18nLocaleDO::getOrderNum);
        return i18nLocaleMapper.selectList(queryWrapper);
    }
}