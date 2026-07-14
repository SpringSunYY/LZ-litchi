package com.lz.framework.vector.core.feature;

import com.lz.framework.vector.config.EmbeddingProperties;
import com.lz.framework.vector.core.exception.VectorDisabledException;
import lombok.extern.slf4j.Slf4j;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.*;
import java.util.concurrent.ExecutorService;

/**
 * 特征提取服务：多模型注册中心。
 *
 * <p>启动时把 Spring 容器里所有 {@link FeatureExtractor} bean 注册到 {@link #extractors}，
 * 后续按模型名（clip / dino / siglip ...）按需取出对应的提取器。
 *
 * <p>激活模型由 {@code embedding.model} 单字段指定（一个进程只跑一个模型），
 * 各模型的参数通过 {@code embedding.{model}} 子节点配置，例如 {@code embedding.siglip.feature-dim}。
 *
 * <p>调用方约定：
 * <ul>
 *   <li>未指定 model → 使用 {@link EmbeddingProperties#getModel()}（yml 的 embedding.model）</li>
 *   <li>指定 model    → 优先精确匹配；找不到再大小写不敏感匹配；都没有则抛异常</li>
 * </ul>
 *
 * <p>为什么不直接注入 {@code Map<String, FeatureExtractor>}：
 * 各 {@code FeatureExtractor} bean 由 {@link com.lz.framework.vector.config.VectorAutoConfiguration}
 * 按 yml 的 {@code embedding.model} 实例化，但 Spring 仍可能实例化其他模型（如第三方扩展），
 * 这里统一收敛注册并校验 {@code defaultModel} 是否可用。
 */
@Slf4j
public class FeatureService {

    /** key 小写：clip / dino / siglip ... */
    private final Map<String, FeatureExtractor> extractors = new LinkedHashMap<>();

    /** 默认激活模型（yml 中 embedding.model 的值） */
    private final String defaultModel;

    public FeatureService(List<FeatureExtractor> availableExtractors, EmbeddingProperties props) {
        this.defaultModel = props.getModel();

        // 注册所有 extractor，后续按 model 名选用。
        // 各 FeatureExtractor bean 已通过 @ConditionalOnProperty 按 yml 的 embedding.model 实例化，
        // 这里不再做白名单过滤（避免误杀第三方扩展的 bean）。
        for (FeatureExtractor fe : availableExtractors) {
            String name = fe.getModelName().toLowerCase();
            FeatureExtractor prev = extractors.putIfAbsent(name, fe);
            if (prev != null) {
                log.warn("[特征服务] 模型 '{}' 已存在多个提取器，保留先注册的: {}",
                        name, prev.getClass().getSimpleName());
            }
        }

        log.info("[特征服务] 已注册模型: {} | 默认激活: {}", extractors.keySet(), defaultModel);
        if (!defaultModel.isEmpty() && !extractors.containsKey(defaultModel.toLowerCase())) {
            log.warn("[特征服务] 默认激活模型 '{}' 没有对应 FeatureExtractor bean，请检查 @ConditionalOnProperty",
                    defaultModel);
        }
    }

    /**
     * 取默认激活模型的提取器（yml 的 embedding.model）。
     */
    public FeatureExtractor getExtractor() {
        checkEnabled("getExtractor");
        return getExtractor(defaultModel);
    }

    /**
     * 按模型名取提取器。未指定 / null / blank 时回退到默认模型。
     *
     * @throws VectorDisabledException    向量模块未启用时
     * @throws IllegalArgumentException   找不到对应模型时
     */
    public FeatureExtractor getExtractor(String model) {
        checkEnabled("getExtractor(" + model + ")");
        String key = (model == null || model.isBlank()) ? defaultModel : model.trim().toLowerCase();
        FeatureExtractor fe = extractors.get(key);
        if (fe != null) return fe;
        throw new IllegalArgumentException(
                "[特征服务] 未知的模型: '" + model + "'。可用模型: " + availableModels());
    }

    /**
     * 已注册的模型名（按注册顺序）。
     */
    public List<String> availableModels() {
        return Collections.unmodifiableList(new ArrayList<>(extractors.keySet()));
    }

    /**
     * 默认激活模型名。
     */
    public String getDefaultModel() {
        return defaultModel;
    }

    /**
     * 向量模块是否已启用。
     * <p>由各 Service 的 {@code checkEnabled()} 在方法入口校验，
     * 也可由业务方在调用前预检，避免异常路径。
     */
    public boolean isEnabled() {
        return !extractors.isEmpty();
    }

    /**
     * 入口校验：未启用时抛 {@link VectorDisabledException}，提示用户先在 yml 开启 {@code litchi.vector.enable=true}。
     */
    public void checkEnabled(String operation) {
        if (!isEnabled()) {
            throw new VectorDisabledException(operation);
        }
    }

    /**
     * 从图片文件提取特征向量（默认模型）。
     */
    public float[] extract(File imageFile) throws IOException {
        checkEnabled("extract(File)");
        return getExtractor().extractFeature(imageFile);
    }

    /**
     * 从图片文件提取特征向量（默认模型，传入并发执行器）。
     */
    public float[] extract(File imageFile, ExecutorService exec) throws IOException {
        checkEnabled("extract(File,Executor)");
        return getExtractor().extractFeature(imageFile, exec);
    }

    /**
     * 从图片文件提取特征向量（默认模型）。
     */
    public float[] extract(byte[] bytes) throws IOException {
        checkEnabled("extract(File)");
        return getExtractor().extractFeature(bytes);
    }

    /**
     * 从图片文件提取特征向量（默认模型，传入并发执行器）。
     */
    public float[] extract(byte[] bytes, ExecutorService exec) throws IOException {
        checkEnabled("extract(File,Executor)");
        return getExtractor().extractFeature(bytes, exec);
    }

    /**
     * 从图片文件提取特征向量（指定模型）。
     */
    public float[] extract(File imageFile, String model) throws IOException {
        checkEnabled("extract(File,model)");
        return getExtractor(model).extractFeature(imageFile);
    }

    /**
     * 从输入流提取特征向量。
     */
    public float[] extract(InputStream in) throws IOException {
        checkEnabled("extract(InputStream,model)");
        return getExtractor().extractFeature(in);
    }

    /**
     * 从输入流提取特征向量（指定模型）。
     */
    public float[] extract(InputStream in, String model) throws IOException {
        checkEnabled("extract(InputStream,model)");
        return getExtractor(model).extractFeature(in);
    }

    /**
     * 从输入流提取特征向量（指定模型 + 并发执行器）。
     */
    public float[] extract(InputStream in, String model, ExecutorService exec) throws IOException {
        checkEnabled("extract(InputStream,model,Executor)");
        return getExtractor(model).extractFeature(in, exec);
    }
}
