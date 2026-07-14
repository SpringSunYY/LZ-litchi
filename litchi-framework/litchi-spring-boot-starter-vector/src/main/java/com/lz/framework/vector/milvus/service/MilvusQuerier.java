package com.lz.framework.vector.milvus.service;

import com.lz.framework.vector.pojo.QueryCondition;
import com.lz.framework.vector.pojo.QueryResult;
import com.lz.framework.vector.pojo.VectorRecord;
import com.lz.framework.vector.milvus.clinet.TenantAwareMilvusClient;
import io.milvus.v2.service.vector.request.DeleteReq;
import io.milvus.v2.service.vector.request.QueryReq;
import io.milvus.v2.service.vector.response.DeleteResp;
import io.milvus.v2.service.vector.response.QueryResp;
import lombok.extern.slf4j.Slf4j;

import java.util.*;

import static com.lz.framework.vector.constants.MilvusFieldConstants.*;

/**
 * 字段查询（query）+ 删除（delete）+ 计数（count）+ 统计（stats）。
 *
 * <p>业务层只关心"用 expr 查"或"按 ids 删"，隔离由 {@link TenantAwareMilvusClient} 透明处理。
 *
 * @author litchi
 */
@Slf4j
public class MilvusQuerier {

    private final TenantAwareMilvusClient client;
    private final MilvusResultExtractor extractor;

    public MilvusQuerier(TenantAwareMilvusClient client, MilvusResultExtractor extractor) {
        this.client = client;
        this.extractor = extractor;
    }

    // ==================== 顶层便捷查询 ====================

    public QueryResult queryById(String id, String collection) {
        return firstOrNull(queryByCondition(
                QueryCondition.builder().eq(PRIMARY_KEY, id).build(), false, collection));
    }

    public QueryResult queryById(String id, boolean withVector, String collection) {
        return firstOrNull(queryByCondition(
                QueryCondition.builder().eq(PRIMARY_KEY, id).build(), withVector, collection));
    }


    public List<QueryResult> queryByOriginKey(String originKey,String collection) {
        return queryByCondition(
                QueryCondition.builder().eq(ORIGIN_KEY, originKey).build(), false, collection
        );
    }
    public List<QueryResult> queryByImagePath(String imagePath, String collection) {
        if (imagePath == null || imagePath.isEmpty()) return Collections.emptyList();
        return queryByCondition(
                QueryCondition.builder().eq(IMAGE_PATH, imagePath).build(), false, collection);
    }

    public List<QueryResult> queryByImagePathLike(String substring, String collection) {
        if (substring == null || substring.isEmpty()) return Collections.emptyList();
        return queryByCondition(
                QueryCondition.builder().contains(IMAGE_PATH, substring).build(), false, collection);
    }

    public List<QueryResult> queryByImagePathPrefix(String prefix, String collection) {
        if (prefix == null || prefix.isEmpty()) return Collections.emptyList();
        return queryByCondition(
                QueryCondition.builder().startsWith(IMAGE_PATH, prefix).build(), false, collection);
    }

    public List<QueryResult> queryByCreatedAtRange(Long fromInclusive, Long toInclusive, String collection) {
        QueryCondition.Builder b = QueryCondition.builder();
        if (fromInclusive != null) b.gte(CREATE_TIME, fromInclusive);
        if (toInclusive != null) b.lte(CREATE_TIME, toInclusive);
        return queryByCondition(b.build(), false, collection);
    }

    // ==================== 通用条件查询 ====================

    public List<QueryResult> queryByCondition(QueryCondition condition, boolean withVector, int limit, String collection) {
        requireValid(condition, true);
        if (limit <= 0) throw new IllegalArgumentException("limit 必须 > 0");
        return runFieldQuery(condition.toExpr(), withVector, limit, collection);
    }

    public List<QueryResult> queryByCondition(QueryCondition condition, boolean withVector, String collection) {
        requireValid(condition, true);
        return runFieldQuery(condition.toExpr(), withVector, -1, collection);
    }

