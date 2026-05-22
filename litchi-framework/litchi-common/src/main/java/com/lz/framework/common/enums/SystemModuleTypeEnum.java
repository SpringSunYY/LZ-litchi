package com.lz.framework.common.enums;

import com.lz.framework.common.core.ArrayValuable;
import lombok.AllArgsConstructor;
import lombok.Getter;

import java.util.Arrays;

@Getter
@AllArgsConstructor
public enum SystemModuleTypeEnum implements ArrayValuable<String> {

    MODULE_TYPE_INFRA("infra", "基础设施"),
    MODULE_TYPE_SYSTEM("system", "系统模块"),
    MODULE_TYPE_BPM("bpm", "工作流程"),
    MODULE_TYPE_PAY("pay", "支付模块"),
    MODULE_TYPE_MEMBER("member", "会员中心"),
    MODULE_TYPE_MALL("mall", "商城系统"),
    MODULE_TYPE_CRM("crm", "CRM系统"),
    MODULE_TYPE_ERP("erp", "ERP系统");

    public static final String[] ARRAYS =
            Arrays.stream(values()).map(SystemModuleTypeEnum::getStatus).toArray(String[]::new);

    /**
     * 状态值
     */
    private final String status;

    /**
     * 状态名
     */
    private final String name;

    @Override
    public String[] array() {
        return ARRAYS;
    }
}
