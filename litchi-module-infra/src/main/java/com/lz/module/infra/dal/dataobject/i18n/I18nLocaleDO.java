package com.lz.module.infra.dal.dataobject.i18n;

import com.lz.framework.tenant.core.aop.TenantIgnore;
import lombok.*;
import com.baomidou.mybatisplus.annotation.*;
import com.lz.framework.mybatis.core.dataobject.BaseDO;

/**
 * 国际化国家 DO
 *
 * @author 荔枝软件
 */
@TableName("infra_i18n_locale")
@KeySequence("infra_i18n_locale_seq") // 用于 Oracle、PostgreSQL、Kingbase、DB2、H2 数据库的主键自增。如果是 MySQL 等数据库，可不写。
@Data
@EqualsAndHashCode(callSuper = true)
@ToString(callSuper = true)
@Builder
@NoArgsConstructor
@AllArgsConstructor
@TenantIgnore
public class I18nLocaleDO extends BaseDO {

    /**
     * 编号
     */
    @TableId
    private Long id;
    /**
     * 国家地区
     */
    private String localeName;
    /**
     * 简称
     */
    private String locale;
    /**
     * 显示顺序
     */
    private Integer orderNum;
    /**
     * 状态
     *
     */
    private Integer localeStatus;
    /**
     * 使用端
     *
     */
    private Integer localeTarget;
    /**
     * 默认
     *
     */
    private Integer isDefault;
    /**
     * 备注
     */
    private String remark;


}