    public List<QueryResult> queryByConditionWithVector(QueryCondition condition, boolean withVector, String collection) {
        return queryByCondition(condition, withVector, collection);
    }

    public List<QueryResult> queryByRawExpr(String expr, boolean withVector, int limit, String collection) {
        if (expr == null || expr.isBlank()) {
            throw new IllegalArgumentException("expr 不可为空");
        }
        return runFieldQuery(expr.trim(), withVector, limit, collection);
    }

    public List<QueryResult> queryByRawExpr(String expr, boolean withVector, String collection) {
        if (expr == null || expr.isBlank()) {
            throw new IllegalArgumentException("expr 不可为空");
        }
        return runFieldQuery(expr.trim(), withVector, -1, collection);
    }

    public List<QueryResult> queryByConditionPage(QueryCondition condition, boolean withVector,
                                                  long offset, int pageSize, String collection) {
        requireValid(condition, true);
        if (pageSize <= 0) throw new IllegalArgumentException("pageSize 必须 > 0");
        long off = Math.max(0, offset);
        if (off + pageSize > MAX_OFFSET_PLUS_LIMIT) {
            throw new IllegalArgumentException(
                    "offset + pageSize = " + (off + pageSize)
                            + " 超出服务端 maxQueryResultWindow 上限 " + MAX_OFFSET_PLUS_LIMIT);
        }

        QueryReq req = QueryReq.builder()
                .collectionName(collection)
                .filter(condition.toExpr())
                .outputFields(outFields(withVector))
                .offset(off)
                .limit((long) pageSize)
                .build();
        try {
            QueryResp resp = client.query(req);
            return extractor.extractQuery(resp, withVector);
        } catch (Exception e) {
            log.warn("[queryByConditionPage] 异常: {}", e.getMessage());
            return Collections.emptyList();
        }
    }

    // ==================== delete ====================

    public int deleteByIds(List<String> ids, String collection) {
        if (ids == null || ids.isEmpty()) return 0;
        try {
            DeleteReq req = DeleteReq.builder()
                    .collectionName(collection)
                    .filter(buildIdInExpr(ids))
                    .build();
            DeleteResp resp = client.delete(req);
            if (resp == null) {
                log.warn("[deleteByIds] 失败: ids={}", ids);
                return -1;
            }
            int cnt = (int) resp.getDeleteCnt();
            log.info("[deleteByIds] 删除 {} 条", cnt);
            return cnt;
        } catch (Exception e) {
            log.warn("[deleteByIds] 异常: ids={}", ids, e);
            return -1;
        }
    }

    // ==================== 按 ID 批量查 ====================

    public List<VectorRecord> queryByIds(List<String> ids, String collection) {
        if (ids == null || ids.isEmpty()) return Collections.emptyList();
        try {
            QueryReq req = QueryReq.builder()
                    .collectionName(collection)
                    .filter(buildIdInExpr(ids))
                    .outputFields(Arrays.asList(
                            PRIMARY_KEY, IMAGE_PATH, FEATURE_VEC,
                            ORIGIN_KEY, TENANT_ID, CREATE_TIME))
                    .build();
            QueryResp resp = client.query(req);
            return extractor.extractVectorRecords(resp, ids);
        } catch (Exception e) {
            log.warn("[queryByIds] 异常: {}", e.getMessage());
            return Collections.emptyList();
        }
    }

    // ==================== 集合信息 / 计数 ====================

    public Map<String, Object> getCollectionInfo(String collection) {
        Map<String, Object> info = new HashMap<>();
        info.put("collectionName", collection);
        info.put("rowCount", countAllRaw(collection));
        return info;
    }

