package com.lz.module.infra.enums.i18n;

import com.lz.framework.common.core.ArrayValuable;
import lombok.AllArgsConstructor;
import lombok.Getter;

import java.util.Arrays;

@Getter
@AllArgsConstructor
public enum InfraI18nLocaleIsDefaultEnum implements ArrayValuable<Integer> {

    IS_DEFAULT_0(0, "是"),
    IS_DEFAULT_1(1, "否");

    public static final Integer[] ARRAYS =
            Arrays.stream(values()).map(InfraI18nLocaleIsDefaultEnum::getStatus).toArray(Integer[]::new);

    /**
     * 状态值
     */
    private final Integer status;

    /**
     * 状态名
     */
    private final String name;

    @Override
    public Integer[] array() {
        return ARRAYS;
    }
}