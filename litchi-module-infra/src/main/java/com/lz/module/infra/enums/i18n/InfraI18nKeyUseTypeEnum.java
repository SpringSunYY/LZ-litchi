package com.lz.module.infra.enums.i18n;

import com.lz.framework.common.core.ArrayValuable;
import lombok.AllArgsConstructor;
import lombok.Getter;

import java.util.Arrays;

@Getter
@AllArgsConstructor
public enum InfraI18nKeyUseTypeEnum implements ArrayValuable<Integer> {

    KEY_USE_TYPE_0(0, "公共"),
    KEY_USE_TYPE_1(1, "UI"),
    KEY_USE_TYPE_2(2, "表单"),
    KEY_USE_TYPE_3(3, "字段"),
    KEY_USE_TYPE_4(4, "功能"),
    KEY_USE_TYPE_5(5, "异常"),
    KEY_USE_TYPE_6(6, "菜单"),
    KEY_USE_TYPE_7(7, "字典");

    public static final Integer[] ARRAYS =
            Arrays.stream(values()).map(InfraI18nKeyUseTypeEnum::getStatus).toArray(Integer[]::new);

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
