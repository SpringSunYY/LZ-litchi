package com.lz.framework.common.enums;

/**
 * 国际化错误消息常量类
 *
 * @author YY
 */
public interface I18nErrorCodeConstants {

    // ========== 请求参数校验 ==========

    String REQUEST_PARAMETER_INVALID = "validation.request.parameter.invalid";
    String REQUEST_PARAMETER_TYPE_ERROR = "validation.request.parameter.type.error";
    String REQUEST_PARAMETER_MISSING = "validation.request.parameter.missing";
    String REQUEST_METHOD_NOT_SUPPORTED = "validation.request.method.not.supported";
    String REQUEST_ADDRESS_NOT_FOUND = "validation.request.address.not.found";

    // ========== 字段校验注解 ==========

    String VALIDATION_MOBILE = "validation.mobile";
    String VALIDATION_TELEPHONE = "validation.telephone";
    String VALIDATION_IN_ENUM = "validation.in.enum";
    String VALIDATION_SORT = "validation.sort";
    String VALIDATION_SORT_BY = "validation.sort.by";
}
