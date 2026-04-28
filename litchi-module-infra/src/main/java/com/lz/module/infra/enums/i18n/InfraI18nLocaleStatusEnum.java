package com.lz.module.infra.enums.i18n;

import com.lz.framework.common.core.ArrayValuable;
import lombok.AllArgsConstructor;
import lombok.Getter;

import java.util.Arrays;

@Getter
@AllArgsConstructor
public enum InfraI18nLocaleStatusEnum implements ArrayValuable<Integer> {

    LOCALE_STATUS_0(0, "正常"),
    LOCALE_STATUS_1(1, "关闭");

    public static final Integer[] ARRAYS =
            Arrays.stream(values()).map(InfraI18nLocaleStatusEnum::getStatus).toArray(Integer[]::new);

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