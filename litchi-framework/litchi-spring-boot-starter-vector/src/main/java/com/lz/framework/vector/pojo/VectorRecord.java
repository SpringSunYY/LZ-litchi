package com.lz.framework.vector.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * 向量记录实体（Milvus collection 中的一行）。
 *
 * <p>作为服务层与 Milvus 持久层之间的<b>传输对象</b>。
 * <ul>
 *   <li>{@link MilvusService} 不关心此实体，只知道要把行写入 Milvus 集合，
 *       对<b>业务层</b> imagePath/originKey 字段。至于 id、何种 vector 算法，服务层只负责 CRUD。</li>
 *   <li>业务层（如 {@link ImageIndexService}）将"业务要装到 VectorRecord"加工出来，
 *       写什么字段是业务层自己的事。</li>
 * </ul>
 *
 * <p>字段对应 Milvus schema：
 * <pre>
 *   id              VarChar        主键
 *   image_path      VarChar        业务字段，只存字符串，不存文件
 *   feature_vector  FloatVector    归一化向量
 *   origin_key         Int64          关联 infra_file.id
 *   tenant_id       Int64          多租户隔离字段（由 MilvusService 内部填充）
 *   create_time     Int64          入库时间戳（毫秒）
 * </pre>
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class VectorRecord {

    /** 主键（由调用方生成） */
    private String id;

    /** 图片路径（业务字段），仅作为字符串持久化，MilvusService 不关心文件 */
    private String imagePath;

    /** 已归一化的特征向量 */
    private float[] vector;

    /**
     * 关联的 infra_file.id。
     * <p>调用方可为空（如目录导入场景没有 originKey 记录）。
     * <p><b>持久化层哨兵</b>：{@link MilvusService} 写库时会自动把 {@code null} 映射成 {@code 0L}。
     * 因为 milvus-sdk-java 2.4.5 不支持 {@code withNullable}（2.5.0 才有），
     * 且 {@code ParamUtils.checkFieldData} 对 Int64 列一律拒 null，所以 schema 上无法声明 nullable，
     * 只能用 {@code 0L} 作为"无关联文件"的业务哨兵。查询侧收到的是 {@code 0L}；
     * 调用方应将 {@code null} 与 {@code 0L} 都视为"无关联文件"。
     */
    private String originKey;

    /**
     * 租户编号。
     * <p>由 MilvusService 在持久化时根据 {@code TenantContextHolder} 写入，
     * 业务层可不填；如显式传入，MilvusService 会校验一致性。
     */
    private Long tenantId;

    /** 入库时间戳（毫秒） */
    private long createTime;

    /** 两字段构造：只需要 id + vector，用于异步构建索引 */
    public VectorRecord(String id, float[] vector) {
        this.id = id;
        this.vector = vector;
    }
}
