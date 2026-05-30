-- =============================================
-- AI 思维导图模块 校验消息国际化 SQL
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
-- AI 思维导图（ai_mind_map 表）
-- =============================================

-- 1. AI思维导图-思维导图内容提示不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'ai.mindMap.back.prompt.notBlank';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI思维导图-思维导图内容提示不能为空', 'ai.mindMap.back.prompt.notBlank', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 1. AI思维导图-思维导图内容提示不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.mindMap.back.prompt.notBlank' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI思维导图-思维导图内容提示不能为空', 'ai.mindMap.back.prompt.notBlank', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'ai mind map prompt cannot be blank', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 1. AI思维导图-思维导图内容提示不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.mindMap.back.prompt.notBlank' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI思维导图-思维导图内容提示不能为空', 'ai.mindMap.back.prompt.notBlank', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'AI思维导图思维导图内容提示不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
