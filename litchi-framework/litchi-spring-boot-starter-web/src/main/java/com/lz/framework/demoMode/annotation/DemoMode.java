package com.lz.framework.demoMode.annotation;
import com.lz.framework.demoMode.enums.DemoModeEnum;
import com.lz.framework.common.exception.enums.GlobalErrorCodeConstants;

import java.lang.annotation.*;

/**
 * 演示模式注解
 * 防傻逼注解
 * <p>
 * 可声明在类或方法上，用于控制演示模式下的操作权限。
 * 当全局开启演示模式（litchi.demo=true）时：
 * <ul>
 *   <li>标记了 @DemoMode 的方法：按注解中的 allowed/forbiddenFields/forbiddenDeleteIds 配置放行</li>
 *   <li>未标记 @DemoMode 的方法：完全不受影响，不进入切面</li>
 * </ul>
 *
 * <p>使用示例：
 * <pre>{@code
 * // 1. 允许更新操作，但禁止修改 password 和 status 字段
 * @DemoMode(allowed = {PUT}, forbiddenFields = {"password", "status"})
 * public CommonResult<Boolean> updateUser(@RequestBody UserUpdateVO vo) { ... }
 *
 * // 1.1 允许更新操作，但禁止修改 status 值为 "已审核" 或 "已取消" 的数据
 * @DemoMode(allowed = {PUT}, forbiddenFieldValues = {"status=已审核", "status=已取消"})
 * public CommonResult<Boolean> updateUser(@RequestBody UserUpdateVO vo) { ... }
 *
 * // 2. 允许删除操作，但禁止删除 ID 为 1 的管理员
 * @DemoMode(allowed = {DELETE}, forbiddenDeleteIds = {"1"})
 * public CommonResult<Boolean> deleteUser(@RequestParam("id") Long id) { ... }
 *
 * // 3. 类级别：整个 Controller 只允许查询
 * @DemoMode
 * @RestController
 * public class SensitiveController { ... }
 *
 * // 4. 允许所有操作（完全放行，等同于关闭演示模式对此方法的限制）
 * @DemoMode(allowed = {POST, PUT, DELETE, GET})
 * public CommonResult<Boolean> fullAccess() { ... }
 * }</pre>
 *
 * @author YY
 */
@Target({ElementType.TYPE, ElementType.METHOD})
@Retention(RetentionPolicy.RUNTIME)
@Inherited
@Documented
public @interface DemoMode {

    /**
     * 当前类或方法在演示模式下允许的操作类型
     * <p>
     * 默认值为空，表示不特别放行任何写操作，仅允许 {@link DemoModeEnum#GET} 查询
     */
    DemoModeEnum[] allowed() default {};

    /**
     * 演示模式下禁止修改的字段名
     * <p>
     * 仅对写操作（CREATE/UPDATE）生效。
     * 当请求体（JSON）中包含这些字段时，即使 allowed 中包含对应操作类型，也会被拦截。
     * <p>
     * 示例：{@code forbiddenFields = {"password", "role"}} 表示不允许修改密码和角色字段
     */
    String[] forbiddenFields() default {};

    /**
     * 演示模式下禁止删除的资源标识（ID或Key）
     * <p>
     * 仅对 {@link DemoModeEnum#DELETE} 操作生效。
     * 当请求参数中删除的 ID 在此列表中时，即使 allowed 中包含 DELETE，也会被拦截。
     * 匹配方式：将请求参数中的 id 值转为字符串后进行精确匹配
     * <p>
     * 示例：{@code forbiddenDeleteIds = {"1", "100"}} 表示不允许删除 ID 为 1 和 100 的记录
     */
    String[] forbiddenDeleteIds() default {};

    /**
     * 演示模式下禁止修改的字段值（格式：字段名=字段值）
     * <p>
     * 仅对写操作（CREATE/UPDATE）生效。
     * 当请求体（JSON）中某个字段的值匹配指定值时，即使该字段本身不被 forbiddenFields 禁止，也会被拦截。
     * <p>
     * 示例：{@code forbiddenFieldValues = {"status=已审核"}} 表示不允许修改 status 为"已审核"的记录
     *
     * @see #forbiddenFields() 禁止修改的字段名
     */
    String[] forbiddenFieldValues() default {};

    /**
     * 提示信息
     * <p>
     * 默认为空，使用全局配置的提示信息
     */
    String message() default "";

    /**
     * 提示国际化
     * <p>
     * 默认使用全局配置的国际化键名
     */
    String i18nKey() default GlobalErrorCodeConstants.DEMO_MODE_ERROR;
}
