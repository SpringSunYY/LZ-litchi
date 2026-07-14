package com.lz.framework.vector.pojo;

import lombok.Data;

/**
 * 业务层搜索结果（含 imagePath）。
 *
 * <p>由编排层 {@link ImageIndexService} 在 Milvus 纯向量搜索结果之上反查 id→imagePath 拼装而成。
 * 不要把它当成 MilvusService 的返回类型——它属于业务编排层的概念。
 */
@Data
public class SearchHit {
    private String id;
    private String imagePath;
    /** 关联的 原Id，第三方键 */
    private String originKey;
    /** 租户编号 */
    private Long tenantId;
    /** 入库时间戳（毫秒） */
    private long createTime;
    /**
     * Milvus COSINE 距离 ∈ [-1, 1]，越大越像
     */
    private float score;
    /**
     * 相似度百分比 ∈ [0, 100]
     */
    private String similarity;
}
