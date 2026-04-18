package com.lz.module.system.enums.tenant;

import com.lz.framework.common.core.ArrayValuable;
import lombok.AllArgsConstructor;
import lombok.Getter;

import java.util.Arrays;

@Getter
@AllArgsConstructor
public enum SystemTenantTypeEnum implements ArrayValuable<Integer> {
    SYSTEM_TENANT_TYPE_ENUM_0(0, "未知"),
    SYSTEM_TENANT_TYPE_ENUM_1(1, "企业"),
    SYSTEM_TENANT_TYPE_ENUM_2(2, "政府单位"),
    SYSTEM_TENANT_TYPE_ENUM_3(3, "个人");

    public static final Integer[] ARRAYS = Arrays.stream(values()).map(SystemTenantTypeEnum::getStatus).toArray(Integer[]::new);

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
