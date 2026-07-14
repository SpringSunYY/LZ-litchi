package com.lz.framework.vector.milvus.service;

import com.lz.framework.vector.pojo.QueryResult;
import com.lz.framework.vector.pojo.SearchResult;
import com.lz.framework.vector.pojo.VectorRecord;
import io.milvus.v2.service.vector.response.QueryResp;
import io.milvus.v2.service.vector.response.SearchResp;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import static com.lz.framework.vector.constants.MilvusFieldConstants.*;

/**
 * 把 Milvus 返回的 {@link SearchResp} / {@link QueryResp} 转换为业务 DTO。
 *
 * <p>职责：单点收口所有"读 entity map → 填 DTO"的样板代码。
 *
 * @author litchi
 */
public class MilvusResultExtractor {

    // ==================== SearchResp → SearchResult ====================

    public List<SearchResult> extractSearch(SearchResp resp) {
        List<SearchResult> results = new ArrayList<>();
        if (resp == null || resp.getSearchResults() == null) {
            return results;
        }
        for (List<SearchResp.SearchResult> perQuery : resp.getSearchResults()) {
            if (perQuery == null) continue;
            for (SearchResp.SearchResult hit : perQuery) {
                results.add(toSearchResult(hit));
            }
        }
        return results;
    }

    private SearchResult toSearchResult(SearchResp.SearchResult hit) {
        SearchResult sr = new SearchResult();
        Map<String, Object> entity = hit.getEntity();
        if (entity != null) {
            copyScalar(entity, sr);
        }
        float rawScore = hit.getScore();
        sr.setScore(rawScore);
        sr.setSimilarity(String.format("%.2f%%", Math.clamp(rawScore, 0f, 1f) * 100f));
        return sr;
    }

    // ==================== QueryResp → QueryResult ====================

    public List<QueryResult> extractQuery(QueryResp resp, boolean withVector) {
        List<QueryResult> results = new ArrayList<>();
        if (resp == null || resp.getQueryResults() == null) {
            return results;
        }
        for (QueryResp.QueryResult row : resp.getQueryResults()) {
            QueryResult r = new QueryResult();
            Map<String, Object> entity = row.getEntity();
            if (entity == null) {
                results.add(r);
                continue;
            }
            copyScalar(entity, r);
            if (withVector) {
                r.setVector(readFloatArray(entity.get(FEATURE_VEC)));
            }
            results.add(r);
        }
        return results;
    }

    // ==================== QueryResp → VectorRecord（按 id 顺序重排） ====================

    /**
     * 把 QueryResp 转成 VectorRecord 列表，保留入参 {@code ids} 的顺序；
     * 找不到的 id 用 {@code null} 占位。
     */
    public List<VectorRecord> extractVectorRecords(QueryResp resp, List<String> ids) {
        if (resp == null || resp.getQueryResults() == null || ids == null) {
            return new ArrayList<>();
        }
        Map<String, VectorRecord> byId = new java.util.HashMap<>(ids.size() * 2);
        for (QueryResp.QueryResult qr : resp.getQueryResults()) {
            Map<String, Object> entity = qr.getEntity();
            if (entity == null) continue;
            Object idObj = entity.get(PRIMARY_KEY);
            if (idObj == null) continue;
            String id = idObj.toString();
            VectorRecord rec = new VectorRecord();
            rec.setId(id);
            Object pathObj = entity.get(IMAGE_PATH);
            if (pathObj != null) rec.setImagePath(pathObj.toString());
            rec.setVector(readFloatArray(entity.get(FEATURE_VEC)));
            Object originKeyObj = entity.get(ORIGIN_KEY);
            if (originKeyObj != null) rec.setOriginKey(originKeyObj.toString());
            Object tidObj = entity.get(TENANT_ID);
            if (tidObj instanceof Number n) rec.setTenantId(n.longValue());
            Object tsObj = entity.get(CREATE_TIME);
            if (tsObj instanceof Number n) rec.setCreateTime(n.longValue());
            byId.put(id, rec);
        }
        List<VectorRecord> out = new ArrayList<>(ids.size());
        for (String id : ids) out.add(byId.get(id));
        return out;
    }

    // ==================== QueryResp → 样本 Map ====================

    /**
     * 把 QueryResp 转成不含向量的"展示样本"列表
     */
    public List<Map<String, Object>> extractSamples(QueryResp resp) {
        List<Map<String, Object>> samples = new ArrayList<>();
        if (resp == null || resp.getQueryResults() == null) {
            return samples;
        }
        for (QueryResp.QueryResult row : resp.getQueryResults()) {
            Map<String, Object> entity = row.getEntity();
            if (entity == null) continue;
            Map<String, Object> item = new java.util.HashMap<>();
            Object idObj = entity.get(PRIMARY_KEY);
            Object pathObj = entity.get(IMAGE_PATH);
            Object originKeyObj = entity.get(ORIGIN_KEY);
            Object tidObj = entity.get(TENANT_ID);
            Object tsObj = entity.get(CREATE_TIME);
            item.put(PRIMARY_KEY_CLASS, idObj == null ? "" : idObj.toString());
            item.put(IMAGE_PATH_CLASS, pathObj == null ? null : pathObj.toString());
            item.put(ORIGIN_KEY_CLASS, originKeyObj == null ? null : originKeyObj.toString());
            if (tidObj instanceof Number n) item.put(TENANT_ID_CLASS, n.longValue());
            if (tsObj instanceof Number n) item.put(CREATE_TIME_CLASS, n.longValue());
            samples.add(item);
        }
        return samples;
    }

    // ==================== 内部 ====================

    private static void copyScalar(Map<String, Object> entity, QueryResult r) {
        Object idObj = entity.get(PRIMARY_KEY);
        if (idObj != null) r.setId(idObj.toString());
        Object pathObj = entity.get(IMAGE_PATH);
        if (pathObj != null) r.setImagePath(pathObj.toString());
        Object originKeyObj = entity.get(ORIGIN_KEY);
        if (originKeyObj != null) r.setOriginKey(originKeyObj.toString());
        Object tidObj = entity.get(TENANT_ID);
        if (tidObj instanceof Number n) r.setTenantId(n.longValue());
        Object tsObj = entity.get(CREATE_TIME);
        if (tsObj instanceof Number n) r.setCreateTime(n.longValue());
    }

    private static void copyScalar(Map<String, Object> entity, SearchResult s) {
        Object id = entity.get(PRIMARY_KEY);
        if (id != null) s.setId(id.toString());

        Object path = entity.get(IMAGE_PATH);
        if (path != null) s.setImagePath(path.toString());

        Object originKey = entity.get(ORIGIN_KEY);
        if (originKey != null) s.setOriginKey(originKey.toString());

        Object tid = entity.get(TENANT_ID);
        if (tid instanceof Number n) s.setTenantId(n.longValue());

        Object ts = entity.get(CREATE_TIME);
        if (ts instanceof Number n) s.setCreateTime(n.longValue());
    }

    private static float[] readFloatArray(Object vecObj) {
        if (!(vecObj instanceof List<?> vecList)) return null;
        float[] arr = new float[vecList.size()];
        for (int i = 0; i < vecList.size(); i++) {
            Object v = vecList.get(i);
            arr[i] = (v instanceof Number n) ? n.floatValue() : 0f;
        }
        return arr;
    }
}
