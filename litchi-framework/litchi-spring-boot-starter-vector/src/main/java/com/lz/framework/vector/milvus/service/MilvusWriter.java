package com.lz.framework.vector.milvus.service;

import com.google.gson.JsonObject;
import com.lz.framework.vector.pojo.VectorRecord;
import com.lz.framework.vector.milvus.clinet.TenantAwareMilvusClient;
import io.milvus.v2.service.vector.request.InsertReq;
import io.milvus.v2.service.vector.response.InsertResp;
import lombok.extern.slf4j.Slf4j;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 * 数据写入（insert）。
 *
 * <p>业务层只关心 VectorRecord，隔离由 {@link TenantAwareMilvusClient} 在 SDK 调用前自动注入。
 *
 * @author litchi
 */
@Slf4j
public class MilvusWriter {

    private final TenantAwareMilvusClient client;
    final MilvusRecordMapper mapper;
    private final int defaultBatchSize;

    public MilvusWriter(TenantAwareMilvusClient client,
                        MilvusRecordMapper mapper,
                        int defaultBatchSize) {
        this.client = client;
        this.mapper = mapper;
        this.defaultBatchSize = defaultBatchSize;
    }

    public String insertOne(VectorRecord record, String logicalCollection) {
        long t0 = System.currentTimeMillis();
        validateRecord(record);

        InsertReq req = InsertReq.builder()
                .collectionName(logicalCollection)
                .data(Collections.singletonList(mapper.toRow(record)))
                .build();

        InsertResp resp = client.insert(req);
        if (resp == null || resp.getInsertCnt() <= 0) {
            throw new RuntimeException("Milvus insert 未返回成功：id=" + record.getId());
        }
        log.info("[单条入库] id={} 耗时 {}ms", record.getId(), System.currentTimeMillis() - t0);
        return record.getId();
    }

    public List<String> insertBatch(List<VectorRecord> records, int batchSize, String logicalCollection) {
        if (records == null) {
            throw new IllegalArgumentException("records 不可为 null");
        }
        if (records.isEmpty()) {
            log.info("[批量入库] 0 条，跳过");
            return Collections.emptyList();
        }
        int batchSizeEff = batchSize <= 0 ? defaultBatchSize : batchSize;

        long t0 = System.currentTimeMillis();
        int total = records.size();
        List<String> insertedIds = new ArrayList<>(total);

        log.info("━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━");
        log.info("[批量入库] 开始: 总 {} 条 / 批 {} 条", total, batchSizeEff);

        int lastPct = -1;
        for (int start = 0; start < total; start += batchSizeEff) {
            int end = Math.min(start + batchSizeEff, total);
            List<JsonObject> rows = new ArrayList<>(end - start);
            List<String> subIds = new ArrayList<>(end - start);
            for (int k = start; k < end; k++) {
                VectorRecord r = records.get(k);
                if (r == null || r.getVector() == null || r.getVector().length == 0) continue;
                rows.add(mapper.toRow(r));
                subIds.add(r.getId());
            }
            if (rows.isEmpty()) continue;

            InsertReq req = InsertReq.builder()
                    .collectionName(logicalCollection)
                    .data(rows)
                    .build();

            long rpcT0 = System.currentTimeMillis();
            InsertResp resp = client.insert(req);
            long rpcMs = System.currentTimeMillis() - rpcT0;
            log.info("[批量入库] 本批 {} 条 | 耗时 {}ms", subIds.size(), rpcMs);
            if (resp == null || resp.getInsertCnt() <= 0) {
                throw new RuntimeException("Milvus insert 失败 (本批 " + subIds.size() + " 条)");
            }
            insertedIds.addAll(subIds);

            int pct = (int) ((end * 100L) / total);
            if (pct / 10 != lastPct / 10) {
                long elapsed = System.currentTimeMillis() - t0;
                long etaMs = pct == 0 ? 0 : (long) ((double) elapsed / pct * (100 - pct));
                log.info("[批量入库] 进度 {}/{} ({}%) | 已用 {}s | 预计剩余 ~{}s",
                        end, total, pct, elapsed / 1000, etaMs / 1000);
            }
            lastPct = pct;
        }

        long totalMs = System.currentTimeMillis() - t0;
        double throughput = totalMs == 0 ? 0.0 : (insertedIds.size() * 1000.0 / totalMs);
        log.info("[批量入库] 完成: 成功 {} / {} 条 | 耗时 {}ms | 吞吐 {} img/s",
                insertedIds.size(), total, totalMs, String.format("%.2f", throughput));
        log.info("━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━");
        return insertedIds;
    }

    private static void validateRecord(VectorRecord record) {
        if (record == null || record.getId() == null || record.getId().isEmpty()) {
            throw new IllegalArgumentException("记录 id 不可为空");
        }
        if (record.getVector() == null || record.getVector().length == 0) {
            throw new IllegalArgumentException("记录向量不可为空");
        }
    }
}
