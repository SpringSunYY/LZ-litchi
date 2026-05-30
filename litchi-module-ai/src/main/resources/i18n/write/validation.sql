-- =============================================
-- AI Write 写作模块 校验消息国际化 SQL
-- 生成时间：2026-05-30
-- 规范版本：v6.1
-- =============================================

-- ---------------------------------------------
-- 变量定义（必须全部定义，INSERT 中必须全部使用变量）
-- ---------------------------------------------
SET @IS_SYSTEM = 0;
SET @USE_TYPE_EXCEPTION = 5;
SET @MODULE_TYPE = 'ai';
SET @LOCALE_TARGET_BACKEND = 1;
SET @LOCALE_EN = 'en-US';
SET @LOCALE_ZH_CN = 'zh-CN';
SET @CREATOR = '0';
SET @REMARK = 'ai auto generate';
SET @ORDER_NUM = 5;

-- =============================================
-- AI 写作（ai_write 表）
-- =============================================

-- 1. AI写作-写作类型枚举值不在范围内
DELETE FROM infra_i18n_key WHERE message_key = 'ai.aiWrite.back.type.inEnum';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI写作-写作类型枚举值不在范围内', 'ai.aiWrite.back.type.inEnum', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 1. AI写作-写作类型枚举值不在范围内 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.aiWrite.back.type.inEnum' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI写作-写作类型枚举值不在范围内', 'ai.aiWrite.back.type.inEnum', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'ai write type must be in specified range', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 1. AI写作-写作类型枚举值不在范围内 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.aiWrite.back.type.inEnum' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI写作-写作类型枚举值不在范围内', 'ai.aiWrite.back.type.inEnum', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'AI写作写作类型枚举值不在范围内', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. AI写作-长度不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'ai.aiWrite.back.length.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI写作-长度不能为空', 'ai.aiWrite.back.length.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. AI写作-长度不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.aiWrite.back.length.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI写作-长度不能为空', 'ai.aiWrite.back.length.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'ai write length cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. AI写作-长度不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.aiWrite.back.length.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI写作-长度不能为空', 'ai.aiWrite.back.length.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'AI写作长度不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. AI写作-格式不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'ai.aiWrite.back.format.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI写作-格式不能为空', 'ai.aiWrite.back.format.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. AI写作-格式不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.aiWrite.back.format.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI写作-格式不能为空', 'ai.aiWrite.back.format.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'ai write format cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. AI写作-格式不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.aiWrite.back.format.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI写作-格式不能为空', 'ai.aiWrite.back.format.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'AI写作格式不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. AI写作-语气不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'ai.aiWrite.back.tone.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI写作-语气不能为空', 'ai.aiWrite.back.tone.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. AI写作-语气不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.aiWrite.back.tone.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI写作-语气不能为空', 'ai.aiWrite.back.tone.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'ai write tone cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. AI写作-语气不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.aiWrite.back.tone.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI写作-语气不能为空', 'ai.aiWrite.back.tone.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'AI写作语气不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. AI写作-语言不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'ai.aiWrite.back.language.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI写作-语言不能为空', 'ai.aiWrite.back.language.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. AI写作-语言不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.aiWrite.back.language.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI写作-语言不能为空', 'ai.aiWrite.back.language.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'ai write language cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. AI写作-语言不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.aiWrite.back.language.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI写作-语言不能为空', 'ai.aiWrite.back.language.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'AI写作语言不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
