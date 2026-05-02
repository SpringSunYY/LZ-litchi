package com.lz.module.infra.service.i18n;

import com.lz.framework.common.pojo.PageResult;
import com.lz.framework.common.util.object.BeanUtils;
import com.lz.framework.common.util.object.ObjectUtils;
import com.lz.module.infra.constants.RedisKeyConstants;
import com.lz.module.infra.controller.admin.i18n.vo.I18nKeyPageReqVO;
import com.lz.module.infra.controller.admin.i18n.vo.I18nKeySaveReqVO;
import com.lz.module.infra.dal.dataobject.i18n.I18nKeyDO;
import com.lz.module.infra.dal.dataobject.i18n.I18nMessageDO;
import com.lz.module.infra.dal.mysql.i18n.I18nKeyMapper;
import com.lz.module.infra.dal.mysql.i18n.I18nMessageMapper;
import com.lz.module.infra.enums.i18n.InfraI18nKeyIsSystemEnum;
import jakarta.annotation.Resource;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.annotation.Validated;

import java.util.List;

import static com.lz.framework.common.exception.util.ServiceExceptionUtil.exception;
import static com.lz.module.infra.enums.ErrorCodeConstants.*;

/**
 * 国际化键名 Service 实现类
 *
 * @author 荔枝软件
 */
@Service
@Validated
public class I18nKeyServiceImpl implements I18nKeyService {

    @Resource
    private I18nKeyMapper i18nKeyMapper;

    @Resource
    private I18nMessageMapper i18nMessageMapper;

    @CacheEvict(cacheNames = RedisKeyConstants.I18N_MESSAGE)
    @Override
    public Long createI18nKey(I18nKeySaveReqVO createReqVO) {
        // 插入
        I18nKeyDO i18nKey = BeanUtils.toBean(createReqVO, I18nKeyDO.class);
        //查询键是否存在
        I18nKeyDO i18nKeyDO = i18nKeyMapper.selectOne(I18nKeyDO::getMessageKey, i18nKey.getMessageKey());
        if (ObjectUtils.isNotNull(i18nKeyDO)) {
            throw exception(I18N_KEY_EXISTS);
        }
        i18nKeyMapper.insert(i18nKey);

        // 返回
        return i18nKey.getId();
    }

    @CacheEvict(cacheNames = RedisKeyConstants.I18N_MESSAGE)
    @Override
    public void updateI18nKey(I18nKeySaveReqVO updateReqVO) {
        // 校验存在
        I18nKeyDO i18nKeyDO = validateI18nKeyExists(updateReqVO.getId());
        //如果更改了键名
        if (!i18nKeyDO.getMessageKey().equals(updateReqVO.getMessageKey())) {
            throw exception(I18N_KEY_PROHIBIT_UPDATE_KEY);
        }
        // 更新
        I18nKeyDO updateObj = BeanUtils.toBean(updateReqVO, I18nKeyDO.class);
        i18nKeyMapper.updateById(updateObj);
    }

    @Transactional
    @CacheEvict(cacheNames = RedisKeyConstants.I18N_MESSAGE)
    @Override
    public void deleteI18nKey(Long id, Boolean isDeleteChildren) {
        // 校验存在
        I18nKeyDO i18nKeyDO = validateI18nKeyExists(id);
        //如果是内置不可以删除
        if (InfraI18nKeyIsSystemEnum.IS_SYSTEM_0.getStatus().equals(i18nKeyDO.getIsSystem())) {
            throw exception(I18N_KEY_PROHIBIT_DELETE_SYSTEM);
        }
        //如果需要删除子集
        if (isDeleteChildren) {
            i18nMessageMapper.delete(I18nMessageDO::getMessageKey, i18nKeyDO.getMessageKey());
        }
        // 删除
        i18nKeyMapper.deleteById(id);
    }

    @CacheEvict(cacheNames = RedisKeyConstants.I18N_MESSAGE)
    @Override
    public void deleteI18nKeyListByIds(List<Long> ids) {
        // 删除
        i18nKeyMapper.deleteByIds(ids);
    }


    private I18nKeyDO validateI18nKeyExists(Long id) {
        I18nKeyDO i18nKeyDO = i18nKeyMapper.selectById(id);
        if (i18nKeyDO == null) {
            throw exception(I18N_KEY_NOT_EXISTS);
        }
        return i18nKeyDO;
    }

    @Override
    public I18nKeyDO getI18nKey(Long id) {
        return i18nKeyMapper.selectById(id);
    }

    @Override
    public PageResult<I18nKeyDO> getI18nKeyPage(I18nKeyPageReqVO pageReqVO) {
        return i18nKeyMapper.selectPage(pageReqVO);
    }

}