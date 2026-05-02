package com.lz.module.infra.service.i18n;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.lz.framework.common.pojo.PageResult;
import com.lz.framework.common.util.object.BeanUtils;
import com.lz.framework.common.util.object.ObjectUtils;
import com.lz.module.infra.constants.RedisKeyConstants;
import com.lz.module.infra.controller.admin.i18n.vo.I18nMessagePageReqVO;
import com.lz.module.infra.controller.admin.i18n.vo.I18nMessageSaveReqVO;
import com.lz.module.infra.dal.dataobject.i18n.I18nMessageDO;
import com.lz.module.infra.dal.mysql.i18n.I18nMessageMapper;
import com.lz.module.infra.enums.i18n.InfraI18nLocaleTargetEnum;
import com.lz.module.infra.utils.I18nExceptionUtil;
import jakarta.annotation.Resource;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.stereotype.Service;
import org.springframework.validation.annotation.Validated;

import java.util.List;

import static com.lz.framework.common.exception.util.ServiceExceptionUtil.exception;
import static com.lz.module.infra.enums.ErrorCodeConstants.I18N_MESSAGE_EXISTS;
import static com.lz.module.infra.enums.ErrorCodeConstants.I18N_MESSAGE_NOT_EXISTS;

/**
 * 国际化信息 Service 实现类
 *
 * @author 荔枝软件
 */
@Service
@Validated
public class I18nMessageServiceImpl implements I18nMessageService {

    @Resource
    private I18nMessageMapper i18nMessageMapper;

    @Override
    @CacheEvict(cacheNames = RedisKeyConstants.I18N_MESSAGE)
    public Long createI18nMessage(I18nMessageSaveReqVO createReqVO) {
        // 插入
        I18nMessageDO i18nMessage = BeanUtils.toBean(createReqVO, I18nMessageDO.class);
        //根据简称、key、使用端查询是否存在
        I18nMessageDO dbI18nMessage = i18nMessageMapper.selectByMessageKeyAndLocaleAndTarget(
                i18nMessage.getMessageKey(),
                i18nMessage.getLocale(),
                i18nMessage.getLocaleTarget()
        );
        if (ObjectUtils.isNotNull(dbI18nMessage)) {
            throw I18nExceptionUtil.exception(I18N_MESSAGE_EXISTS);
        }
        i18nMessageMapper.insert(i18nMessage);
        // 返回
        return i18nMessage.getId();
    }

    @Override
    @CacheEvict(cacheNames = RedisKeyConstants.I18N_MESSAGE)
    public void updateI18nMessage(I18nMessageSaveReqVO updateReqVO) {
        // 校验存在
        I18nMessageDO i18nMessageDO = validateI18nMessageExists(updateReqVO.getId());
        // 更新
        I18nMessageDO updateObj = BeanUtils.toBean(updateReqVO, I18nMessageDO.class);
        I18nMessageDO dbI18nMessage = i18nMessageMapper.selectByMessageKeyAndLocaleAndTarget(
                updateObj.getMessageKey(),
                updateObj.getLocale(),
                updateObj.getLocaleTarget()
        );
        if (ObjectUtils.isNotNull(dbI18nMessage)
            && !dbI18nMessage.getId().equals(updateReqVO.getId())) {
            throw exception(I18N_MESSAGE_EXISTS);
        }
        i18nMessageMapper.updateById(updateObj);
    }

    @CacheEvict(cacheNames = RedisKeyConstants.I18N_MESSAGE)
    @Override
    public void deleteI18nMessage(Long id) {
        // 校验存在
        validateI18nMessageExists(id);
        // 删除
        i18nMessageMapper.deleteById(id);
    }

    @CacheEvict(cacheNames = RedisKeyConstants.I18N_MESSAGE)
    @Override
    public void deleteI18nMessageListByIds(List<Long> ids) {
        // 删除
        i18nMessageMapper.deleteByIds(ids);
    }


    private I18nMessageDO validateI18nMessageExists(Long id) {
        I18nMessageDO i18nMessageDO = i18nMessageMapper.selectById(id);
        if (i18nMessageDO == null) {
            throw exception(I18N_MESSAGE_NOT_EXISTS);
        }
        return i18nMessageDO;
    }

    @Override
    public I18nMessageDO getI18nMessage(Long id) {
        return i18nMessageMapper.selectById(id);
    }

    @Override
    public PageResult<I18nMessageDO> getI18nMessagePage(I18nMessagePageReqVO pageReqVO) {
        return i18nMessageMapper.selectPage(pageReqVO);
    }

    @Override
    public List<I18nMessageDO> getI18nLocaleByLocaleTargetAndLocale(Integer localeTarget, String acceptLanguage) {
        //查询通用和类型是这个的target
        LambdaQueryWrapper<I18nMessageDO> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.and(wrapper ->
                wrapper.eq(I18nMessageDO::getLocaleTarget, InfraI18nLocaleTargetEnum.LOCALE_TARGET_0.getStatus())
                        .or()
                        .eq(I18nMessageDO::getLocaleTarget, localeTarget));
        queryWrapper.eq(I18nMessageDO::getLocale, acceptLanguage);
        return i18nMessageMapper.selectList(queryWrapper);
    }

    @Override
    public I18nMessageDO getMessageByMessageKey(String messageKey, Integer localeTarget, String acceptLanguage) {
        //查询通用和类型是这个的target，优先使用精确匹配的target，没有则使用通用的
        LambdaQueryWrapper<I18nMessageDO> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.and(wrapper ->
                wrapper.eq(I18nMessageDO::getLocaleTarget, InfraI18nLocaleTargetEnum.LOCALE_TARGET_0.getStatus())
                        .or()
                        .eq(I18nMessageDO::getLocaleTarget, localeTarget));
        queryWrapper.eq(I18nMessageDO::getMessageKey, messageKey);
        queryWrapper.eq(I18nMessageDO::getLocale, acceptLanguage);
        // 按 localeTarget 降序排序，优先返回精确匹配的（localeTarget > 0），其次返回通用的（localeTarget = 0）
        queryWrapper.orderByDesc(I18nMessageDO::getLocaleTarget);
        queryWrapper.last("LIMIT 1");
        return i18nMessageMapper.selectOne(queryWrapper);
    }

}