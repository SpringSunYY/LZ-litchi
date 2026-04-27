package com.lz.module.infra.service.i18nLocale;

import java.util.*;
import jakarta.validation.*;
import com.lz.module.infra.controller.admin.i18nLocale.vo.*;
import com.lz.module.infra.dal.dataobject.i18nLocale.I18nLocaleDO;
import com.lz.framework.common.pojo.PageResult;
import com.lz.framework.common.pojo.PageParam;

/**
 * 国际化国家 Service 接口
 *
 * @author 荔枝软件
 */
public interface I18nLocaleService {

    /**
     * 创建国际化国家
     *
     * @param createReqVO 创建信息
     * @return 编号
     */
    Long createI18nLocale(@Valid I18nLocaleSaveReqVO createReqVO);

    /**
     * 更新国际化国家
     *
     * @param updateReqVO 更新信息
     */
    void updateI18nLocale(@Valid I18nLocaleSaveReqVO updateReqVO);

    /**
     * 删除国际化国家
     *
     * @param id 编号
     */
    void deleteI18nLocale(Long id);

    /**
    * 批量删除国际化国家
    *
    * @param ids 编号
    */
    void deleteI18nLocaleListByIds(List<Long> ids);

    /**
     * 获得国际化国家
     *
     * @param id 编号
     * @return 国际化国家
     */
    I18nLocaleDO getI18nLocale(Long id);

    /**
     * 获得国际化国家分页
     *
     * @param pageReqVO 分页查询
     * @return 国际化国家分页
     */
    PageResult<I18nLocaleDO> getI18nLocalePage(I18nLocalePageReqVO pageReqVO);

}