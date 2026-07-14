package com.lz.framework.vector.milvus.service;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.lz.framework.vector.pojo.VectorRecord;

import java.util.ArrayList;
import java.util.List;

import static com.lz.framework.vector.constants.MilvusFieldConstants.*;

/**
 * {@link VectorRecord} ↔ Milvus {@code JsonObject} 双向映射。
 *
 * <p>把"对象↔JSON 行"的编解码集中在一处，业务 CRUD 模块无需关心字段顺序与空值兼容。
 *
 * @author litchi
 */
public class MilvusRecordMapper {

    private static final Gson GSON = new Gson();

    /** 把 VectorRecord 编码为 Milvus insert 用的 JsonObject 行 */
    public JsonObject toRow(VectorRecord r) {
        if (r == null) return null;
        JsonObject row = new JsonObject();
        row.addProperty(PRIMARY_KEY, r.getId());
        if (r.getImagePath() != null) {
            row.addProperty(IMAGE_PATH, r.getImagePath());
        }
        if (r.getOriginKey() != null){
            row.addProperty(ORIGIN_KEY, r.getOriginKey());
        }
        row.addProperty(TENANT_ID, sentinel(r.getTenantId()));
        row.addProperty(CREATE_TIME, r.getCreateTime());
        if (r.getVector() != null && r.getVector().length > 0) {
            row.add(FEATURE_VEC, GSON.toJsonTree(toFloatList(r.getVector())));
        }
        return row;
    }

    private static long sentinel(Long nullable) {
        return nullable == null ? 0L : nullable;
    }

    private static List<Float> toFloatList(float[] v) {
        List<Float> list = new ArrayList<>(v.length);
        for (float f : v) list.add(f);
        return list;
    }
}
