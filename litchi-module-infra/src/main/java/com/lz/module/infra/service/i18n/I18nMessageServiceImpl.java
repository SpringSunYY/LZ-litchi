package com.lz.module.infra.service.i18n;

import com.lz.module.infra.controller.admin.i18n.vo.I18nMessagePageReqVO;
import com.lz.module.infra.controller.admin.i18n.vo.I18nMessageSaveReqVO;
import org.springframework.stereotype.Service;
import jakarta.annotation.Resource;
import org.springframework.validation.annotation.Validated;

import java.util.*;

import com.lz.module.infra.dal.dataobject.i18n.I18nMessageDO;
import com.lz.framework.common.pojo.PageResult;
import com.lz.framework.common.util.object.BeanUtils;

import com.lz.module.infra.dal.mysql.i18n.I18nMessageMapper;

import static com.lz.framework.common.exception.util.ServiceExceptionUtil.exception;
import static com.lz.framework.common.util.collection.CollectionUtils.convertList;
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
    public Long createI18nMessage(I18nMessageSaveReqVO createReqVO) {
        // 插入
        I18nMessageDO i18nMessage = BeanUtils.toBean(createReqVO, I18nMessageDO.class);
        i18nMessageMapper.insert(i18nMessage);

        // 返回
        return i18nMessage.getId();
    }

    @Override
    public void updateI18nMessage(I18nMessageSaveReqVO updateReqVO) {
        // 校验存在
        validateI18nMessageExists(updateReqVO.getId());
        // 更新
        I18nMessageDO updateObj = BeanUtils.toBean(updateReqVO, I18nMessageDO.class);
        i18nMessageMapper.updateById(updateObj);
    }

    @Override
    public void deleteI18nMessage(Long id) {
        // 校验存在
        validateI18nMessageExists(id);
        // 删除
        i18nMessageMapper.deleteById(id);
    }

    @Override
        public void deleteI18nMessageListByIds(List<Long> ids) {
        // 删除
        i18nMessageMapper.deleteByIds(ids);
        }


    private void validateI18nMessageExists(Long id) {
        if (i18nMessageMapper.selectById(id) == null) {
            throw exception(I18N_MESSAGE_NOT_EXISTS);
        }
    }

    @Override
    public I18nMessageDO getI18nMessage(Long id) {
        return i18nMessageMapper.selectById(id);
    }

    @Override
    public PageResult<I18nMessageDO> getI18nMessagePage(I18nMessagePageReqVO pageReqVO) {
        return i18nMessageMapper.selectPage(pageReqVO);
    }

}