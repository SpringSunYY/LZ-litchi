package com.lz.module.infra.dal.dataobject.i18nLocale;

import lombok.*;
import java.util.*;
import java.time.LocalDateTime;
import java.time.LocalDateTime;
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
     * 枚举 {@link TODO infra_i18n_locale_status 对应的类}
     */
    private Integer localeStatus;
    /**
     * 类型
     *
     * 枚举 {@link TODO infra_i18n_locale_type 对应的类}
     */
    private Integer localeType;
    /**
     * 默认
     *
     * 枚举 {@link TODO infra_i18n_locale_is_default 对应的类}
     */
    private Integer isDefault;
    /**
     * 备注
     */
    private String remark;


}