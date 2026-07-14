package com.lz.framework.vector.config;

import com.lz.framework.vector.constants.MilvusDatabaseConstants;
import com.lz.framework.vector.constants.MilvusIsolationStrategyEnum;
import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.validation.annotation.Validated;


/**
 * Milvus 向量数据库配置。
 *
 * @author litchi
 */
@Data
@Validated
@ConfigurationProperties(prefix = "litchi.vector.milvus")
public class MilvusProperties {

    /** 是否启用 Milvus 向量模块 */
    private boolean enable = false;

    /** Milvus 服务地址 */
    private String host;

    /** Milvus 服务端口 */
    private int port = 19530;

    /** Milvus 初始 database 名 */
    private String database = MilvusDatabaseConstants.DEFAULT;

    /**
     * 是否开启动态 database：
     * true = 运行时自动拼接为 {@code database + "_" + modelName}，
     * 数据按模型天然隔离，切换模型无需清库。
     */
    private boolean dynamicDatabase = true;

    /** Milvus 用户名（未设置则不鉴权） */
    private String username;

    /** Milvus 密码 */
    private String password;

    /** 启动时检测到 schema 不兼容时是否重建集合（数据会丢；改 schema 后临时打开跑一次） */
    private boolean recreateOnSchemaChange = true;

    /** 单次 Milvus insert RPC 的最大条数；超过会拆批打多次 RPC */
    private int insertBatchSize = 64;

    /**
     * 多租户隔离策略：
     * <ul>
     *   <li>database：每租户一个独立 Milvus database（物理强隔离）</li>
     *   <li>collection：每租户一个独立 collection（集合名拼接租户 ID）</li>
     *   <li>partition：单 collection 内按 tenantId 建 partition</li>
     * </ul>
     */
    private String isolation = MilvusIsolationStrategyEnum.DATABASE.code();
}
