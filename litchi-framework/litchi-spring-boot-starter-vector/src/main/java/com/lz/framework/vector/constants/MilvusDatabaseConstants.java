package com.lz.framework.vector.constants;

/**
 * Milvus database 相关的固定名称常量。
 *
 * <p>{@code default} 是 Milvus 服务端内置保留库名，业务侧不可创建同名库；
 * 任何在 SDK 调用中需要回退到默认库的逻辑都必须引用本类，禁止散落字面量。
 *
 * @author litchi
 */
public final class MilvusDatabaseConstants {

    private MilvusDatabaseConstants() {
    }

    /**
     * Milvus 服务端内置的默认 database 名（创建 client / 兜底回退时使用）。
     */
    public static final String DEFAULT = "default";
}
