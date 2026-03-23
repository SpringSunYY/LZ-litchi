package com.lz.module.crm.service.permission.bo;

import com.lz.framework.common.validation.InEnum;
import com.lz.module.crm.enums.common.CrmBizTypeEnum;
import com.lz.module.crm.enums.permission.CrmPermissionLevelEnum;
import lombok.AllArgsConstructor;
import lombok.Data;

import jakarta.validation.constraints.NotNull;
import lombok.NoArgsConstructor;

/**
 * 数据权限转移 Request BO
 *
 * @author HUIHUI
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class CrmPermissionTransferReqBO {

    /**
     * 当前登录用户编号
     */
    @NotNull(message = "用户编号不能为空")
    private Long userId;

    /**
     * CRM 类型
     */
    @NotNull(message = "Crm 类型不能为空")
    @InEnum(CrmBizTypeEnum.class)
    private Integer bizType;
    /**
     * 数据编号
     */
    @NotNull(message = "CRM 数据编号不能为空")
    private Long bizId;

    /**
     * 新负责人的用户编号
     */
    @NotNull(message = "新负责人的用户编号不能为空")
    private Long newOwnerUserId;

    /**
     * 老负责人加入团队后的权限级别。如果 null 说明移除
     *
     * 关联 {@link CrmPermissionLevelEnum}
     */
    private Integer oldOwnerPermissionLevel;

}
