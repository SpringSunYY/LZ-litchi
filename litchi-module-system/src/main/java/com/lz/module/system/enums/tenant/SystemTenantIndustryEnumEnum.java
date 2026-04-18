package com.lz.module.system.enums.tenant;

import com.lz.framework.common.core.ArrayValuable;
import lombok.AllArgsConstructor;
import lombok.Getter;

import java.util.Arrays;

@Getter
@AllArgsConstructor
public enum SystemTenantIndustryEnumEnum implements ArrayValuable<Integer> {
    SYSTEM_TENANT_INDUSTRY_ENUM_0(0, "其他"),
    SYSTEM_TENANT_INDUSTRY_ENUM_1(1, "互联网行业"),
    SYSTEM_TENANT_INDUSTRY_ENUM_2(2, "电商行业"),
    SYSTEM_TENANT_INDUSTRY_ENUM_3(3, "建筑行业"),
    SYSTEM_TENANT_INDUSTRY_ENUM_4(4, "教育行业"),
    SYSTEM_TENANT_INDUSTRY_ENUM_5(5, "医疗行业"),
    SYSTEM_TENANT_INDUSTRY_ENUM_6(6, "金融行业"),
    SYSTEM_TENANT_INDUSTRY_ENUM_7(7, "游戏行业"),
    SYSTEM_TENANT_INDUSTRY_ENUM_8(8, "旅游行业"),
    SYSTEM_TENANT_INDUSTRY_ENUM_9(9, "运营商行业"),
    SYSTEM_TENANT_INDUSTRY_ENUM_10(10, "政府单位");

    public static final Integer[]ARRAYS =Arrays.stream(

    values()).

    map(SystemTenantIndustryEnumEnum::getStatus).

    toArray(Integer[]::new);

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
