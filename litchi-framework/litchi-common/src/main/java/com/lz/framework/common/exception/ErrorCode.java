package com.lz.framework.common.exception;

import com.lz.framework.common.exception.enums.GlobalErrorCodeConstants;
import com.lz.framework.common.exception.enums.ServiceErrorCodeRange;
import lombok.Data;

/**
 * 错误码对象
 * <p>
 * 全局错误码，占用 [0, 999], 参见 {@link GlobalErrorCodeConstants}
 * 业务异常错误码，占用 [1 000 000 000, +∞)，参见 {@link ServiceErrorCodeRange}
 */
@Data
public class ErrorCode {

    /**
     * 错误码
     */
    private final Integer code;

    /**
     * i18n 国际化
     */
    private final String i18n;
    /**
     * 错误提示
     */
    private final String msg;

    public ErrorCode(Integer code, String message) {
        this(code, null, message);
    }

    public ErrorCode(Integer code, String i18n, String message) {
        this.code = code;
        this.i18n = i18n;
        this.msg = message;
    }

}
