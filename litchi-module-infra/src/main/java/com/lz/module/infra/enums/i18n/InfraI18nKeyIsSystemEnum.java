package com.lz.module.infra.enums.i18n;

import com.lz.framework.common.core.ArrayValuable;
import lombok.AllArgsConstructor;
import lombok.Getter;

import java.util.Arrays;

@Getter
@AllArgsConstructor
public enum InfraI18nKeyIsSystemEnum implements ArrayValuable<Integer> {

    IS_SYSTEM_0(0, "是"),
    IS_SYSTEM_1(1, "否");

    public static final Integer[] ARRAYS =
            Arrays.stream(values()).map(InfraI18nKeyIsSystemEnum::getStatus).toArray(Integer[]::new);

    private final Integer status;
    private final String name;

    @Override
    public Integer[] array() {
        return ARRAYS;
    }
}