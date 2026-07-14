package com.lz.module.infra.controller.admin.vector.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.ArrayList;
import java.util.List;

/**
 * 批量上传 / 批量 URL 入库 / 本地目录导入 的响应 VO。
 *
 * <p>对齐前端"已索引 / 跳过 / 失败"三栏展示，对应 demo 里 statInserted / statSkipped / statFailed。
 *
 * @Project: LZ-Order
 * @Author: YY
 * @CreateTime: 2026-07-05
 * @Version: 1.0
 */
@Schema(description = "管理后台 - 以图搜图批量入库结果")
@Data
@NoArgsConstructor
public class BatchUploadRespVO {

    @Schema(description = "实际扫描到的总数（输入条数）")
    private Integer total;

    @Schema(description = "新增入库成功的条数（同时写入了文件日志和向量）")
    private Integer inserted;

    @Schema(description = "因为文件名已存在而跳过的条数（不会重复入库）")
    private Integer skipped;

    @Schema(description = "失败的条数（特征提取失败 / IO 异常等，单条失败不影响其他）")
    private Integer failed;

    @Schema(description = "新增入库成功的明细")
    private List<UploadRespVO> insertedList;

    @Schema(description = "跳过的明细（带原因）")
    private List<SkippedItem> skippedList;

    @Schema(description = "失败的明细（带原因）")
    private List<FailedItem> failedList;

    /** 给 Builder 用的内部状态：当前 builder */
    public static class Builder {
        private final List<UploadRespVO> insertedList = new ArrayList<>();
        private final List<SkippedItem> skippedList = new ArrayList<>();
        private final List<FailedItem> failedList = new ArrayList<>();
        private int total;
        private int inserted;
        private int skipped;
        private int failed;

        public Builder total(int total) { this.total = total; return this; }
        public Builder inserted(UploadRespVO item) {
            this.inserted++;
            this.insertedList.add(item);
            return this;
        }
        public Builder skipped(SkippedItem item) {
            this.skipped++;
            this.skippedList.add(item);
            return this;
        }
        public Builder failed(FailedItem item) {
            this.failed++;
            this.failedList.add(item);
            return this;
        }

        public BatchUploadRespVO build() {
            BatchUploadRespVO vo = new BatchUploadRespVO();
            vo.total = total;
            vo.inserted = inserted;
            vo.skipped = skipped;
            vo.failed = failed;
            vo.insertedList = insertedList;
            vo.skippedList = skippedList;
            vo.failedList = failedList;
            return vo;
        }
    }

    public static Builder builder() {
        return new Builder();
    }

    @Data
    @NoArgsConstructor
    public static class SkippedItem {
        @Schema(description = "触发跳过的源标识：文件名为 multipart 原名 / URL 为入参 URL")
        private String source;
        @Schema(description = "已存在的 infra_file.id")
        private Long existingFileId;

        public static SkippedItem of(String source, Long existingFileId) {
            SkippedItem i = new SkippedItem();
            i.source = source;
            i.existingFileId = existingFileId;
            return i;
        }
    }

    @Data
    @NoArgsConstructor
    public static class FailedItem {
        @Schema(description = "触发失败的源标识")
        private String source;
        @Schema(description = "失败原因")
        private String reason;

        public static FailedItem of(String source, String reason) {
            FailedItem i = new FailedItem();
            i.source = source;
            i.reason = reason;
            return i;
        }
    }
}