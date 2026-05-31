package com.lz.module.infra.service.i18n;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.lz.framework.common.core.DictI18nDTO;
import com.lz.framework.common.enums.SystemModuleTypeEnum;
import com.lz.framework.common.pojo.PageResult;
import com.lz.framework.common.util.collection.ArrayUtils;
import com.lz.framework.common.util.object.BeanUtils;
import com.lz.framework.common.util.object.ObjectUtils;
import com.lz.framework.common.util.validation.ValidationUtils;
import com.lz.framework.mybatis.core.query.LambdaQueryWrapperX;
import com.lz.module.infra.constants.RedisKeyConstants;
import com.lz.module.infra.controller.admin.i18n.vo.i18nMessage.*;
import com.lz.module.infra.dal.dataobject.i18n.I18nKeyDO;
import com.lz.module.infra.dal.dataobject.i18n.I18nMessageDO;
import com.lz.module.infra.dal.mysql.i18n.I18nKeyMapper;
import com.lz.module.infra.dal.mysql.i18n.I18nMessageMapper;
import com.lz.module.infra.enums.i18n.InfraI18nKeyUseTypeEnum;
import com.lz.module.infra.enums.i18n.InfraI18nLocaleIsDefaultEnum;
import com.lz.module.infra.enums.i18n.InfraI18nLocaleTargetEnum;
import com.lz.module.infra.framework.i18n.config.I18nProperties;
import jakarta.annotation.Resource;
import lombok.extern.slf4j.Slf4j;
import org.jspecify.annotations.NonNull;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.support.TransactionTemplate;
import org.springframework.validation.annotation.Validated;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import static com.lz.framework.common.exception.util.ServiceExceptionUtil.exception;
import static com.lz.module.infra.enums.ErrorCodeConstants.*;

/**
 * 国际化信息 Service 实现类
 *
 * @author 荔枝软件
 */
@Service
@Slf4j
@Validated
public class I18nMessageServiceImpl implements I18nMessageService {

    @Resource
    private I18nMessageMapper i18nMessageMapper;

    @Resource
    private I18nKeyMapper i18nKeyMapper;

    @Resource
    private I18nProperties i18nProperties;

    @Resource
    private TransactionTemplate transactionTemplate;

    @Override
    @CacheEvict(cacheNames = RedisKeyConstants.I18N_MESSAGE)
    public Long createI18nMessage(I18nMessageSaveReqVO createReqVO) {
        // 插入
        I18nMessageDO i18nMessage = BeanUtils.toBean(createReqVO, I18nMessageDO.class);
        //根据简称、key、使用端查询是否存在
        I18nMessageDO dbI18nMessage = i18nMessageMapper.selectByMessageKey(
                i18nMessage.getMessageKey(),
                i18nMessage.getLocale()
        );
        if (ObjectUtils.isNotNull(dbI18nMessage)) {
            throw exception(I18N_MESSAGE_EXISTS);
        }
        i18nMessageMapper.insert(i18nMessage);
        // 返回
        return i18nMessage.getId();
    }

    @Override
    @CacheEvict(cacheNames = RedisKeyConstants.I18N_MESSAGE, allEntries = true)
    public void updateI18nMessage(I18nMessageSaveReqVO updateReqVO) {
        // 校验存在
        I18nMessageDO i18nMessageDO = validateI18nMessageExists(updateReqVO.getId());
        // 更新
        I18nMessageDO updateObj = BeanUtils.toBean(updateReqVO, I18nMessageDO.class);
        I18nMessageDO dbI18nMessage = i18nMessageMapper.selectByMessageKey(
                updateObj.getMessageKey(),
                updateObj.getLocale()
        );
        if (ObjectUtils.isNotNull(dbI18nMessage)
                && !dbI18nMessage.getId().equals(updateReqVO.getId())) {
            throw exception(I18N_MESSAGE_EXISTS);
        }
        i18nMessageMapper.updateById(updateObj);
    }

    @CacheEvict(cacheNames = RedisKeyConstants.I18N_MESSAGE, allEntries = true)
    @Override
    public void deleteI18nMessage(Long id) {
        // 校验存在
        validateI18nMessageExists(id);
        // 删除
        i18nMessageMapper.deleteById(id);
    }

