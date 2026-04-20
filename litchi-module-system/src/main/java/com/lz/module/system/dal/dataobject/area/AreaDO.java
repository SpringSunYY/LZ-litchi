package com.lz.module.system.dal.dataobject.area;

import com.lz.framework.tenant.core.aop.TenantIgnore;
import lombok.*;
import java.util.*;
import java.math.BigDecimal;
import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.time.LocalDateTime;
import com.baomidou.mybatisplus.annotation.*;
import com.lz.framework.mybatis.core.dataobject.BaseDO;

/**
 * 地区信息 DO
 *
 * @author 荔枝
 */
@TableName("system_area")
@KeySequence("system_area_seq") // 用于 Oracle、PostgreSQL、Kingbase、DB2、H2 数据库的主键自增。如果是 MySQL 等数据库，可不写。
@Data
@EqualsAndHashCode(callSuper = true)
@ToString(callSuper = true)
@Builder
@NoArgsConstructor
@AllArgsConstructor
@TenantIgnore
public class AreaDO extends BaseDO {

    public static final Long PARENT_ID_ROOT = 0L;

    /**
     * ID
     */
    @TableId
    private Long id;
    /**
     * 地区名称
     */
    private String name;
    /**
     * 邮政编码
     */
    private String postalCode;
    /**
     * 父级ID
     */
    private Long parentId;
    /**
     * 层级
     *
     * 枚举 {@link TODO system_area_level 对应的类}
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


}