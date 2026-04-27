package com.lz.module.infra.service.i18n;

import java.util.*;

import com.lz.module.infra.controller.admin.i18n.vo.I18nKeyPageReqVO;
import com.lz.module.infra.controller.admin.i18n.vo.I18nKeySaveReqVO;
import jakarta.validation.*;
import com.lz.module.infra.dal.dataobject.i18n.I18nKeyDO;
import com.lz.framework.common.pojo.PageResult;

/**
 * 国际化键名 Service 接口
 *
 * @author 荔枝软件
 */
public interface I18nKeyService {

    /**
     * 创建国际化键名
     *
     * @param createReqVO 创建信息
     * @return 编号
     */
    Long createI18nKey(@Valid I18nKeySaveReqVO createReqVO);

    /**
     * 更新国际化键名
     *
     * @param updateReqVO 更新信息
     */
    void updateI18nKey(@Valid I18nKeySaveReqVO updateReqVO);

    /**
     * 删除国际化键名
     *
     * @param id 编号
     */
    void deleteI18nKey(Long id);

    /**
    * 批量删除国际化键名
    *
    * @param ids 编号
    */
    void deleteI18nKeyListByIds(List<Long> ids);

    /**
     * 获得国际化键名
     *
     * @param id 编号
     * @return 国际化键名
     */
    I18nKeyDO getI18nKey(Long id);

    /**
     * 获得国际化键名分页
     *
     * @param pageReqVO 分页查询
     * @return 国际化键名分页
     */
    PageResult<I18nKeyDO> getI18nKeyPage(I18nKeyPageReqVO pageReqVO);

}