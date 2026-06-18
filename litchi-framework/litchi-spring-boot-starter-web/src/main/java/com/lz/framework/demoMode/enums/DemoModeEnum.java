package com.lz.framework.demoMode.enums;

/**
 * 演示模式操作类型枚举，对应 HTTP 请求方法
 *
 * @author 荔枝源码
 */
public enum DemoModeEnum {

    GET,
    POST,
    PUT,
    DELETE;

    /**
     * 根据 HTTP 方法名推断操作类型
     *
     * @param httpMethod HTTP 方法名（GET/POST/PUT/DELETE）
     * @return 对应的操作类型，无法推断时返回 null
     */
    public static DemoModeEnum fromHttpMethod(String httpMethod) {
        if (httpMethod == null) {
            return null;
        }
        return switch (httpMethod.toUpperCase()) {
            case "GET" -> GET;
            case "POST" -> POST;
            case "PUT", "PATCH" -> PUT;
            case "DELETE" -> DELETE;
            default -> null;
        };
    }
}
