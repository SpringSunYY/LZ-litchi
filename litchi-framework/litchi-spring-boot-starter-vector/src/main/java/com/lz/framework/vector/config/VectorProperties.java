package com.lz.framework.vector.config;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;

/**
 * 向量模块总开关配置。
 *
 * <p>在 yml 的 {@code litchi.vector} 节点下，用于一键开关整个向量模块：
 * <pre>{@code
 * litchi:
 *   vector:
 *     enable: true   # 默认 false，关闭时不注册任何 FeatureExtractor / MilvusService / ImageIndexService bean
 * }</pre>
 *
 * <p>设计目的：
 * <ul>
 *   <li>依赖本模块的业务方可在不引入 ONNX/Milvus 的环境（如纯 MySQL 工程）下禁用该模块，
 *       避免启动时 NoClassDefFoundError 或 Milvus 连接失败</li>
 *   <li>关闭时不会创建任何重量级 bean（FeatureExtractor 需要加载 ONNX 模型，
 *       MilvusServiceClient 需要 gRPC 连接），启动开销为零</li>
 *   <li>如果业务代码在关闭状态下意外调用向量服务，会抛 {@code VectorDisabledException}</li>
 * </ul>
 */
@Data
@ConfigurationProperties(prefix = "litchi.vector")
public class VectorProperties {

    /**
     * 是否开启向量模块。
     * <ul>
     *   <li>false（默认）：不注册任何向量相关 bean；调用向量服务抛 {@code VectorDisabledException}</li>
     *   <li>true：注册 FeatureExtractor / MilvusService / ImageIndexService 等 bean 并连接 Milvus</li>
     * </ul>
     */
    private boolean enable = false;
}
