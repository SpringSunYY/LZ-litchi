package com.lz.framework.dict.config;

import com.lz.framework.common.biz.system.dict.DictDataCommonApi;
import com.lz.framework.common.util.dict.DictUtils;
import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.autoconfigure.AutoConfiguration;
import org.springframework.context.annotation.Bean;

@AutoConfiguration
@Slf4j
public class LitchiDictAutoConfiguration {

    @Bean
    @SuppressWarnings("InstantiationOfUtilityClass")
    public DictUtils dictUtils(DictDataCommonApi dictDataApi) {
        DictUtils.setDictDataApi(dictDataApi);
        log.info("[init][初始化 DictUtils 成功]");
        return new DictUtils();
    }

}
