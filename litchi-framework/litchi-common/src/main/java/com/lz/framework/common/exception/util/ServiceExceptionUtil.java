package com.lz.framework.common.exception.util;

import com.google.common.annotations.VisibleForTesting;
import com.lz.framework.common.exception.ErrorCode;
import com.lz.framework.common.exception.ServiceException;
import com.lz.framework.common.exception.enums.GlobalErrorCodeConstants;
import com.lz.framework.common.util.i18n.I18nUtils;
import lombok.extern.slf4j.Slf4j;

/**
 * {@link ServiceException} 工具类
 * <p>
 * 目的在于，格式化异常信息提示。
 * 考虑到 String.format 在参数不正确时会报错，因此使用 {} 作为占位符，并使用 {@link #doFormat(int, String, Object...)} 方法来格式化
 * <p>
 * 支持国际化：当 {@link ErrorCode#getI18nKey()} 不为空时，优先从 I18nUtils 获取翻译后的消息模板，再进行格式化。
 *
 */
@Slf4j
public class ServiceExceptionUtil {

    // ========== 和 ServiceException 的集成 ==========

    public static ServiceException exception(ErrorCode errorCode) {
        String message = resolveMessage(errorCode, null);
        return new ServiceException(errorCode.getCode(), message);
    }

    public static ServiceException exception(ErrorCode errorCode, Object... params) {
        String message = resolveMessage(errorCode, params);
        return new ServiceException(errorCode.getCode(), message);
    }

    /**
     * 不经过国际化翻译，直接使用传入的 messagePattern 进行格式化。
     */
    public static ServiceException exception0(Integer code, String messagePattern, Object... params) {
        String message = doFormat(code, messagePattern, params);
        return new ServiceException(code, message);
    }

    /**
     * 支持国际化的异常抛出，使用 i18n key 获取翻译后的消息模板进行格式化。
     *
     * @param code           错误码
     * @param i18n           国际化 key，为空则直接使用 messagePattern
     * @param messagePattern 消息模板（作为翻译失败时的兜底）
     * @param params         格式化参数
     */
    public static ServiceException exception0(Integer code, String i18n, String messagePattern, Object... params) {
        String resolvedPattern = resolveI18nPattern(i18n, messagePattern);
        return exception0(code, resolvedPattern, params);
    }

    public static void exceptionExcel(ErrorCode errorCode, Integer rowNum, String message) {
        //拿到错误码的国际化
        String resolvedPattern = resolveI18nPattern(errorCode.getI18nKey(), errorCode.getMsg());
        //拿到行异常
        String rowNumError = I18nUtils.getMessage(GlobalErrorCodeConstants.IMPORT_ROW_ERROR, "第{}行");
        //格式化行异常
        String rowNumMessage = doFormat(errorCode.getCode(), rowNumError, rowNum);
        //拼接错误信息
        String allMessage = resolvedPattern + " " + rowNumMessage + " " + message;
        throw new ServiceException(errorCode.getCode(), allMessage);
    }

    public static ServiceException invalidParamException(String messagePattern, Object... params) {
        return exception0(GlobalErrorCodeConstants.BAD_REQUEST.getCode(), messagePattern, params);
    }

    // ========== 国际化消息解析 ==========

    private static String resolveMessage(ErrorCode errorCode, Object... params) {
        String i18n = errorCode.getI18nKey();
        String messagePattern = resolveI18nPattern(i18n, errorCode.getMsg());
        return doFormat(errorCode.getCode(), messagePattern, params);
    }

    private static String resolveI18nPattern(String i18n, String fallback) {
        if (i18n == null || i18n.isEmpty()) {
            return fallback;
        }
        return I18nUtils.getMessage(i18n, fallback);
    }

    // ========== 格式化方法 ==========

    /**
     * 将错误编号对应的消息使用 params 进行格式化。
     *
     * @param code           错误编号
     * @param messagePattern 消息模版
     * @param params         参数
     * @return 格式化后的提示
     */
    @VisibleForTesting
    public static String doFormat(int code, String messagePattern, Object... params) {
        if (params == null || params.length == 0) {
            return messagePattern;
        }
        StringBuilder sbuf = new StringBuilder(messagePattern.length() + 50);
        int i = 0;
        int j;
        int l;
        for (l = 0; l < params.length; l++) {
            j = messagePattern.indexOf("{}", i);
            if (j == -1) {
                log.error("[doFormat][参数过多：错误码({})|错误内容({})|参数({})", code, messagePattern, params);
                if (i == 0) {
                    return messagePattern;
                } else {
                    sbuf.append(messagePattern.substring(i));
                    return sbuf.toString();
                }
            } else {
                sbuf.append(messagePattern, i, j);
                sbuf.append(params[l]);
                i = j + 2;
            }
        }
        if (messagePattern.indexOf("{}", i) != -1) {
            log.error("[doFormat][参数过少：错误码({})|错误内容({})|参数({})", code, messagePattern, params);
        }
        sbuf.append(messagePattern.substring(i));
        return sbuf.toString();
    }

}
