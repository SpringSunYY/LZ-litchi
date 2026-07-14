package com.lz.framework.vector.pojo;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;

/**
 * 字段查询结果（不含向量的轻量视图）。
 *
 * <p>用于 {@code queryById / queryByPath / queryByCondition} 这类
 * "按业务字段精确查记录" 的场景——调用方关心 id/imagePath/originKey/createTime，
 * 不需要 feature_vector。
 *
 * <p>向量字段只在 {@code queryByIds}（需要重算相似度时）或
 * {@code queryByCondition(..., true)} 显式打开时才返回。
 */
@Data
public class QueryResult {

    private String id;
    private String imagePath;
    /** 关联的 原Id，第三方键 */
    private String originKey;
    /** 租户编号 */
    private Long tenantId;
    /** 入库时间戳（毫秒） */
    private long createTime;
    /** 只有调用方显式要求时才填充；默认不参与 JSON 序列化，避免 dump N 维向量 */
    @JsonIgnore
    private float[] vector;
}
