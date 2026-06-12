package com.lz.module.infra.dal.dataobject.area;

import com.baomidou.mybatisplus.annotation.KeySequence;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.lz.framework.mybatis.core.dataobject.BaseDO;
import com.lz.framework.tenant.core.aop.TenantIgnore;
import lombok.*;

import java.math.BigDecimal;

/**
 * 地区信息 DO
 *
 * @author 荔枝
 */
@TableName("infra_area")
@KeySequence("infra_area_seq") // 用于 Oracle、PostgreSQL、Kingbase、DB2、H2 数据库的主键自增。如果是 MySQL 等数据库，可不写。
@Data
@EqualsAndHashCode(callSuper = true)
@ToString(callSuper = true)
@Builder
@NoArgsConstructor
@AllArgsConstructor
@TenantIgnore
public class AreaDO extends BaseDO {

    public static final String PARENT_CODE_ROOT = "0";

    /**
     * ID
     */
    @TableId
    private Long id;
    /**
     * 行政编码
     */
    private String code;
    /**
     * 地区名称
     */
    private String name;
    /**
     * 邮政编码
     */
    private String postalCode;
    /**
     * 父级编号
     */
    private String parentCode;
    /**
     * 层级
     * <p>
     */
    private Integer level;
    /**
     * 经度
     */
    private BigDecimal longitude;
    /**
     * 纬度
     */
    private BigDecimal latitude;
    /**
     * 数据来源
     */
    private String source;
    /**
     * GeoJson
     */
    private String geoJson;
    /**
     * 排序号
     */
    private String sortNum;
    /**
     * 祖级列表
     */
    private String ancestors;


}
