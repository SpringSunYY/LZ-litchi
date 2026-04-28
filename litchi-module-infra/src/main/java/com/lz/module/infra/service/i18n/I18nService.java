package com.lz.module.infra.service.i18n;

import com.lz.module.infra.controller.admin.i18n.vo.I18nLocaleSimpRespVO;

import java.util.List;

/**
 * 国际化键名 Service 接口
 *
 * @author 荔枝软件
 */
public interface I18nService {


    /**
     * 创建国际化键名
     *
     * @return 键名编号
     */
    List<I18nLocaleSimpRespVO> getI18nLocale(Integer localeTarget);
}