package com.lz.module.system.dal.dataobject.tenant;

import com.baomidou.mybatisplus.annotation.TableId;
import com.lz.framework.common.enums.CommonStatusEnum;
import com.lz.framework.mybatis.core.dataobject.BaseDO;
import com.lz.framework.tenant.core.aop.TenantIgnore;
import com.baomidou.mybatisplus.annotation.KeySequence;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.handlers.JacksonTypeHandler;
import lombok.*;

import java.math.BigDecimal;
import java.util.Set;

/**
 * 租户套餐 DO
 *
 * @author 荔枝源码
 */
@TableName(value = "system_tenant_package", autoResultMap = true)
@KeySequence("system_tenant_package_seq") // 用于 Oracle、PostgreSQL、Kingbase、DB2、H2 数据库的主键自增。如果是 MySQL 等数据库，可不写。
@Data
@EqualsAndHashCode(callSuper = true)
@ToString(callSuper = true)
@Builder
@AllArgsConstructor
@NoArgsConstructor
@TenantIgnore
public class TenantPackageDO extends BaseDO {

    /**
     * 套餐编号
     */
    @TableId
    private Long id;
    /**
     * 套餐名
     */
    private String name;
    /**
     * 套餐编码
     */
    private String code;
    /**
     * 套餐类型
     *
     */
    private Boolean type;
    /**
     * LOGO
     */
    private String logo;
    /**
     * 套餐价格
     */
    private BigDecimal price;
    /**
     * 套餐描述
     */
    private String description;
    /**
     * 套餐状态
     *
     */
    private Integer status;
    /**
     * 排序
     */
    private Integer orderNum;
    /**
     * 订阅数
     */
    private Integer subscriptionNum;
    /**
     * 订阅总额
     */
    private BigDecimal subscriptionTotalAmount;
    /**
     * 备注
     */
    private String remark;
    /**
     * 关联的菜单编号
     */
    @TableField(typeHandler = JacksonTypeHandler.class)
    private Set<Long> menuIds;

}
