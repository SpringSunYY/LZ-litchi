package com.lz.module.infra.dal.dataobject.i18n;

import com.lz.framework.tenant.core.aop.TenantIgnore;
import lombok.*;
import com.baomidou.mybatisplus.annotation.*;
import com.lz.framework.mybatis.core.dataobject.BaseDO;

/**
 * 国际化键名 DO
 *
 * @author 荔枝软件
 */
@TableName("infra_i18n_key")
@KeySequence("infra_i18n_key_seq") // 用于 Oracle、PostgreSQL、Kingbase、DB2、H2 数据库的主键自增。如果是 MySQL 等数据库，可不写。
@Data
@EqualsAndHashCode(callSuper = true)
@ToString(callSuper = true)
@Builder
@NoArgsConstructor
@AllArgsConstructor
@TenantIgnore
public class I18nKeyDO extends BaseDO {

    /**
     * 编号
     */
    @TableId
    private Long id;
    /**
     * 名称
     */
    private String messageName;
    /**
     * 键
     */
    private String messageKey;
    /**
     * 是否内置
     *
     */
    private Integer isSystem;
    /**
     * 模块
     *
     */
    private Integer moduleType;
    /**
     * 使用类型
     *
     */
    private Integer useType;
    /**
     * 显示顺序
     */
    private Integer orderNum;
    /**
     * 备注
     */
    private String remark;


}