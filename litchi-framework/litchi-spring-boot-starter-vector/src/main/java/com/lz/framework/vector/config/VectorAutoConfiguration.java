package com.lz.framework.vector.config;

import com.lz.framework.vector.core.feature.ClipFeatureExtractor;
import com.lz.framework.vector.core.feature.DinoFeatureExtractor;
import com.lz.framework.vector.core.feature.FeatureExtractor;
import com.lz.framework.vector.core.feature.FeatureService;
import com.lz.framework.vector.core.feature.SiglipFeatureExtractor;
import com.lz.framework.vector.core.isolation.VectorTenantContext;
import com.lz.framework.vector.milvus.service.MilvusService;
import com.lz.framework.vector.core.vector.ImageIndexService;
import io.milvus.v2.client.ConnectConfig;
import io.milvus.v2.client.MilvusClientV2;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.ObjectProvider;
import org.springframework.boot.autoconfigure.AutoConfiguration;
import org.springframework.boot.autoconfigure.condition.ConditionalOnExpression;
import org.springframework.boot.autoconfigure.condition.ConditionalOnProperty;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.context.annotation.Bean;
import jakarta.annotation.PostConstruct;

import java.util.ArrayList;

/**
 * 向量模块自动配置。
 *
 * <p>本类是整个 {@code litchi-spring-boot-starter-vector} 模块唯一的 bean 注册入口：
 * 所有 {@link FeatureExtractor}（CLIP / DINOv2 / SigLIP）、{@link MilvusService}、
 * {@link ImageIndexService}、{@link FeatureService} 都通过本类的 {@link Bean} 方法显式注册，
 * 不再依赖 {@code @Component} / {@code @Service}。
 *
 * <p><b>两层注册策略</b>：
 * <ul>
 *   <li><b>编排层（始终注册）</b>：{@link FeatureService}、{@link MilvusService}、{@link ImageIndexService}
 *       以及三个 {@code *Properties} —— 业务方 {@code @Resource} 注入这些 bean 时永远拿得到实例，
 *       不会因为 {@code litchi.vector.enable=false} 触发 {@code NoSuchBeanDefinitionException}。
 *       关闭时这些 bean 内部的 {@code checkEnabled()} 统一抛 {@link com.lz.framework.vector.core.exception.VectorDisabledException}。</li>
 *   <li><b>重量级层（按 enable 条件注册）</b>：{@link MilvusProperties} 派生出的
 *       {@link ConnectConfig}（Milvus gRPC 连接配置）和各 {@link FeatureExtractor}（加载 ONNX 模型）
 *       —— 仅在 {@code litchi.vector.enable=true} 时才创建，避免关闭时无谓的启动开销（gRPC 握手 / ONNX Runtime 加载）。</li>
 * </ul>
 *
 * <p>特性提取器按模型选择 — 通过方法级 {@code @ConditionalOnProperty} 实现：
 * <pre>
 * embedding.model=clip  → 注册 ClipFeatureExtractor
 * embedding.model=dino  → 注册 DinoFeatureExtractor
 * embedding.model=siglip → 注册 SiglipFeatureExtractor
 * </pre>
 * 未来扩展新模型只需在 {@link #clipFeatureExtractor} 下面追加一个 {@code @Bean @ConditionalOnProperty} 方法。
 *
 * <p>编排层 bean 通过 {@link ObjectProvider} 懒拿重量级 bean —— 关闭时
 * {@code ObjectProvider.getIfAvailable()} 返回 null，编排层据此判断模块是否启用。
 */
@AutoConfiguration
@EnableConfigurationProperties({EmbeddingProperties.class, MilvusProperties.class, VectorProperties.class})
@EnableCaching
@Slf4j
public class VectorAutoConfiguration {

    /**
     * 模块加载感知日志。
     */
    @PostConstruct
    public void onLoaded() {
        log.info("[VectorAutoConfiguration] 向量模块自动配置已加载。"
                + "外部接口（ImageIndexService）始终注册，"
                + "其他bean litchi.vector.enable 控制。");
    }

    // ==================== 特征提取器（按 embedding.model 条件装配，仅 enable=true 时注册） ====================

    /**
     * CLIP 特征提取器。
     */
    @Bean(destroyMethod = "close")
    @ConditionalOnExpression("'${litchi.vector.enable:false}'.equals('true') "
            + "and ('${litchi.vector.embedding.model:clip}'.equals('clip') "
            + "     or '${litchi.vector.embedding.model:clip}'.equals(''))")
    public ClipFeatureExtractor clipFeatureExtractor(EmbeddingProperties embeddingProps) {
        log.info("[VectorAutoConfiguration] 注册 ClipFeatureExtractor（默认 / 显式 model=clip）");
        return new ClipFeatureExtractor(embeddingProps);
    }

    /**
     * DINOv2 特征提取器。
     */
    @Bean(destroyMethod = "close")
    @ConditionalOnExpression("'${litchi.vector.enable:false}'.equals('true') "
            + "and '${litchi.vector.embedding.model:clip}'.equals('dino')")
    public DinoFeatureExtractor dinoFeatureExtractor(EmbeddingProperties embeddingProps) {
        log.info("[VectorAutoConfiguration] 注册 DinoFeatureExtractor（model=dino）");
        return new DinoFeatureExtractor(embeddingProps);
    }

