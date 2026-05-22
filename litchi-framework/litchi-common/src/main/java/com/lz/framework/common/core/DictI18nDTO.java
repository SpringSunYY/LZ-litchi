package com.lz.framework.common.core;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class DictI18nDTO {
    /**
     * 字典标签
     */
    private String label;

    /**
     * 字典名称
     */
    private String dictName;
}
