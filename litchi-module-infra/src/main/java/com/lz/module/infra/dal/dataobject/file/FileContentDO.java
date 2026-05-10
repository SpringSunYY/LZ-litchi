package com.lz.module.infra.dal.dataobject.file;

import com.lz.framework.mybatis.core.dataobject.BaseDO;
import com.lz.framework.tenant.core.aop.TenantIgnore;
import com.lz.module.infra.framework.file.core.client.db.DBFileClient;
import com.baomidou.mybatisplus.annotation.KeySequence;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.*;

/**
 * 文件内容表
 *
 * 专门用于存储 {@link DBFileClient} 的文件内容
 *
 * @author 荔枝源码
 */
@TableName("infra_file_content")
@KeySequence("infra_file_content_seq") // 用于 Oracle、PostgreSQL、Kingbase、DB2、H2 数据库的主键自增。如果是 MySQL 等数据库，可不写。
@Data
@EqualsAndHashCode(callSuper = true)
@ToString(callSuper = true)
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class FileContentDO extends BaseDO {

    /**
     * 文件编号
     */
    @TableId
    private Long id;
    /**
     * 配置
     */
    private String configKey;
    /**
     * 文件名
     */
    private String name;
    /**
     * 文件路径
     */
    private String path;
    /**
     * 绝对路径
     */
    private String absolutePath;
    /**
     * 相对路径
     */
    private String relativePath;
    /**
     * 文件类型
     */
    private String type;
    /**
     * 文件大小
     */
    private Integer size;
    /**
     * 模块
     */
    private String moduleType;

    /**
     * 文件内容
     */
    private byte[] content;

}
