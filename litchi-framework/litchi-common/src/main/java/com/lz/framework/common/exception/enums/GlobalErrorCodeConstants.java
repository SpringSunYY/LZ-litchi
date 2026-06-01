package com.lz.framework.common.exception.enums;

import com.lz.framework.common.exception.ErrorCode;

/**
 * 全局错误码枚举
 * 0-999 系统异常编码保留
 * <p>
 * 一般情况下，使用 HTTP 响应状态码 https://developer.mozilla.org/zh-CN/docs/Web/HTTP/Status
 * 虽然说，HTTP 响应状态码作为业务使用表达能力偏弱，但是使用在系统层面还是非常不错的
 * 比较特殊的是，因为之前一直使用 0 作为成功，就不使用 200 啦。
 *
 * @author 荔枝源码
 */
public interface GlobalErrorCodeConstants {

    ErrorCode SUCCESS = new ErrorCode(0, "成功");

    // ========== 客户端错误段 ==========

    ErrorCode BAD_REQUEST = new ErrorCode(400, "common.http.back.badRequest", "请求参数不正确");
    ErrorCode UNAUTHORIZED = new ErrorCode(401, "common.http.back.unauthorized", "账号未登录");
    ErrorCode FORBIDDEN = new ErrorCode(403, "common.http.back.forbidden", "没有该操作权限");
    ErrorCode NOT_FOUND = new ErrorCode(404, "common.http.back.notFound", "请求未找到");
    ErrorCode METHOD_NOT_ALLOWED = new ErrorCode(405, "common.http.back.methodNotAllowed", "请求方法不正确");
    ErrorCode LOCKED = new ErrorCode(423, "common.http.back.locked", "请求失败，请稍后重试"); // 并发请求，不允许
    ErrorCode TOO_MANY_REQUESTS = new ErrorCode(429, "common.http.back.rateLimited", "请求过于频繁，请稍后重试");

    // ========== 服务端错误段 ==========

    ErrorCode INTERNAL_SERVER_ERROR = new ErrorCode(500, "common.http.back.serverError", "系统异常");
    ErrorCode NOT_IMPLEMENTED = new ErrorCode(501, "common.http.back.notImplemented", "功能未实现/未开启");
    ErrorCode ERROR_CONFIGURATION = new ErrorCode(502, "common.http.back.configurationError", "错误的配置项");

    // ========== 自定义错误段 ==========
    ErrorCode REPEATED_REQUESTS = new ErrorCode(900, "common.common.back.repeatedRequest", "重复请求，请稍后重试"); // 重复请求
    ErrorCode DEMO_DENY = new ErrorCode(901, "common.common.back.demoDeny", "演示模式，禁止写操作");

    ErrorCode UNKNOWN = new ErrorCode(999, "common.common.back.unknown", "未知错误");

    // ========== 请求参数校验 ==========

    String REQUEST_PARAMETER_INVALID = "validation.request.parameter.invalid"; // 请求参数无效 / request parameter is invalid
    String REQUEST_PARAMETER_TYPE_ERROR = "validation.request.parameter.type.error"; // 请求参数类型错误 / request parameter type error
    String REQUEST_PARAMETER_MISSING = "validation.request.parameter.missing"; // 请求参数缺失 / request parameter is missing
    String REQUEST_METHOD_NOT_SUPPORTED = "validation.request.method.not.supported"; // 请求方法不支持 / request method not supported
    String REQUEST_ADDRESS_NOT_FOUND = "validation.request.address.not.found"; // 请求地址不存在 / request address not found

    // ========== 字段校验注解 ==========
    String VALIDATION_MOBILE = "validation.mobile"; // 手机号码格式不正确 / invalid mobile phone format
    String VALIDATION_TELEPHONE = "validation.telephone"; // 电话号码格式不正确 / invalid telephone format
    String VALIDATION_IN_ENUM = "validation.in.enum"; // 枚举值不合法，请在{}中选择 / invalid enum value, must be one of {}
    String VALIDATION_SORT = "validation.sort"; // 排序字段不合法，请在{}中选择 / invalid sort field, must be one of {}
    String VALIDATION_SORT_BY = "validation.sort.by"; // 排序字段或排序方式不合法 / invalid sort field or order, field must be one of {}, order must be asc or desc

    // ========== 导入异常 ==========
    String IMPORT_ROW_ERROR = "validation.import.row.error"; // 第{}行 / row {}
}
