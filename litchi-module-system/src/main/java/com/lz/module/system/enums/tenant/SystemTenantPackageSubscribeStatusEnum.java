package com.lz.module.system.enums.tenant;

import com.lz.framework.common.core.ArrayValuable;
import lombok.AllArgsConstructor;
import lombok.Getter;

import java.util.Arrays;

@Getter
@AllArgsConstructor
public enum SystemTenantPackageSubscribeStatusEnum implements ArrayValuable<Integer> {
    SYSTEM_TENANT_PACKAGE_SUBSCRIBE_STATUS_ENUM_1(1, "待开始"),
    SYSTEM_TENANT_PACKAGE_SUBSCRIBE_STATUS_ENUM_2(2, "正常"),
    SYSTEM_TENANT_PACKAGE_SUBSCRIBE_STATUS_ENUM_3(3, "结束"),
    SYSTEM_TENANT_PACKAGE_SUBSCRIBE_STATUS_ENUM_4(4, "关闭");

    public static final Integer[] ARRAYS = Arrays.stream(values()).map(SystemTenantPackageSubscribeStatusEnum::getStatus).toArray(Integer[]::new);

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
