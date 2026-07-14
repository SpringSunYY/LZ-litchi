package com.lz.framework.vector.core.exception;

import static com.lz.framework.common.exception.enums.GlobalErrorCodeConstants.VECTOR_NOT_ENABLED;
import static com.lz.framework.common.exception.util.ServiceExceptionUtil.exception;

/**
 * 向量模块未启用异常。
 *
 * <p>当 {@code litchi.vector.enable=false}（默认关闭）时，业务代码仍然尝试使用向量相关
 * 服务（特征提取 / Milvus CRUD / 以图搜图等），抛出此异常，提示用户先在 yml 中开启向量模块。
 *
 * <p>典型调用链：
 * <pre>{@code
 * litchi:
 *   vector:
 *     enable: true   # ← 改为 true 即可启用整个向量模块
 * }</pre>
 */
public class VectorDisabledException extends RuntimeException {

    public VectorDisabledException(String operation) {
        throw exception(VECTOR_NOT_ENABLED, operation);
    }

    public VectorDisabledException(String operation, Throwable cause) {
        throw exception(VECTOR_NOT_ENABLED, operation);
    }
}
