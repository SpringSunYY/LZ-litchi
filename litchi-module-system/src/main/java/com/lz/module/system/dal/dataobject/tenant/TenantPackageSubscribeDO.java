package com.lz.module.system.dal.dataobject.tenant;

import com.baomidou.mybatisplus.annotation.KeySequence;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.lz.framework.mybatis.core.dataobject.BaseDO;
import lombok.*;

import java.math.BigDecimal;
import java.time.LocalDateTime;

/**
 * 租户套餐订阅 DO
 *
 * @author 荔枝软件
 */
@TableName("system_tenant_package_subscribe")
@KeySequence("system_tenant_package_subscribe_seq") // 用于 Oracle、PostgreSQL、Kingbase、DB2、H2 数据库的主键自增。如果是 MySQL 等数据库，可不写。
@Data
@EqualsAndHashCode(callSuper = true)
@ToString(callSuper = true)
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class TenantPackageSubscribeDO extends BaseDO {

    /**
     * 套餐编号
     */
    @TableId
    private Long id;
    /**
     * 套餐名
     */
    private String packageName;
    /**
     * 套餐编码
     */
    private String packageCode;
    /**
     * 套餐类型
     */
    private Integer packageType;
    /**
     * 套餐状态
     */
    private Integer packageStatus;
    /**
     * LOGO
     */
    private String packageLogo;
    /**
     * 租户名
     */
    private String tenantName;
    /**
     * 租户编码
     */
    private String tenantCode;
    /**
     * 套餐价格
     */
    private BigDecimal price;
    /**
     * 优惠价格
     */
    private BigDecimal discountPrice;
    /**
     * 天数
     */
    private Integer days;
    /**
     * 总价格
     */
    private BigDecimal totalPrice;
    /**
     * 订阅状态
     */
    private Integer status;
    /**
     * 支付状态
     */
    private Integer payStatus;
    /**
     * 开始时间
     */
    private LocalDateTime startTime;
    /**
     * 结束时间
     */
    private LocalDateTime endTime;
    /**
     * 备注
     */
    private String remark;


}