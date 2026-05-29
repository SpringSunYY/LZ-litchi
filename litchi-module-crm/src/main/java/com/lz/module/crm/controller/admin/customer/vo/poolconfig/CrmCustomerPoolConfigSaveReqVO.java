package com.lz.module.crm.controller.admin.customer.vo.poolconfig;

import cn.hutool.core.util.BooleanUtil;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.lz.framework.common.validation.i18n.I18nAssertTrue;
import com.lz.framework.common.validation.i18n.I18nNotNull;
import com.mzt.logapi.starter.annotation.DiffLogField;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.util.Objects;

@Schema(description = "管理后台 - CRM 客户公海配置的创建/更新 Request VO")
@Data
public class CrmCustomerPoolConfigSaveReqVO {

    @Schema(description = "是否启用客户公海", requiredMode = Schema.RequiredMode.REQUIRED, example = "true")
    @DiffLogField(name = "是否启用客户公海")
    @I18nNotNull(i18nKey = "crm.customerPoolConfig.back.enabled.notNull", message = "是否启用客户公海不能为空")
    private Boolean enabled;

    @Schema(description = "未跟进放入公海天数", example = "2")
    @DiffLogField(name = "未跟进放入公海天数")
    private Integer contactExpireDays;

    @Schema(description = "未成交放入公海天数", example = "2")
    @DiffLogField(name = "未成交放入公海天数")
    private Integer dealExpireDays;

    @Schema(description = "是否开启提前提醒", example = "true")
    @DiffLogField(name = "是否开启提前提醒")
    private Boolean notifyEnabled;

    @Schema(description = "提前提醒天数", example = "2")
    @DiffLogField(name = "提前提醒天数")
    private Integer notifyDays;

    @I18nAssertTrue(i18nKey = "crm.customerPoolConfig.back.dealExpireDays.assertTrue", message = "未成交放入公海天数不能为空")
    @JsonIgnore
    public boolean isDealExpireDaysValid() {
        if (!BooleanUtil.isTrue(getEnabled())) {
            return true;
        }
        return Objects.nonNull(getDealExpireDays());
    }

    @I18nAssertTrue(i18nKey = "crm.customerPoolConfig.back.contactExpireDays.assertTrue", message = "未跟进放入公海天数不能为空")
    @JsonIgnore
    public boolean isContactExpireDaysValid() {
        if (!BooleanUtil.isTrue(getEnabled())) {
            return true;
        }
        return Objects.nonNull(getContactExpireDays());
    }

    @I18nAssertTrue(i18nKey = "crm.customerPoolConfig.back.notifyDays.assertTrue", message = "提前提醒天数不能为空")
    @JsonIgnore
    public boolean isNotifyDaysValid() {
        if (!BooleanUtil.isTrue(getNotifyEnabled())) {
            return true;
        }
        return Objects.nonNull(getNotifyDays());
    }

}
