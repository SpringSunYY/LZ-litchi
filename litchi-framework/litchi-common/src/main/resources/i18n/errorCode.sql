-- =============================================
-- common 模块错误码国际化 SQL
-- 生成时间：2026-05-25
-- 规范版本：v1.2
-- =============================================

-- ---------------------------------------------
-- 变量定义（运行时可覆盖）
-- ---------------------------------------------
SET @IS_SYSTEM = 1;
SET @USE_TYPE_EXCEPTION = 5;
SET @MODULE_TYPE = 'common';
SET @LOCALE_TARGET_BACKEND = 1;
SET @LOCALE_EN = 'en-US';
SET @LOCALE_ZH_CN = 'zh-CN';
SET @CREATOR = '0';
SET @REMARK = 'ai auto generate';

-- =============================================
-- HTTP 错误码 400~502
-- =============================================

-- 1. HTTP-请求参数不正确
SET @ORDER_NUM = 1;
DELETE FROM infra_i18n_key WHERE message_key = 'common.http.back.badRequest';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('HTTP-请求参数不正确', 'common.http.back.badRequest', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 1. HTTP-请求参数不正确 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'common.http.back.badRequest' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('HTTP-请求参数不正确', 'common.http.back.badRequest', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'invalid request parameters', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 1. HTTP-请求参数不正确 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'common.http.back.badRequest' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('HTTP-请求参数不正确', 'common.http.back.badRequest', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '请求参数不正确', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. HTTP-账号未登录
SET @ORDER_NUM = 2;
DELETE FROM infra_i18n_key WHERE message_key = 'common.http.back.unauthorized';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('HTTP-账号未登录', 'common.http.back.unauthorized', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. HTTP-账号未登录 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'common.http.back.unauthorized' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('HTTP-账号未登录', 'common.http.back.unauthorized', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'account not logged in', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. HTTP-账号未登录 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'common.http.back.unauthorized' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('HTTP-账号未登录', 'common.http.back.unauthorized', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '账号未登录', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. HTTP-没有权限
SET @ORDER_NUM = 3;
DELETE FROM infra_i18n_key WHERE message_key = 'common.http.back.forbidden';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('HTTP-没有权限', 'common.http.back.forbidden', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. HTTP-没有权限 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'common.http.back.forbidden' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('HTTP-没有权限', 'common.http.back.forbidden', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'no permission for this operation', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. HTTP-没有权限 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'common.http.back.forbidden' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('HTTP-没有权限', 'common.http.back.forbidden', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '没有该操作权限', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. HTTP-请求未找到
SET @ORDER_NUM = 4;
DELETE FROM infra_i18n_key WHERE message_key = 'common.http.back.notFound';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('HTTP-请求未找到', 'common.http.back.notFound', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. HTTP-请求未找到 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'common.http.back.notFound' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('HTTP-请求未找到', 'common.http.back.notFound', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'request not found', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. HTTP-请求未找到 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'common.http.back.notFound' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('HTTP-请求未找到', 'common.http.back.notFound', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '请求未找到', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. HTTP-请求方法不正确
SET @ORDER_NUM = 5;
DELETE FROM infra_i18n_key WHERE message_key = 'common.http.back.methodNotAllowed';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('HTTP-请求方法不正确', 'common.http.back.methodNotAllowed', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. HTTP-请求方法不正确 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'common.http.back.methodNotAllowed' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('HTTP-请求方法不正确', 'common.http.back.methodNotAllowed', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'request method not allowed', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. HTTP-请求方法不正确 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'common.http.back.methodNotAllowed' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('HTTP-请求方法不正确', 'common.http.back.methodNotAllowed', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '请求方法不正确', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 6. HTTP-请求锁定
SET @ORDER_NUM = 6;
DELETE FROM infra_i18n_key WHERE message_key = 'common.http.back.locked';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('HTTP-请求锁定', 'common.http.back.locked', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 6. HTTP-请求锁定 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'common.http.back.locked' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('HTTP-请求锁定', 'common.http.back.locked', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'request failed, please retry later', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 6. HTTP-请求锁定 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'common.http.back.locked' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('HTTP-请求锁定', 'common.http.back.locked', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '请求失败，请稍后重试', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 7. HTTP-请求过于频繁
SET @ORDER_NUM = 7;
DELETE FROM infra_i18n_key WHERE message_key = 'common.http.back.rateLimited';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('HTTP-请求过于频繁', 'common.http.back.rateLimited', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 7. HTTP-请求过于频繁 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'common.http.back.rateLimited' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('HTTP-请求过于频繁', 'common.http.back.rateLimited', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'too many requests, please retry later', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 7. HTTP-请求过于频繁 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'common.http.back.rateLimited' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('HTTP-请求过于频繁', 'common.http.back.rateLimited', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '请求过于频繁，请稍后重试', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 8. HTTP-系统异常
SET @ORDER_NUM = 8;
DELETE FROM infra_i18n_key WHERE message_key = 'common.http.back.serverError';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('HTTP-系统异常', 'common.http.back.serverError', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 8. HTTP-系统异常 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'common.http.back.serverError' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('HTTP-系统异常', 'common.http.back.serverError', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'system error', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 8. HTTP-系统异常 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'common.http.back.serverError' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('HTTP-系统异常', 'common.http.back.serverError', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '系统异常', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 9. HTTP-功能未实现
SET @ORDER_NUM = 9;
DELETE FROM infra_i18n_key WHERE message_key = 'common.http.back.notImplemented';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('HTTP-功能未实现', 'common.http.back.notImplemented', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 9. HTTP-功能未实现 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'common.http.back.notImplemented' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('HTTP-功能未实现', 'common.http.back.notImplemented', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'feature not implemented or not enabled', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 9. HTTP-功能未实现 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'common.http.back.notImplemented' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('HTTP-功能未实现', 'common.http.back.notImplemented', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '功能未实现/未开启', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 10. HTTP-配置错误
SET @ORDER_NUM = 10;
DELETE FROM infra_i18n_key WHERE message_key = 'common.http.back.configurationError';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('HTTP-配置错误', 'common.http.back.configurationError', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 10. HTTP-配置错误 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'common.http.back.configurationError' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('HTTP-配置错误', 'common.http.back.configurationError', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'incorrect configuration item', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 10. HTTP-配置错误 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'common.http.back.configurationError' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('HTTP-配置错误', 'common.http.back.configurationError', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '错误的配置项', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- 自定义错误码 900~999
-- =============================================

-- 11. 公共-重复请求
SET @ORDER_NUM = 11;
DELETE FROM infra_i18n_key WHERE message_key = 'common.common.back.repeatedRequest';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('公共-重复请求', 'common.common.back.repeatedRequest', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 11. 公共-重复请求 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'common.common.back.repeatedRequest' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('公共-重复请求', 'common.common.back.repeatedRequest', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'repeated request, please retry later', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 11. 公共-重复请求 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'common.common.back.repeatedRequest' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('公共-重复请求', 'common.common.back.repeatedRequest', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '重复请求，请稍后重试', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 12. 公共-演示模式禁止
SET @ORDER_NUM = 12;
DELETE FROM infra_i18n_key WHERE message_key = 'common.common.back.demoDeny';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('公共-演示模式禁止', 'common.common.back.demoDeny', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 12. 公共-演示模式禁止 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'common.common.back.demoDeny' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('公共-演示模式禁止', 'common.common.back.demoDeny', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'demo mode, write operations are prohibited', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 12. 公共-演示模式禁止 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'common.common.back.demoDeny' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('公共-演示模式禁止', 'common.common.back.demoDeny', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '演示模式，禁止写操作', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 13. 公共-未知错误
SET @ORDER_NUM = 13;
DELETE FROM infra_i18n_key WHERE message_key = 'common.common.back.unknown';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('公共-未知错误', 'common.common.back.unknown', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 13. 公共-未知错误 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'common.common.back.unknown' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('公共-未知错误', 'common.common.back.unknown', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'unknown error', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 13. 公共-未知错误 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'common.common.back.unknown' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('公共-未知错误', 'common.common.back.unknown', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '未知错误', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
