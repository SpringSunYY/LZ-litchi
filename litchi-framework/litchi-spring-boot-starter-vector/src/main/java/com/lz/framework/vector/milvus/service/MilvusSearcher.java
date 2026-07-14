package com.lz.framework.vector.milvus.service;

import com.lz.framework.vector.pojo.SearchResult;
import com.lz.framework.vector.milvus.clinet.TenantAwareMilvusClient;
import io.milvus.v2.service.vector.request.SearchReq;
import io.milvus.v2.service.vector.request.data.FloatVec;
import io.milvus.v2.service.vector.response.SearchResp;
import lombok.extern.slf4j.Slf4j;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;

import static com.lz.framework.vector.constants.MilvusFieldConstants.*;

/**
 * 向量检索（ANN Search）。
 *
 * <p>业务层只关心"用哪个向量、查 topK 几个"，其他全部由 {@link TenantAwareMilvusClient} 透明处理。
 *
 * @author litchi
 */
@Slf4j
public class MilvusSearcher {

    private final TenantAwareMilvusClient client;
    private final MilvusResultExtractor extractor;

    public MilvusSearcher(TenantAwareMilvusClient client, MilvusResultExtractor extractor) {
        this.client = client;
        this.extractor = extractor;
    }

    /**
     * 根据向量查询。
     *
     * @param queryVector 查询向量
     * @param topK        返回 topK 个结果
     * @return 查询结果
     */
    public List<SearchResult> searchByVector(float[] queryVector, int topK, String logicalCollection) {
        if (queryVector == null || queryVector.length == 0) {
            log.warn("queryVector is empty");
            return Collections.emptyList();
        }

        SearchReq req = SearchReq.builder()
                .collectionName(logicalCollection)
                .annsField(FEATURE_VEC)
                .data(Collections.singletonList(new FloatVec(queryVector)))
                .topK(topK)
                .searchParams(Map.of("ef", HNSW_SEARCH_EF))
                .consistencyLevel(io.milvus.v2.common.ConsistencyLevel.BOUNDED)
                .outputFields(Arrays.asList(
                        PRIMARY_KEY ,IMAGE_PATH, ORIGIN_KEY,  CREATE_TIME))
                .build();

        SearchResp resp = client.search(req);
        return extractor.extractSearch(resp);
    }
}
