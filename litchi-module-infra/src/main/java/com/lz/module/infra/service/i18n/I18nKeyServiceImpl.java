package com.lz.module.infra.service.i18n;

import com.lz.framework.common.pojo.PageResult;
import com.lz.framework.common.util.object.BeanUtils;
import com.lz.module.infra.controller.admin.i18n.vo.I18nKeyPageReqVO;
import com.lz.module.infra.controller.admin.i18n.vo.I18nKeySaveReqVO;
import com.lz.module.infra.dal.dataobject.i18n.I18nKeyDO;
import com.lz.module.infra.dal.mysql.i18n.I18nKeyMapper;
import jakarta.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.validation.annotation.Validated;

import java.util.List;

import static com.lz.framework.common.exception.util.ServiceExceptionUtil.exception;
import static com.lz.module.infra.enums.ErrorCodeConstants.I18N_KEY_NOT_EXISTS;

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

    @Override
    public Long createI18nKey(I18nKeySaveReqVO createReqVO) {
        // 插入
        I18nKeyDO i18nKey = BeanUtils.toBean(createReqVO, I18nKeyDO.class);
        i18nKeyMapper.insert(i18nKey);

        // 返回
        return i18nKey.getId();
    }

    @Override
    public void updateI18nKey(I18nKeySaveReqVO updateReqVO) {
        // 校验存在
        validateI18nKeyExists(updateReqVO.getId());
        // 更新
        I18nKeyDO updateObj = BeanUtils.toBean(updateReqVO, I18nKeyDO.class);
        i18nKeyMapper.updateById(updateObj);
    }

    @Override
    public void deleteI18nKey(Long id) {
        // 校验存在
        validateI18nKeyExists(id);
        // 删除
        i18nKeyMapper.deleteById(id);
    }

    @Override
        public void deleteI18nKeyListByIds(List<Long> ids) {
        // 删除
        i18nKeyMapper.deleteByIds(ids);
        }


    private void validateI18nKeyExists(Long id) {
        if (i18nKeyMapper.selectById(id) == null) {
            throw exception(I18N_KEY_NOT_EXISTS);
        }
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