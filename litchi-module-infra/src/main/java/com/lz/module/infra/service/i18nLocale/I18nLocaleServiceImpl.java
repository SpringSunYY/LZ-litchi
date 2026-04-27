package com.lz.module.infra.service.i18nLocale;

import cn.hutool.core.collection.CollUtil;
import org.springframework.stereotype.Service;
import jakarta.annotation.Resource;
import org.springframework.validation.annotation.Validated;
import org.springframework.transaction.annotation.Transactional;

import java.util.*;
import com.lz.module.infra.controller.admin.i18nLocale.vo.*;
import com.lz.module.infra.dal.dataobject.i18nLocale.I18nLocaleDO;
import com.lz.framework.common.pojo.PageResult;
import com.lz.framework.common.pojo.PageParam;
import com.lz.framework.common.util.object.BeanUtils;

import com.lz.module.infra.dal.mysql.i18nLocale.I18nLocaleMapper;

import static com.lz.framework.common.exception.util.ServiceExceptionUtil.exception;
import static com.lz.framework.common.util.collection.CollectionUtils.convertList;
import static com.lz.framework.common.util.collection.CollectionUtils.diffList;
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

    @Override
    public Long createI18nLocale(I18nLocaleSaveReqVO createReqVO) {
        // 插入
        I18nLocaleDO i18nLocale = BeanUtils.toBean(createReqVO, I18nLocaleDO.class);
        i18nLocaleMapper.insert(i18nLocale);

        // 返回
        return i18nLocale.getId();
    }

    @Override
    public void updateI18nLocale(I18nLocaleSaveReqVO updateReqVO) {
        // 校验存在
        validateI18nLocaleExists(updateReqVO.getId());
        // 更新
        I18nLocaleDO updateObj = BeanUtils.toBean(updateReqVO, I18nLocaleDO.class);
        i18nLocaleMapper.updateById(updateObj);
    }

    @Override
    public void deleteI18nLocale(Long id) {
        // 校验存在
        validateI18nLocaleExists(id);
        // 删除
        i18nLocaleMapper.deleteById(id);
    }

    @Override
        public void deleteI18nLocaleListByIds(List<Long> ids) {
        // 删除
        i18nLocaleMapper.deleteByIds(ids);
        }


    private void validateI18nLocaleExists(Long id) {
        if (i18nLocaleMapper.selectById(id) == null) {
            throw exception(I18N_LOCALE_NOT_EXISTS);
        }
    }

    @Override
    public I18nLocaleDO getI18nLocale(Long id) {
        return i18nLocaleMapper.selectById(id);
    }

    @Override
    public PageResult<I18nLocaleDO> getI18nLocalePage(I18nLocalePageReqVO pageReqVO) {
        return i18nLocaleMapper.selectPage(pageReqVO);
    }

}