    @CacheEvict(cacheNames = RedisKeyConstants.I18N_MESSAGE, allEntries = true)
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

    @Cacheable(cacheNames = RedisKeyConstants.I18N_MESSAGE)
    @Override
    public List<I18nMessageSimpVO> getI18nLocaleByLocaleTargetAndLocale(Integer localeTarget, String acceptLanguage) {
        //查询通用和类型是这个的target
        LambdaQueryWrapper<I18nMessageDO> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.select(
                I18nMessageDO::getMessageKey,
                I18nMessageDO::getMessage,
                I18nMessageDO::getLocale
        );
        queryWrapper.and(wrapper ->
                wrapper.eq(I18nMessageDO::getLocaleTarget, InfraI18nLocaleTargetEnum.LOCALE_TARGET_0.getStatus())
                        .or()
                        .eq(I18nMessageDO::getLocaleTarget, localeTarget));
        queryWrapper.eq(I18nMessageDO::getLocale, acceptLanguage);
        List<I18nMessageDO> i18nMessageDOS = i18nMessageMapper.selectList(queryWrapper);
        return BeanUtils.toBean(i18nMessageDOS, I18nMessageSimpVO.class);
    }

    @Override
    public I18nMessageDO getMessageByMessageKey(String messageKey, String acceptLanguage) {
        LambdaQueryWrapperX<I18nMessageDO> queryWrapper = new LambdaQueryWrapperX<>();
        queryWrapper.eq(I18nMessageDO::getMessageKey, messageKey);
        queryWrapper.eqIfPresent(I18nMessageDO::getLocale, acceptLanguage);
        return i18nMessageMapper.selectOne(queryWrapper);
    }

    @Override
    @Cacheable(cacheNames = RedisKeyConstants.I18N_MESSAGE)
    public List<I18nMessageDO> getMessageListByMessageKey(String messageKey) {
        return i18nMessageMapper.selectListByMessageKey(messageKey);
    }

    @Override
    @Cacheable(cacheNames = RedisKeyConstants.I18N_MESSAGE)
    public I18nMessageDO getMessageByMessageKeyAndLocale(String messageKey, String locale) {
        return i18nMessageMapper.selectByMessageKey(messageKey, locale);
    }


    @Override
    @CacheEvict(cacheNames = RedisKeyConstants.I18N_MESSAGE, allEntries = true)
    public boolean saveI18nMessage(Map<String, DictI18nDTO> dictDataMap) {
        //1、提取出所有的key，查询是否已经存在key，如果存在key不需要创建key
        List<String> keys = dictDataMap.keySet().stream().toList();
        if (keys.isEmpty()) {
            return false;
        }
        List<String> keyKeys = new ArrayList<>(keys);
        List<String> messageKeys = new ArrayList<>(keys);
        List<I18nKeyDO> i18nKeyDOS = i18nKeyMapper.selectList(new LambdaQueryWrapper<I18nKeyDO>()
                .select(I18nKeyDO::getMessageKey)
                .in(I18nKeyDO::getMessageKey, keys));
        //2、对比key，判断是否存在
        List<String> existMessageKeys = i18nKeyDOS.stream().map(I18nKeyDO::getMessageKey).toList();
        keyKeys.removeAll(existMessageKeys);
        //3、提取所有的local的key，不存在是新增
        String defaultLocale = i18nProperties.getDefaultLocale();
        List<I18nMessageDO> i18nMessageDOS = i18nMessageMapper.selectList(new LambdaQueryWrapper<I18nMessageDO>()
                .select(I18nMessageDO::getMessageKey)
                .eq(I18nMessageDO::getLocale, defaultLocale)
                .in(I18nMessageDO::getMessageKey, messageKeys));
        //3.1、根据key是否存在判断,如果是就为他默认语言上初始值并创建新增
        for (I18nMessageDO i18nMessageDO : i18nMessageDOS) {
            String messageKey = i18nMessageDO.getMessageKey();
            //存在直接删除
            messageKeys.remove(messageKey);
        }
        //4、构建需要保存结果
        //4.1、构建key
        List<I18nKeyDO> i18nKeyDOSavaList = new ArrayList<>();
        for (String key : keyKeys) {
            DictI18nDTO dictI18nDTO = dictDataMap.get(key);
            if (ObjectUtils.isNull(dictI18nDTO)) {
                continue;
            }
            I18nKeyDO i18nKeyDO = getI18nKeyDO(key, dictI18nDTO);
            i18nKeyDOSavaList.add(i18nKeyDO);
        }

        //4.2 构建message
        List<I18nMessageDO> i18nMessageDOSaveList = new ArrayList<>();
        for (String key : messageKeys) {
            DictI18nDTO dictI18nDTO = dictDataMap.get(key);
            if (ObjectUtils.isNull(dictI18nDTO)) {
                continue;
            }
            I18nMessageDO i18nMessageDO = getI18nMessageDO(key, dictI18nDTO, defaultLocale);
            i18nMessageDOSaveList.add(i18nMessageDO);
        }

        return Boolean.TRUE.equals(transactionTemplate.execute(result -> {
            i18nKeyMapper.insertBatch(i18nKeyDOSavaList);
            i18nMessageMapper.insertBatch(i18nMessageDOSaveList);
            return true;
        }));
    }

