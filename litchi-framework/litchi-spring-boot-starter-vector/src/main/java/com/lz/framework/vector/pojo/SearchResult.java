package com.lz.framework.vector.pojo;

import lombok.Data;

/**
 * 搜索结果（含 schema 字段）。
 *
 * <p>由 MilvusService 在向量相似度搜索后，从 schema 字段读出来——
 * 这是协议层的字段读取（CRUD 的 R），不涉及任何文件 IO。
 * 编排层（如 {@link com.lz.module.infra.service.vector.ImageSearchServiceImpl}）
 * 可以直接拿这个对象回显，无需再二次 query。
 */
@Data
public class SearchResult {
    private String id;
    /**
     * 业务字段：图片路径（字符串，不读文件）
     */
    private String imagePath;
    /**
     * 关联的 原Id，第三方键
     */
    private String originKey;
    /**
     * 租户编号
     */
    private Long tenantId;
    /**
     * 业务字段：入库时间戳（毫秒）
     */
    private long createTime;
    /**
     * Milvus COSINE 距离 ∈ [-1, 1]，越大越像
     */
    private float score;
    /**
     * 相似度百分比 ∈ [0, 100]，越大越像；保留 2 位小数
     */
    private String similarity;
}
