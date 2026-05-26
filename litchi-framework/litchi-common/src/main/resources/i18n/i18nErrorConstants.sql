-- =============================================
-- common 模块校验异常错误码国际化 SQL
-- 生成时间：2026-05-26
-- 规范版本：v1.2
-- =============================================

-- ---------------------------------------------
-- 变量定义（运行时可覆盖）
-- ---------------------------------------------
SET
@IS_SYSTEM = 1;
SET
@USE_TYPE_EXCEPTION = 5;
SET
@MODULE_TYPE = 'common';
SET
@LOCALE_TARGET_BACKEND = 1;
SET
@LOCALE_EN = 'en-US';
SET
@LOCALE_ZH_CN = 'zh-CN';
SET
@CREATOR = '0';
SET
@REMARK = 'ai auto generate';

-- =============================================
-- 请求参数校验
-- =============================================

-- 1. 请求参数无效
SET
@ORDER_NUM = 1;
DELETE
FROM infra_i18n_key
WHERE message_key = 'validation.request.parameter.invalid';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator,
                            create_time, updater, update_time, deleted)
VALUES ('请求参数无效', 'validation.request.parameter.invalid', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION,
        @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE
FROM infra_i18n_message
WHERE message_key = 'validation.request.parameter.invalid'
  AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type,
                                message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请求参数无效', 'validation.request.parameter.invalid', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM,
        @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'request parameter is invalid', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(),
        0);

DELETE
FROM infra_i18n_message
WHERE message_key = 'validation.request.parameter.invalid'
  AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type,
                                message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请求参数无效', 'validation.request.parameter.invalid', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM,
        @MODULE_TYPE, @USE_TYPE_EXCEPTION, '请求参数无效', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. 请求参数类型错误
SET
@ORDER_NUM = 2;
DELETE
FROM infra_i18n_key
WHERE message_key = 'validation.request.parameter.type.error';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator,
                            create_time, updater, update_time, deleted)
VALUES ('请求参数类型错误', 'validation.request.parameter.type.error', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION,
        @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE
FROM infra_i18n_message
WHERE message_key = 'validation.request.parameter.type.error'
  AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type,
                                message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请求参数类型错误', 'validation.request.parameter.type.error', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM,
        @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'request parameter type error', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(),
        0);

DELETE
FROM infra_i18n_message
WHERE message_key = 'validation.request.parameter.type.error'
  AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type,
                                message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请求参数类型错误', 'validation.request.parameter.type.error', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND,
        @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '请求参数类型错误', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(),
        0);

-- 3. 请求参数缺失
SET
@ORDER_NUM = 3;
DELETE
FROM infra_i18n_key
WHERE message_key = 'validation.request.parameter.missing';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator,
                            create_time, updater, update_time, deleted)
VALUES ('请求参数缺失', 'validation.request.parameter.missing', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION,
        @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE
FROM infra_i18n_message
WHERE message_key = 'validation.request.parameter.missing'
  AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type,
                                message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请求参数缺失', 'validation.request.parameter.missing', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM,
        @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'request parameter is missing', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(),
        0);

DELETE
FROM infra_i18n_message
WHERE message_key = 'validation.request.parameter.missing'
  AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type,
                                message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请求参数缺失', 'validation.request.parameter.missing', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM,
        @MODULE_TYPE, @USE_TYPE_EXCEPTION, '请求参数缺失', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. 请求方法不支持
SET
@ORDER_NUM = 4;
DELETE
FROM infra_i18n_key
WHERE message_key = 'validation.request.method.not.supported';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator,
                            create_time, updater, update_time, deleted)
VALUES ('请求方法不支持', 'validation.request.method.not.supported', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION,
        @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE
FROM infra_i18n_message
WHERE message_key = 'validation.request.method.not.supported'
  AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type,
                                message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请求方法不支持', 'validation.request.method.not.supported', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM,
        @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'request method not supported', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(),
        0);

DELETE
FROM infra_i18n_message
WHERE message_key = 'validation.request.method.not.supported'
  AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type,
                                message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请求方法不支持', 'validation.request.method.not.supported', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM,
        @MODULE_TYPE, @USE_TYPE_EXCEPTION, '请求方法不支持', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. 请求地址不存在
SET
@ORDER_NUM = 5;
DELETE
FROM infra_i18n_key
WHERE message_key = 'validation.request.address.not.found';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator,
                            create_time, updater, update_time, deleted)
VALUES ('请求地址不存在', 'validation.request.address.not.found', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION,
        @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE
FROM infra_i18n_message
WHERE message_key = 'validation.request.address.not.found'
  AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type,
                                message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请求地址不存在', 'validation.request.address.not.found', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM,
        @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'request address not found', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE
FROM infra_i18n_message
WHERE message_key = 'validation.request.address.not.found'
  AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type,
                                message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请求地址不存在', 'validation.request.address.not.found', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM,
        @MODULE_TYPE, @USE_TYPE_EXCEPTION, '请求地址不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