    @Override
    public I18nMessageExcelRespVO importI18nMessageList(List<I18nMessageExcelVO> list) {
        if (ArrayUtils.isEmpty(list)) {
            throw exception(I18N_MESSAGE_IMPORT_DATA_EMPTY);
        }
        //判断必填数据
        for (int i = 0; i < list.size(); i++) {
            int index = i + 1;
            I18nMessageExcelVO i18nMessageExcelVO = list.get(i);
            ValidationUtils.validate(BeanUtils.toBean(i18nMessageExcelVO, I18nMessageSaveReqVO.class));
        }
        //首先去重key，查询key是否存在，如果不存在则直接新增key
        List<String> allKeys = list.stream().map(I18nMessageExcelVO::getMessageKey).distinct().toList();
        List<I18nKeyDO> i18nKeyDOS = i18nKeyMapper.selectList(new LambdaQueryWrapper<I18nKeyDO>()
                .in(I18nKeyDO::getMessageKey, allKeys));
        List<String> existKeys = i18nKeyDOS.stream().map(I18nKeyDO::getMessageKey).toList();
        //删除已存在的key
        allKeys.removeAll(existKeys);
        return null;
    }

    private static @NonNull I18nMessageDO getI18nMessageDO(String key, DictI18nDTO dictI18nDTO, String defaultLocale) {
        I18nMessageDO i18nMessageDO = new I18nMessageDO();
        i18nMessageDO.setMessageName(dictI18nDTO.getDictName());
        i18nMessageDO.setMessageKey(key);
        i18nMessageDO.setLocale(defaultLocale);
        i18nMessageDO.setLocaleTarget(InfraI18nLocaleTargetEnum.LOCALE_TARGET_0.getStatus());
        i18nMessageDO.setIsSystem(InfraI18nLocaleIsDefaultEnum.IS_DEFAULT_0.getStatus());
        i18nMessageDO.setModuleType(SystemModuleTypeEnum.MODULE_TYPE_SYSTEM.getStatus());
        i18nMessageDO.setUseType(InfraI18nKeyUseTypeEnum.KEY_USE_TYPE_7.getStatus());
        i18nMessageDO.setMessage(dictI18nDTO.getLabel());
        i18nMessageDO.setRemark("system auto generate");
        return i18nMessageDO;
    }

    private static @NonNull I18nKeyDO getI18nKeyDO(String key, DictI18nDTO dictI18nDTO) {
        I18nKeyDO i18nKeyDO = new I18nKeyDO();
        i18nKeyDO.setMessageName(dictI18nDTO.getDictName());
        i18nKeyDO.setMessageKey(key);
        i18nKeyDO.setIsSystem(InfraI18nLocaleIsDefaultEnum.IS_DEFAULT_0.getStatus());
        i18nKeyDO.setModuleType(SystemModuleTypeEnum.MODULE_TYPE_SYSTEM.getStatus());
        i18nKeyDO.setUseType(InfraI18nKeyUseTypeEnum.KEY_USE_TYPE_7.getStatus());
        i18nKeyDO.setOrderNum(0);
        i18nKeyDO.setRemark("system auto generate");
        return i18nKeyDO;
    }

}
