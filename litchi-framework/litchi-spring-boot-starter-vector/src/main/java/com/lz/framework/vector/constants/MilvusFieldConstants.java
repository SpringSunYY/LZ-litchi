package com.lz.framework.vector.constants;

/**
 * Milvus 集合中字段名的统一常量。
 *
 * <p>所有 Manager / Service 引用字段名时只走本类，禁止在不同位置散落 "id" / "image_path" 等字面量。
 * 业务调整（如重命名字段）只需在此处改一次。
 *
 * @author litchi
 */
public final class MilvusFieldConstants {

    private MilvusFieldConstants() {
    }

    /**
     * 主键字段（VarChar / 200）
     */
    public static final String PRIMARY_KEY = "id";

    /**
     * 主键字段，class
     */
    public static final String PRIMARY_KEY_CLASS = "id";

    /**
     * 图片路径（VarChar / 500）
     */
    public static final String IMAGE_PATH = "image_path";
    public static final String IMAGE_PATH_CLASS = "imagePath";

    /**
     * 特征向量（FloatVector）
     */
    public static final String FEATURE_VEC = "feature_vector";
    public static final String FEATURE_VEC_CLASS = "featureVector";

    /**
     * 业务文件 ID（Int64）
     */
    public static final String ORIGIN_KEY = "origin_key";
    public static final String ORIGIN_KEY_CLASS = "originKey";

    /**
     * 租户 ID（Int64）
     */
    public static final String TENANT_ID = "tenant_id";
    public static final String TENANT_ID_CLASS = "tenantId";

    /**
     * 创建时间戳（Int64, epoch millis）
     */
    public static final String CREATE_TIME = "create_time";
    public static final String CREATE_TIME_CLASS = "createTime";

    /**
     * HNSW 索引在 search 阶段的 ef 取值
     */
    public static final int HNSW_SEARCH_EF = 256;

    /**
     * HNSW 构建参数 M
     */
    public static final int HNSW_INDEX_M = 16;

    /**
     * HNSW 构建参数 efConstruction
     */
    public static final int HNSW_INDEX_EFC = 200;

    /**
     * V2 SDK query / search 单次允许的 offset+limit 上限（由服务端 quotaAndLimits.maxQueryResultWindow 决定）
     */
    public static final long MAX_OFFSET_PLUS_LIMIT = 16_384L;
}