    /**
     * SigLIP 2 特征提取器。
     */
    @Bean(destroyMethod = "close")
    @ConditionalOnExpression("'${litchi.vector.enable:false}'.equals('true') "
            + "and '${litchi.vector.embedding.model:clip}'.equals('siglip')")
    public SiglipFeatureExtractor siglipFeatureExtractor(EmbeddingProperties embeddingProps) {
        log.info("[VectorAutoConfiguration] 注册 SiglipFeatureExtractor（model=siglip）");
        return new SiglipFeatureExtractor(embeddingProps);
    }

    // ==================== Milvus 客户端连接配置（仅 enable=true 时注册） ====================

    /**
     * 暴露一个共享的 {@link ConnectConfig}（供 {@link TenantAwareMilvusClient} 复用，避免重复连接）。
     */
    @Bean
    @ConditionalOnProperty(name = "litchi.vector.enable", havingValue = "true")
    public ConnectConfig milvusConnectConfig(MilvusProperties props) {
        String uri = "http://" + props.getHost() + ":" + props.getPort();
        String token = buildToken(props);
        if (token != null) {
            return ConnectConfig.builder().uri(uri).token(token).build();
        }
        return ConnectConfig.builder().uri(uri).build();
    }

    /**
     * 拼装 Milvus 鉴权 token。
     * <ul>
     *   <li>username & password 都非空 → {@code "username:password"}</li>
     *   <li>Zilliz Cloud / 托管 Milvus：username/password 通常等价于 user/apikey</li>
     *   <li>二者任一为空 → 返回 null，调用方按"不启用鉴权"处理</li>
     * </ul>
     */
    private String buildToken(MilvusProperties props) {
        if (props.getUsername() == null || props.getUsername().isBlank()
                || props.getPassword() == null || props.getPassword().isBlank()) {
            return null;
        }
        return props.getUsername() + ":" + props.getPassword();
    }

    // ==================== 隔离解析器（只在本模块内部使用） ====================
    // 注：MilvusIsolationResolver / TenantAwareMilvusClient / CollectionAutoEnsurer
    //     不作为独立 bean，由 MilvusService 内部装配，保证"单一持有 + 强制同 lifecycle"。
    // ============================================================================

    /**
     * Milvus CRUD / 检索的对外门面（Façade）。
     *
     * <p>本类构造会级联创建：
     * <ol>
     *   <li>{@link MilvusIsolationResolver}（隔离策略解析器）</li>
     *   <li>{@link TenantAwareMilvusClient}（继承 {@link MilvusClientV2}，所有 SDK 方法透明注入隔离字段）</li>
     *   <li>{@link CollectionAutoEnsurer}（自动 ensure collection / partition 的钩子）</li>
     *   <li>{@link MilvusCollectionManager} / {@link MilvusWriter} / {@link MilvusSearcher} / {@link MilvusQuerier}</li>
     * </ol>
     */
    @Bean(destroyMethod = "close")
    @ConditionalOnProperty(name = "litchi.vector.enable", havingValue = "true")
    public MilvusService milvusService(ObjectProvider<FeatureExtractor> featureExtractorProvider,
                                       ObjectProvider<VectorTenantContext> tenantContextProvider,
                                       MilvusProperties milvusProps,
                                       ConnectConfig milvusConnectConfig) {
        log.info("[VectorAutoConfiguration] 注册 MilvusService（litchi.vector.enable=true）");
        return new MilvusService(featureExtractorProvider, tenantContextProvider, milvusProps, milvusConnectConfig);
    }

    /**
     * 特征提取多模型注册中心。
     *
     * <p>接收所有 {@link FeatureExtractor} bean（关闭时为空列表），按模型名收敛注册。
     * {@link ImageIndexService} 关闭时 {@link com.lz.framework.vector.core.exception.VectorDisabledException}。
     */
    @Bean
    @ConditionalOnProperty(name = "litchi.vector.enable", havingValue = "true")
    public FeatureService featureService(ObjectProvider<FeatureExtractor> availableExtractorProvider,
                                         EmbeddingProperties props) {
        ArrayList<FeatureExtractor> available = new ArrayList<>();
        availableExtractorProvider.forEach(available::add);
        log.info("[VectorAutoConfiguration] 注册 FeatureService（litchi.vector.enable=true，候选 extractor={}）", available.size());
        return new FeatureService(available, props);
    }

    /**
     * 图片索引编排服务：特征提取 + Milvus 入库 + 以图搜图。
     *
     * <p>始终注册（即使 {@code litchi.vector.enable=false}）—— 业务方注入时不会因 bean 缺失报错。
     * 关闭时 {@link FeatureService#isEnabled()} 返回 false，本类入口的
     * {@link ImageIndexService#checkEnabled(String)} 抛 {@link com.lz.framework.vector.core.exception.VectorDisabledException}。
     */
    @Bean
    public ImageIndexService imageIndexService(ObjectProvider<FeatureService> featureServiceProvider,
                                               ObjectProvider<MilvusService> milvusServiceProvider,
                                               EmbeddingProperties embeddingProps,
                                               MilvusProperties milvusProps,
                                               ObjectProvider<VectorTenantContext> tenantContextProvider) {
        log.info("[VectorAutoConfiguration] 注册 ImageIndexService（始终注册；内部通过 ObjectProvider 按需懒取 MilvusService / FeatureService）");
        return new ImageIndexService(featureServiceProvider, milvusServiceProvider, embeddingProps, milvusProps, tenantContextProvider);
    }

    // 启动期 database 预创建由 TenantAwareMilvusClient.ensureDbClientCached() 在第一次 RPC 前 lazy 完成，
    // （createDatabase 已做 idempotent 容错，失败也不影响主流程）—— 无需单独的 ApplicationReadyEvent 钩子。
}
