package com.lz.module.infra.api.i18n;

import com.lz.framework.common.core.DictI18nDTO;

import java.util.Map;

/**
 * 国际化 API 接口
 *
 * @author 荔枝源码
 */
public interface I18nApi {
    /**
     * 保存字典数据
     *
     * @param dictDataMap 字典数据
     */
    void saveDictI18n(Map<String, DictI18nDTO> dictDataMap);
}
