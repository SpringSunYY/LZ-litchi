package com.lz.framework.vector.milvus.isolation;

import io.milvus.v2.client.MilvusClientV2;
import io.milvus.v2.common.DataType;
import io.milvus.v2.common.IndexParam;
import io.milvus.v2.service.collection.request.AddFieldReq;
import io.milvus.v2.service.collection.request.CreateCollectionReq;

import java.util.List;
import java.util.Map;

import static com.lz.framework.vector.constants.MilvusFieldConstants.*;

/**
 * Milvus 集合 schema / 索引纯构造器（无副作用，输入 → 输出）。
 *
 * <p>由 {@link CollectionAutoEnsurer} 和 {@link MilvusCollectionManager} 共用。
 */
public final class MilvusCollectionTemplate {

    private MilvusCollectionTemplate() {}

    public static CreateCollectionReq.CollectionSchema buildSchema(MilvusClientV2 client, int dimension) {
        CreateCollectionReq.CollectionSchema schema = client.createSchema();

        schema.addField(AddFieldReq.builder()
                .fieldName(PRIMARY_KEY)
                .dataType(DataType.VarChar).maxLength(200)
                .isPrimaryKey(Boolean.TRUE).autoID(Boolean.FALSE)
                .build());
        schema.addField(AddFieldReq.builder()
                .fieldName(IMAGE_PATH)
                .dataType(DataType.VarChar).maxLength(500)
                .build());
        schema.addField(AddFieldReq.builder()
                .fieldName(FEATURE_VEC)
                .dataType(DataType.FloatVector)
                .dimension(dimension)
                .build());
        schema.addField(AddFieldReq.builder()
                .fieldName(ORIGIN_KEY)
                .dataType(DataType.VarChar).maxLength(200).build());
        schema.addField(AddFieldReq.builder()
                .fieldName(TENANT_ID)
                .dataType(DataType.Int64).build());
        schema.addField(AddFieldReq.builder()
                .fieldName(CREATE_TIME)
                .dataType(DataType.Int64).build());

        return schema;
    }

   public static List<IndexParam> buildIndexParams() {
        return List.of(
                IndexParam.builder()
                        .fieldName(FEATURE_VEC)
                        .indexType(IndexParam.IndexType.HNSW)
                        .metricType(IndexParam.MetricType.COSINE)
                        .extraParams(Map.of(
                                "M", HNSW_INDEX_M,
                                "efConstruction", HNSW_INDEX_EFC))
                        .build()
        );
    }
}
