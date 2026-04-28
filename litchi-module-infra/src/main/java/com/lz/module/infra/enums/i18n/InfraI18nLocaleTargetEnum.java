package com.lz.module.infra.enums.i18n;

import com.lz.framework.common.core.ArrayValuable;
import lombok.AllArgsConstructor;
import lombok.Getter;

import java.util.Arrays;

@Getter
@AllArgsConstructor
public enum InfraI18nLocaleTargetEnum implements ArrayValuable<Integer> {

    LOCALE_TARGET_0(0, "通用"),
    LOCALE_TARGET_1(1, "后端"),
    LOCALE_TARGET_2(2, "PC后台");

    public static final Integer[] ARRAYS =
            Arrays.stream(values()).map(InfraI18nLocaleTargetEnum::getStatus).toArray(Integer[]::new);

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