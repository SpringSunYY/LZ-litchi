package com.lz.framework.demoMode.aspect;

import cn.hutool.core.collection.CollUtil;
import cn.hutool.core.util.StrUtil;
import com.fasterxml.jackson.databind.JsonNode;
import com.lz.framework.common.exception.ServiceException;
import com.lz.framework.common.exception.enums.GlobalErrorCodeConstants;
import com.lz.framework.common.util.i18n.I18nUtils;
import com.lz.framework.common.util.json.JsonUtils;
import com.lz.framework.demoMode.annotation.DemoMode;
import com.lz.framework.demoMode.config.DemoModeProperties;
import com.lz.framework.demoMode.enums.DemoModeEnum;
import jakarta.servlet.http.HttpServletRequest;
import lombok.extern.slf4j.Slf4j;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.core.annotation.Order;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import java.util.*;

/**
 * 演示模式切面
 * <p>
 * 基于 Spring AOP 实现，仅拦截标注了 {@link DemoMode} 注解的方法。
 * 当全局开启防傻逼演示模式（litchi.demo.enabled=true）时，按注解配置精确控制操作权限。
 *
 * @author 荔枝源码
 */
@Aspect
@Slf4j
@Order(-999)
public class DemoModeAspect {

    private final DemoModeProperties demoModeProperties;

    /**
     * 错误码
     */
    private final Integer ERROR_CODE = 50001;
    /**
     * 错误消息前缀
     */
    private final String ERROR_PREFIX = " ";
    /**
     * 错误消息分隔符
     */
    private final String ERROR_SPLIT = " ";

    public DemoModeAspect(DemoModeProperties demoModeProperties) {
        this.demoModeProperties = demoModeProperties;
    }

    /**
     * 拦截标注了 {@link DemoMode} 注解的方法
     *
     * @param joinPoint 切点
     * @param demoMode  注解
     */
    @Before("@annotation(demoMode)")
    public void beforeMethodAnnotation(JoinPoint joinPoint, DemoMode demoMode) {
        doBefore(joinPoint, demoMode);
    }

    /**
     * 拦截标注了 {@link DemoMode} 注解的类，不取@annotation，防止重复before
     * 使用！判断可以忽略
     *
     * @param joinPoint 切点
     * @param demoMode  注解
     */
    @Before("@within(demoMode) && !@annotation(com.lz.framework.demoMode.annotation.DemoMode)")
    public void beforeClassAnnotation(JoinPoint joinPoint, DemoMode demoMode) {
        doBefore(joinPoint, demoMode);
    }

    public void doBefore(JoinPoint joinPoint, DemoMode demoMode) {
        if (!demoModeProperties.isEnabled()) {
            return;
        }

        // 拿到请求
        HttpServletRequest request = getRequest();
        if (request == null) {
            return;
        }

        // 判断操作类型
        DemoModeEnum operationType = DemoModeEnum.fromHttpMethod(request.getMethod());
        if (operationType == null) {
            return;
        }

        // 校验操作
        checkOperationAllowed(demoMode, operationType, request);
    }

    private HttpServletRequest getRequest() {
        ServletRequestAttributes attrs = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
        return attrs != null ? attrs.getRequest() : null;
    }

    private void checkOperationAllowed(DemoMode demoMode, DemoModeEnum operationType, HttpServletRequest request) {
        Set<DemoModeEnum> allowedOps = getAllowedOperations(demoMode);
        // 判断操作类型
        if (!allowedOps.contains(operationType)) {
            throw new ServiceException(ERROR_CODE, getDenyMessage(demoMode, null));
        }

        // 校验禁止的字段
        if (demoMode.forbiddenFields().length > 0) {
            checkForbiddenFields(demoMode, request);
        }
        // 校验禁止的字段的值
        if (demoMode.forbiddenFieldValues().length > 0) {
            checkForbiddenFieldValues(demoMode, request);
        }
        // 校验删除的ID
        if (operationType == DemoModeEnum.DELETE && demoMode.forbiddenDeleteIds().length > 0) {
            checkForbiddenDeleteIds(demoMode, request);
        }
    }

    private Set<DemoModeEnum> getAllowedOperations(DemoMode demoMode) {
        if (demoMode == null || demoMode.allowed().length == 0) {
            return EnumSet.of(DemoModeEnum.GET);
        }
        Set<DemoModeEnum> result = EnumSet.noneOf(DemoModeEnum.class);
        Collections.addAll(result, demoMode.allowed());
        return result;
    }

    private void checkForbiddenFields(DemoMode demoMode, HttpServletRequest request) {
        String body = getRequestBody(request);
        if (StrUtil.isBlank(body)) {
            return;
        }
        try {
            JsonNode rootNode = JsonUtils.parseTree(body);
            // 找到所有匹配的字段
            Set<String> foundFields = findForbiddenFields(rootNode, Set.of(demoMode.forbiddenFields()));
            if (CollUtil.isNotEmpty(foundFields)) {
                String detail = ERROR_PREFIX + String.join(ERROR_PREFIX, foundFields);
                log.warn("[DemoMode] 禁止修改字段被拦截 uri={}, forbiddenFields={}",
                        request.getRequestURI(), foundFields);
                throw new ServiceException(ERROR_CODE, getDenyMessage(demoMode, detail));
            }
        } catch (ServiceException e) {
            throw e;
        } catch (Exception e) {
            log.warn("[DemoMode] 检查禁止字段时解析JSON失败 uri={}", request.getRequestURI(), e);
        }
    }

