package com.lz.module.infra.enums.file;

import com.lz.framework.common.core.ArrayValuable;
import lombok.AllArgsConstructor;
import lombok.Getter;

import java.util.Arrays;

@Getter
@AllArgsConstructor
public enum InfraFilePathTypeEnum implements ArrayValuable<Integer> {

    FILE_PATH_TYPE_0(0, "相对路径"),
    FILE_PATH_TYPE_1(1, "绝对路径");

    public static final Integer[] ARRAYS =
            Arrays.stream(values()).map(InfraFilePathTypeEnum::getStatus).toArray(Integer[]::new);

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