    public Map<String, Object> getCollectionStats(int sampleSize, String collection) {
        Map<String, Object> result = new HashMap<>();
        result.put("collectionName", collection);

        try {
            QueryReq req = QueryReq.builder()
                    .collectionName(collection)
                    .outputFields(Arrays.asList(
                            PRIMARY_KEY, IMAGE_PATH,
                            ORIGIN_KEY, TENANT_ID, CREATE_TIME))
                    .limit(sampleSize)
                    .build();
            QueryResp resp = client.query(req);
            result.put("samples", extractor.extractSamples(resp));
        } catch (Exception e) {
            log.warn("获取样本失败: {}", e.getMessage());
            result.put("samples", Collections.emptyList());
        }
        result.put("rowCount", countAllRaw(collection));
        return result;
    }

    public long countByCondition(QueryCondition condition, String collection) {
        if (condition == null || condition.isEmpty()) {
            return countAllRaw(collection);
        }
        try {
            QueryReq req = QueryReq.builder()
                    .collectionName(collection)
                    .filter(condition.toExpr())
                    .outputFields(Collections.singletonList(PRIMARY_KEY))
                    .limit(MAX_OFFSET_PLUS_LIMIT)
                    .build();
            QueryResp resp = client.query(req);
            if (resp == null || resp.getQueryResults() == null) return 0L;
            return resp.getQueryResults().size();
        } catch (Exception e) {
            log.warn("[countByCondition] 异常: {}", e.getMessage());
            return 0L;
        }
    }

    // ==================== 内部 ====================

    private List<QueryResult> runFieldQuery(String expr, boolean withVector, int limit, String collection) {
        QueryReq.QueryReqBuilder qb = QueryReq.builder()
                .collectionName(collection)
                .filter(expr)
                .outputFields(outFields(withVector));
        if (limit > 0) qb.limit((long) limit);

        try {
            QueryResp resp = client.query(qb.build());
            return extractor.extractQuery(resp, withVector);
        } catch (Exception e) {
            log.warn("[runFieldQuery] 异常 expr='{}' : {}", expr, e.getMessage());
            return Collections.emptyList();
        }
    }

    private long countAllRaw(String collection) {
        try {
            QueryReq req = QueryReq.builder()
                    .collectionName(collection)
                    .outputFields(Collections.singletonList(PRIMARY_KEY))
                    .limit(MAX_OFFSET_PLUS_LIMIT)
                    .build();
            QueryResp resp = client.query(req);
            if (resp == null || resp.getQueryResults() == null) return 0L;
            long got = resp.getQueryResults().size();
            if (got >= MAX_OFFSET_PLUS_LIMIT) {
                log.warn("[countAllRaw] 命中 maxQueryResultWindow 上限 {}，实际行数可能更大。", MAX_OFFSET_PLUS_LIMIT);
            }
            return got;
        } catch (Exception e) {
            log.warn("[countAllRaw] 异常: {}", e.getMessage());
            return 0L;
        }
    }

    private static List<String> outFields(boolean withVector) {
        List<String> list = new ArrayList<>(Arrays.asList(
                PRIMARY_KEY, IMAGE_PATH, ORIGIN_KEY, TENANT_ID, CREATE_TIME));
        if (withVector) list.add(FEATURE_VEC);
        return list;
    }

    private static void requireValid(QueryCondition condition, boolean requireNonEmpty) {
        if (condition == null || (requireNonEmpty && condition.isEmpty())) {
            throw new IllegalArgumentException("QueryCondition 不可为空且至少包含一个条件");
        }
    }

    private static QueryResult firstOrNull(List<QueryResult> list) {
        return list == null || list.isEmpty() ? null : list.get(0);
    }

    private static String buildIdInExpr(List<String> ids) {
        StringBuilder expr = new StringBuilder(PRIMARY_KEY + " in [");
        for (int i = 0; i < ids.size(); i++) {
            if (i > 0) expr.append(",");
            expr.append("\"").append(ids.get(i).replace("\"", "\\\"")).append("\"");
        }
        expr.append("]");
        return expr.toString();
    }
}
