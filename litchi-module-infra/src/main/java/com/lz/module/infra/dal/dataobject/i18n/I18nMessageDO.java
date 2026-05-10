package com.lz.module.infra.dal.dataobject.i18n;

import com.lz.framework.tenant.core.aop.TenantIgnore;
import lombok.*;
import com.baomidou.mybatisplus.annotation.*;
import com.lz.framework.mybatis.core.dataobject.BaseDO;

/**
 * 国际化信息 DO
 *
 * @author 荔枝软件
 */
@TableName("infra_i18n_message")
@KeySequence("infra_i18n_message_seq") // 用于 Oracle、PostgreSQL、Kingbase、DB2、H2 数据库的主键自增。如果是 MySQL 等数据库，可不写。
@Data
@EqualsAndHashCode(callSuper = true)
@ToString(callSuper = true)
@Builder
@NoArgsConstructor
@AllArgsConstructor
@TenantIgnore
public class I18nMessageDO extends BaseDO {

    /**
     * 主键
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
     * 简称
     */
    private String locale;
    /**
     * 使用端
     *
     */
    private Integer localeTarget;
    /**
     * 是否内置
     *
     */
    private Integer isSystem;
    /**
     * 模块
     *
     */
    private String moduleType;
    /**
     * 使用类型
     *
     */
    private Integer useType;
    /**
     * 消息
     */
    private String message;
    /**
     * 备注
     */
    private String remark;


}