package com.lz.module.system.dal.dataobject.tenant;

import com.baomidou.mybatisplus.annotation.KeySequence;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.handlers.JacksonTypeHandler;
import com.lz.framework.mybatis.core.dataobject.BaseDO;
import com.lz.framework.tenant.core.aop.TenantIgnore;
import lombok.*;

import java.math.BigDecimal;
import java.util.Set;

/**
 * 租户 DO
 *
 * @author 荔枝源码
 */
@TableName(value = "system_tenant", autoResultMap = true)
@KeySequence("system_tenant_seq") // 用于 Oracle、PostgreSQL、Kingbase、DB2、H2 数据库的主键自增。如果是 MySQL 等数据库，可不写。
@Data
@EqualsAndHashCode(callSuper = true)
@ToString(callSuper = true)
@Builder
@AllArgsConstructor
@NoArgsConstructor
@TenantIgnore
public class TenantDO extends BaseDO {

    /**
     * 套餐编号 - 系统
     */
    public static final Long PACKAGE_ID_SYSTEM = 1L;


    /**
     * 租户编号
     */
    @TableId
    private Long id;
    /**
     * 租户名
     */
    private String name;
    /**
     * 编码
     */
    private String code;
    /**
     * 联系人的用户编号
     */
    private Long contactUserId;
    /**
     * 联系人
     */
    private String contactName;
    /**
     * 联系手机
     */
    private String contactMobile;
    /**
     * 行业
     */
    private Integer industry;
    /**
     * 类型
     */
    private Integer type;
    /**
     * 地区
     */
    private String addressCode;
    /**
     * 地址
     */
    private String addressDetail;
    /**
     * 相关资质
     */
    private String qualifications;
    /**
     * 租户状态（0正常 1停用）
     */
    private Integer status;
    /**
     * 关联菜单
     */
    @TableField(typeHandler = JacksonTypeHandler.class)
    private Set<Long> menuIds;
    /**
     * 绑定域名
     */
    private String website;
    /**
     * 充值金额
     */
    private BigDecimal rechargeAmount;
    /**
     * 支付金额
     */
    private BigDecimal paymentAmount;
    /**
     * 余额
     */
    private BigDecimal balanceAmount;
    /**
     * 支付密码
     */
    private String paymentPassword;
    /**
     * 账号数量
     */
    private Integer accountCount;

    /**
     * 当前数量
     */
    private Integer currentAccountCount;

}
