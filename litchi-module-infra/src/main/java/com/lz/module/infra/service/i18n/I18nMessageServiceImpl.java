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
import com.lz.module.infra.controller.admin.i18n.vo.i18nMessage.I18nMessageExcelVO;
import com.lz.module.infra.controller.admin.i18n.vo.i18nMessage.I18nMessagePageReqVO;
import com.lz.module.infra.controller.admin.i18n.vo.i18nMessage.I18nMessageSaveReqVO;
import com.lz.module.infra.controller.admin.i18n.vo.i18nMessage.I18nMessageSimpVO;
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
import org.springframework.cache.annotation.Cacheable;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Service;
import org.springframework.transaction.support.TransactionTemplate;
import org.springframework.validation.annotation.Validated;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.stream.Collectors;

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
    @Lazy
    private I18nLocaleService i18nLocaleService;

    @Resource
    private TransactionTemplate transactionTemplate;

    @Override
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
        i18nLocaleService.clearI18nCache(createReqVO.getLocale());
        // 返回
        return i18nMessage.getId();
    }

    @Override
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
        i18nLocaleService.clearI18nCache(updateObj.getLocale());
    }

    @Override
    public void deleteI18nMessage(Long id) {
        // 校验存在
        I18nMessageDO i18nMessageDO = validateI18nMessageExists(id);
        // 删除
        i18nMessageMapper.deleteById(id);
        i18nLocaleService.clearI18nCache(i18nMessageDO.getLocale());
    }

    @Override
    public void deleteI18nMessageListByIds(List<Long> ids) {
        // 删除
        i18nMessageMapper.deleteByIds(ids);
        //当前还没实现，先不管
        i18nLocaleService.clearI18nCache(null);
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

    @Cacheable(cacheNames = RedisKeyConstants.I18N_MESSAGE, key = "#localeTarget + ':' + #acceptLanguage")
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
    @Cacheable(cacheNames = RedisKeyConstants.I18N_MESSAGE, key = "#messageKey + ':list'")
    public List<I18nMessageDO> getMessageListByMessageKey(String messageKey) {
        return i18nMessageMapper.selectListByMessageKey(messageKey);
    }

    @Override
    @Cacheable(cacheNames = RedisKeyConstants.I18N_MESSAGE, key = "#messageKey + ':' + #locale")
    public I18nMessageDO getMessageByMessageKeyAndLocale(String messageKey, String locale) {
        return i18nMessageMapper.selectByMessageKey(messageKey, locale);
    }


    @Override
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

        boolean result = Boolean.TRUE.equals(transactionTemplate.execute(re -> {
            i18nKeyMapper.insertBatch(i18nKeyDOSavaList);
            i18nMessageMapper.insertBatch(i18nMessageDOSaveList);
            return true;
        }));
        //先写就是默认
        i18nLocaleService.clearI18nCache(i18nProperties.getDefaultLocale());
        return result;
    }

    @Override
    public void importI18nMessageList(List<I18nMessageExcelVO> list, Boolean updateSupport) {
        if (ArrayUtils.isEmpty(list)) {
            throw exception(I18N_MESSAGE_IMPORT_DATA_EMPTY);
        }
        // 直接对 ExcelVO 列表做校验，无需 Bean 转换
        ValidationUtils.validateList(list, I18N_MESSAGE_IMPORT_DATA_EMPTY);
        //首先去重key，查询key是否存在，如果不存在则直接新增key
        List<String> allKeys = new ArrayList<>(list.stream().map(I18nMessageExcelVO::getMessageKey).distinct().toList());

        //如果是需要更新已存在的key
        //处理key
        ArrayList<I18nKeyDO> i18nKeyDOList = new ArrayList<>(allKeys.size());
        if (updateSupport) {
            List<I18nKeyDO> i18nKeyDOS = i18nKeyMapper.selectList(new LambdaQueryWrapper<I18nKeyDO>()
                    .in(I18nKeyDO::getMessageKey, allKeys));
            //dos转为map，根据key
            Map<String, I18nKeyDO> i18nKeyDOMap = i18nKeyDOS.stream().collect(Collectors.toMap(I18nKeyDO::getMessageKey, i18nKeyDO -> i18nKeyDO));
            i18nKeyDOList.addAll(getI18nKeyDOS(list, i18nKeyDOMap));
        }


        //处理 message，message不关更新什么事，如果有就更新，没有就新增
        ArrayList<I18nMessageDO> i18nMessageDOList = getI18nMessageDOS(list, allKeys);
        transactionTemplate.executeWithoutResult(result -> {
            if (!i18nKeyDOList.isEmpty()) {
                i18nKeyMapper.insertOrUpdate(i18nKeyDOList);
            }
            i18nMessageMapper.insertOrUpdate(i18nMessageDOList);
        });
        Set<String> localeSet = i18nMessageDOList.stream().map(I18nMessageDO::getLocale).collect(Collectors.toSet());
        localeSet.forEach(locale -> i18nLocaleService.clearI18nCache(locale));
    }

    private static @NonNull ArrayList<I18nKeyDO> getI18nKeyDOS(List<I18nMessageExcelVO> list, Map<String, I18nKeyDO> i18nKeyDOMap) {
        //查询到message第一个出现的key,赋值给key
        //先根据message的key,key为messageKey+local,value为messageVo创建一个map
        // 使用合并函数处理相同messageKey但不同locale的情况,保留第一个值
        Map<String, I18nMessageExcelVO> messageKeyMap = list.stream()
                .collect(Collectors.toMap(
                        I18nMessageExcelVO::getMessageKey,
                        message -> message,
                        (existing, replacement) -> existing // 遇到重复key时保留第一个
                ));
        //处理key
        ArrayList<I18nKeyDO> i18nKeyDOList = new ArrayList<>();
        //新增key
        messageKeyMap.forEach((key, value) -> {
            //如果是更新的话一般都有，更新名字，如果不是的话，则创建一个key
            I18nKeyDO i18nKeyDO = i18nKeyDOMap.getOrDefault(key, null);
            String messageName = value.getMessageName();
            if (ObjectUtils.isNotNull(i18nKeyDO)) {
                i18nKeyDO.setMessageName(messageName);
            } else {
                i18nKeyDO = new I18nKeyDO();
                //排序默认使用使用类型
                i18nKeyDO.setOrderNum(value.getUseType());
            }
            i18nKeyDO.setMessageName(messageName);
            i18nKeyDO.setMessageKey(key);
            i18nKeyDO.setIsSystem(value.getIsSystem());
            i18nKeyDO.setModuleType(value.getModuleType());
            i18nKeyDO.setUseType(value.getUseType());
            i18nKeyDOList.add(i18nKeyDO);
        });
        return i18nKeyDOList;
    }

    private @NonNull ArrayList<I18nMessageDO> getI18nMessageDOS(List<I18nMessageExcelVO> list, List<String> allKeys) {
        //先查询数据库，根据key查询
        List<I18nMessageDO> i18nMessageDOS = i18nMessageMapper.selectList(new LambdaQueryWrapper<I18nMessageDO>()
                .in(I18nMessageDO::getMessageKey, allKeys));
        //使用国家和语言构建一个map，key为messageKey+locale，value为messageVo
        Map<String, I18nMessageDO> messageKeyLocaleMap = i18nMessageDOS.stream()
                .collect(Collectors.toMap(
                        message -> message.getMessageKey() + "-" + message.getLocale(),
                        message -> message,
                        (existing, replacement) -> existing // 遇到重复key时保留第一个
                ));
        ArrayList<I18nMessageDO> i18nMessageDOList = new ArrayList<>();
        for (I18nMessageExcelVO i18nMessageExcelVO : list) {
            String key = i18nMessageExcelVO.getMessageKey() + "-" + i18nMessageExcelVO.getLocale();
            I18nMessageDO existMessageDO = messageKeyLocaleMap.get(key);

            I18nMessageDO messageDO;
            if (ObjectUtils.isNotNull(existMessageDO)) {
                // 如果存在，更新已有对象的字段
                BeanUtils.copyProperties(i18nMessageExcelVO, existMessageDO);
                messageDO = existMessageDO;
            } else {
                // 如果不存在，创建新对象
                messageDO = BeanUtils.toBean(i18nMessageExcelVO, I18nMessageDO.class);
            }
            i18nMessageDOList.add(messageDO);
        }
        return i18nMessageDOList;
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
