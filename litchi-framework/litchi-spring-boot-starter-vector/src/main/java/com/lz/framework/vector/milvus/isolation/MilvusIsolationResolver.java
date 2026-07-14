package com.lz.framework.vector.milvus.isolation;

import com.lz.framework.vector.config.MilvusProperties;
import com.lz.framework.vector.constants.MilvusDatabaseConstants;
import com.lz.framework.vector.constants.MilvusIsolationStrategyEnum;
import com.lz.framework.vector.core.feature.FeatureExtractor;
import com.lz.framework.vector.core.isolation.VectorTenantContext;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.ObjectProvider;

/**
 * 多租户隔离策略解析器。
 *
 * <p>职责单一：按当前隔离策略 + tenantId + modelName 解析出 Milvus database 物理名。
 *
 * <p>三种策略：
 * <ul>
 *   <li>database：database = {@code database + "_" + tenantId}，无 tenantId 则用 database 配置</li>
 *   <li>collection：database = {@code database + "_" + modelName}</li>
 *   <li>partition：database = {@code database + "_" + modelName}</li>
 * </ul>
 */
@Slf4j
public class MilvusIsolationResolver {

    /** 无租户时的默认 partition 名 */
    public static final String DEFAULT_PARTITION = "_default";

    private final MilvusProperties props;
    private final ObjectProvider<VectorTenantContext> tenantContextProvider;
    private final ObjectProvider<FeatureExtractor> featureExtractorProvider;

    public MilvusIsolationResolver(MilvusProperties props,
                                  ObjectProvider<VectorTenantContext> tenantContextProvider,
                                  ObjectProvider<FeatureExtractor> featureExtractorProvider) {
        this.props = props;
        this.tenantContextProvider = tenantContextProvider;
        this.featureExtractorProvider = featureExtractorProvider;
    }

    /** 当前线程租户 ID；null 表示未启用多租户或未识别到租户 */
    public Long currentTenantId() {
        VectorTenantContext ctx = tenantContextProvider.getIfAvailable();
        return ctx == null ? null : ctx.currentTenantId();
    }

    /** 是否有真实租户上下文 */
    public boolean hasTenant() {
        Long t = currentTenantId();
        return t != null;
    }

    /**
     * 解析 collection 物理名。
     *
     * <p>三种策略下：
     * <ul>
     *   <li><b>collection</b>：{@code <logical>_<modelName>_<tenantId>}（COLLECTION 强隔离，最直观）</li>
     *   <li>database / partition：{@code <logical>} 原样透传（隔离由 database / partition 承担）</li>
     * </ul>
     */
    public String resolveCollectionName(String logical) {
        if (logical == null || logical.isBlank()) {
            throw new IllegalArgumentException("collection 参数不可为空");
        }
        if (MilvusIsolationStrategyEnum.COLLECTION.is(MilvusIsolationStrategyEnum.of(props.getIsolation()))) {
            StringBuilder sb = new StringBuilder(logical);
            if (props.isDynamicDatabase() || hasTenant()) {
                FeatureExtractor fe = featureExtractorProvider.getIfAvailable();
                if (fe != null && fe.getModelName() != null && !fe.getModelName().isBlank()) {
                    sb.append("_").append(fe.getModelName());
                }
            }
            if (hasTenant()) {
                sb.append("_").append(currentTenantId());
            }
            return sb.toString();
        }
        return logical;
    }

    /**
     * 解析 partition 物理名（PARTITION 策略下使用）。
     * 无租户时返回 "_default"。
     */
    public String resolvePartitionName() {
        return hasTenant() ? String.valueOf(currentTenantId()) : "_default";
    }

    /**
     * 解析 database 物理名。
     *
     * <p><b>命名约定</b>（database 策略 + dynamic-database=true + 有 tenant）：
     * <pre>
     *   vector_image_search_dino_1
     *   └────────┬────────┘ └─┬─┘ └┬┘
     *         base       model  tenant
     * </pre>
     *
     * <p><b>拼接顺序</b>：{@code base_modelName[_tenantId]} —— model 在 tenant 前，
     * 这样切换模型时 base 部分稳定、便于运维识别。</p>
     */
    public String resolveDatabaseName() {
        String base = props.getDatabase();
        if (base == null || base.isBlank()) {
            base = MilvusDatabaseConstants.DEFAULT;
        }

        // 1. 先追加 modelName（dynamic-database=true 时）
        if (props.isDynamicDatabase()) {
            FeatureExtractor fe = featureExtractorProvider.getIfAvailable();
            if (fe != null && fe.getModelName() != null && !fe.getModelName().isBlank()) {
                base = base + "_" + fe.getModelName();
            }
        }

        // 2. 再追加 tenantId（database 策略 + 有租户时）
        if (MilvusIsolationStrategyEnum.DATABASE.is(MilvusIsolationStrategyEnum.of(props.getIsolation())) && hasTenant()) {
            base = base + "_" + currentTenantId();
        }
        return base;
    }
}
