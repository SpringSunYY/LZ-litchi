package com.lz.framework.common.util.dict;

import cn.hutool.core.collection.CollUtil;
import com.lz.framework.common.biz.system.dict.DictDataCommonApi;
import com.lz.framework.common.biz.system.dict.dto.DictDataRespDTO;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Objects;

/**
 * 字典工具类
 *
 * @author 荔枝源码
 */
@Slf4j
public class DictUtils {

    private static DictDataCommonApi dictDataApi;

    public static void setDictDataApi(DictDataCommonApi dictDataApi) {
        DictUtils.dictDataApi = dictDataApi;
    }

    public static List<DictDataRespDTO> getDictDataList(String dictType) {
        return dictDataApi.getDictDataList(dictType);
    }

    public static boolean containsValue(String dictType, String value) {
        List<DictDataRespDTO> dictDataList = getDictDataList(dictType);
        if (CollUtil.isEmpty(dictDataList)) {
            return false;
        }
        for (DictDataRespDTO dictData : dictDataList) {
            if (Objects.equals(dictData.getValue(), value)) {
                return true;
            }
        }
        return false;
    }

}