    private Set<String> findForbiddenFields(JsonNode node, Set<String> forbiddenFieldSet) {
        Set<String> foundFields = new HashSet<>();
        if (node.isArray()) {
            for (JsonNode child : node) {
                foundFields.addAll(findForbiddenFields(child, forbiddenFieldSet));
            }
        } else if (node.isObject()) {
            node.fieldNames().forEachRemaining(fieldName -> {
                JsonNode childNode = node.get(fieldName);
                if (forbiddenFieldSet.contains(fieldName) && !childNode.isNull()) {
                    foundFields.add(fieldName);
                }
                foundFields.addAll(findForbiddenFields(childNode, forbiddenFieldSet));
            });
        }
        return foundFields;
    }

    private void checkForbiddenDeleteIds(DemoMode demoMode, HttpServletRequest request) {
        Set<String> forbiddenIdSet = Set.of(demoMode.forbiddenDeleteIds());
        boolean matched = request.getParameterMap().values().stream()
                .flatMap(Arrays::stream)
                .anyMatch(forbiddenIdSet::contains);
        if (matched) {
            String detail = ERROR_PREFIX + String.join(ERROR_SPLIT, demoMode.forbiddenDeleteIds());
            log.warn("[DemoMode] 禁止删除ID被拦截 uri={}, forbiddenDeleteIds={}",
                    request.getRequestURI(), demoMode.forbiddenDeleteIds());
            throw new ServiceException(ERROR_CODE, getDenyMessage(demoMode, detail));
        }
    }

    private void checkForbiddenFieldValues(DemoMode demoMode, HttpServletRequest request) {
        String body = getRequestBody(request);
        if (StrUtil.isBlank(body)) {
            return;
        }

        // 解析 forbiddenFieldValues，每个字段可以配置多个值
        Map<String, Set<String>> forbiddenValueMap = new HashMap<>();
        for (String pair : demoMode.forbiddenFieldValues()) {
            int eqIdx = pair.indexOf('=');
            if (eqIdx > 0) {
                String fieldName = pair.substring(0, eqIdx);
                String fieldValue = pair.substring(eqIdx + 1);
                forbiddenValueMap.computeIfAbsent(fieldName, k -> new HashSet<>()).add(fieldValue);
            }
        }
        if (forbiddenValueMap.isEmpty()) {
            return;
        }

        try {
            JsonNode rootNode = JsonUtils.parseTree(body);
            Set<String> matchedPairs = findForbiddenFieldValues(rootNode, forbiddenValueMap);
            if (CollUtil.isNotEmpty(matchedPairs)) {
                String detail = ERROR_PREFIX + String.join(ERROR_SPLIT, matchedPairs);
                log.warn("[DemoMode] 禁止字段值被拦截 uri={}, forbiddenFieldValues={}",
                        request.getRequestURI(), matchedPairs);
                throw new ServiceException(ERROR_CODE, getDenyMessage(demoMode, detail));
            }
        } catch (ServiceException e) {
            throw e;
        } catch (Exception e) {
            log.warn("[DemoMode] 检查禁止字段值时解析JSON失败 uri={}", request.getRequestURI(), e);
        }
    }

    private Set<String> findForbiddenFieldValues(JsonNode node, Map<String, Set<String>> forbiddenValueMap) {
        Set<String> matchedPairs = new HashSet<>();
        if (node.isArray()) {
            for (JsonNode child : node) {
                matchedPairs.addAll(findForbiddenFieldValues(child, forbiddenValueMap));
            }
        } else if (node.isObject()) {
            node.fieldNames().forEachRemaining(fieldName -> {
                JsonNode childNode = node.get(fieldName);
                if (forbiddenValueMap.containsKey(fieldName)) {
                    String actualValue = childNode.isNull() ? "" : childNode.asText();
                    for (String expectedValue : forbiddenValueMap.get(fieldName)) {
                        if (!expectedValue.equals(actualValue)) {
                            continue;
                        }
                        matchedPairs.add(fieldName + "=" + expectedValue);
                        break;

                    }
                }
                matchedPairs.addAll(findForbiddenFieldValues(childNode, forbiddenValueMap));
            });
        }
        return matchedPairs;
    }

    private String getRequestBody(HttpServletRequest request) {
        try {
            return request.getReader() != null ? request.getReader().lines().reduce("", String::concat) : "";
        } catch (Exception e) {
            return "";
        }
    }

    private String getDenyMessage(DemoMode demoMode, String detail) {
        // 第一优先级：注解上显式指定的 message（自定义提示）
        if (demoMode != null && StrUtil.isNotBlank(demoMode.message())) {
            return detail != null ? demoMode.message() + ERROR_PREFIX + detail : demoMode.message();
        }
        // 第二优先级：注解的 i18nKey → I18nUtils 国际化 → 注解 message → 常量 key
        if (demoMode != null && StrUtil.isNotBlank(demoMode.i18nKey())) {
            String i18nMsg = I18nUtils.getMessage(demoMode.i18nKey(), demoMode.message());
            if (StrUtil.isNotBlank(i18nMsg)) {
                return detail != null ? i18nMsg + ERROR_PREFIX + detail : i18nMsg;
            }
        }
        // 第三优先级：常量 key → I18nUtils → properties.message → 硬编码兜底
        String i18nMsg = I18nUtils.getMessage(
                GlobalErrorCodeConstants.DEMO_MODE_ERROR,
                demoModeProperties.getMessage());
        if (StrUtil.isNotBlank(i18nMsg)) {
            return detail != null ? i18nMsg + ERROR_PREFIX + detail : i18nMsg;
        }
        return detail != null ? demoModeProperties.getMessage() + ERROR_PREFIX + detail : demoModeProperties.getMessage();
    }
}
