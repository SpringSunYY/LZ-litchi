package com.lz.module.system.enums.tenant;

import com.lz.framework.common.core.ArrayValuable;
import lombok.AllArgsConstructor;
import lombok.Getter;

import java.util.Arrays;

@Getter
@AllArgsConstructor
public enum SystemTenantPackageTypeEnum implements ArrayValuable<Integer> {
    SYSTEM_TENANT_PACKAGE_TYPE_ENUM_0(0, "内置"),
    SYSTEM_TENANT_PACKAGE_TYPE_ENUM_1(1, "套餐");

    public static final Integer[] ARRAYS = Arrays.stream(values()).map(SystemTenantPackageTypeEnum::getStatus).toArray(Integer[]::new);

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
