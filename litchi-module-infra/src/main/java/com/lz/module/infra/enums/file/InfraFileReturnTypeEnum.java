package com.lz.module.infra.enums.file;

import com.lz.framework.common.core.ArrayValuable;
import lombok.AllArgsConstructor;
import lombok.Getter;

import java.util.Arrays;

@Getter
@AllArgsConstructor
public enum InfraFileReturnTypeEnum implements ArrayValuable<Integer> {

    FILE_RETURN_TYPE_0(0, "返回URL"),
    FILE_RETURN_TYPE_1(1, "后端下载");

    public static final Integer[] ARRAYS =
            Arrays.stream(values()).map(InfraFileReturnTypeEnum::getStatus).toArray(Integer[]::new);

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