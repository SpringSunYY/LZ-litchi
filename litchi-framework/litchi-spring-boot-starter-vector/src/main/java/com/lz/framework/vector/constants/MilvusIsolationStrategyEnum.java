package com.lz.framework.vector.constants;

/**
 * Milvus 多租户隔离策略。
 *
 * <p>对应 {@code litchi.vector.milvus.isolation} 配置项（{@code database} / {@code collection} / {@code partition}）。
 * 业务侧判断隔离方式时只走本枚举，避免在不同位置散落字面量。
 *
 * @author litchi
 */
public enum MilvusIsolationStrategyEnum {

    /**
     * database 策略：每租户一个独立 Milvus database（物理强隔离）
     */
    DATABASE("database"),

    /**
     * collection 策略：每租户一个独立 collection（集合名拼接租户 ID）
     */
    COLLECTION("collection"),

    /**
     * partition 策略：单 collection 内按 tenantId 建 partition
     */
    PARTITION("partition");

    private final String code;

    MilvusIsolationStrategyEnum(String code) {
        this.code = code;
    }

    public String code() {
        return code;
    }

    /**
     * 解析配置字符串（大小写不敏感）到枚举。配置缺失或无法识别时默认 {@link #DATABASE}。
     */
    public static MilvusIsolationStrategyEnum of(String code) {
        if (code == null || code.isBlank()) {
            return DATABASE;
        }
        for (MilvusIsolationStrategyEnum s : values()) {
            if (s.code.equalsIgnoreCase(code)) {
                return s;
            }
        }
        return DATABASE;
    }

    public boolean is(MilvusIsolationStrategyEnum other) {
        return this == other;
    }
}
