-- =============================================
-- AI 思维导图模块 字段国际化 SQL
-- 生成时间：2026-05-30
-- 规范版本：v6.1
-- =============================================
-- 说明：field.sql 以 DO + VO 字段的并集为准
--       DO 继承父类后，字段是 DO 本身 + 父类字段
--       VO 可能还有 DO 没有的字段
-- =============================================

-- ---------------------------------------------
-- 变量定义（必须全部定义，INSERT 中必须全部使用变量）
-- ---------------------------------------------
SET @IS_SYSTEM = 0;
SET @USE_TYPE_FILED = 3;
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

-- 1. AI思维导图-编号
DELETE FROM infra_i18n_key WHERE message_key = 'ai.mindMap.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI思维导图-编号', 'ai.mindMap.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 1. AI思维导图-编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.mindMap.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI思维导图-编号', 'ai.mindMap.field.id', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 1. AI思维导图-编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.mindMap.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI思维导图-编号', 'ai.mindMap.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. AI思维导图-用户编号
DELETE FROM infra_i18n_key WHERE message_key = 'ai.mindMap.field.userId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI思维导图-用户编号', 'ai.mindMap.field.userId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. AI思维导图-用户编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.mindMap.field.userId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI思维导图-用户编号', 'ai.mindMap.field.userId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'user id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. AI思维导图-用户编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.mindMap.field.userId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI思维导图-用户编号', 'ai.mindMap.field.userId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '用户编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. AI思维导图-平台
DELETE FROM infra_i18n_key WHERE message_key = 'ai.mindMap.field.platform';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI思维导图-平台', 'ai.mindMap.field.platform', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. AI思维导图-平台 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.mindMap.field.platform' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI思维导图-平台', 'ai.mindMap.field.platform', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'platform', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. AI思维导图-平台 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.mindMap.field.platform' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI思维导图-平台', 'ai.mindMap.field.platform', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '平台', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. AI思维导图-模型编号
DELETE FROM infra_i18n_key WHERE message_key = 'ai.mindMap.field.modelId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI思维导图-模型编号', 'ai.mindMap.field.modelId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. AI思维导图-模型编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.mindMap.field.modelId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI思维导图-模型编号', 'ai.mindMap.field.modelId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'model id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. AI思维导图-模型编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.mindMap.field.modelId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI思维导图-模型编号', 'ai.mindMap.field.modelId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '模型编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. AI思维导图-模型
DELETE FROM infra_i18n_key WHERE message_key = 'ai.mindMap.field.model';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI思维导图-模型', 'ai.mindMap.field.model', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. AI思维导图-模型 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.mindMap.field.model' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI思维导图-模型', 'ai.mindMap.field.model', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'model', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. AI思维导图-模型 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.mindMap.field.model' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI思维导图-模型', 'ai.mindMap.field.model', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '模型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 6. AI思维导图-思维导图内容提示
DELETE FROM infra_i18n_key WHERE message_key = 'ai.mindMap.field.prompt';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI思维导图-思维导图内容提示', 'ai.mindMap.field.prompt', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 6. AI思维导图-思维导图内容提示 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.mindMap.field.prompt' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI思维导图-思维导图内容提示', 'ai.mindMap.field.prompt', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'prompt', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 6. AI思维导图-思维导图内容提示 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.mindMap.field.prompt' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI思维导图-思维导图内容提示', 'ai.mindMap.field.prompt', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '思维导图内容提示', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 7. AI思维导图-生成的思维导图内容
DELETE FROM infra_i18n_key WHERE message_key = 'ai.mindMap.field.generatedContent';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI思维导图-生成的思维导图内容', 'ai.mindMap.field.generatedContent', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 7. AI思维导图-生成的思维导图内容 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.mindMap.field.generatedContent' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI思维导图-生成的思维导图内容', 'ai.mindMap.field.generatedContent', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'generated content', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 7. AI思维导图-生成的思维导图内容 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.mindMap.field.generatedContent' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI思维导图-生成的思维导图内容', 'ai.mindMap.field.generatedContent', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '生成的思维导图内容', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 8. AI思维导图-错误信息
DELETE FROM infra_i18n_key WHERE message_key = 'ai.mindMap.field.errorMessage';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI思维导图-错误信息', 'ai.mindMap.field.errorMessage', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 8. AI思维导图-错误信息 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.mindMap.field.errorMessage' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI思维导图-错误信息', 'ai.mindMap.field.errorMessage', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'error message', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 8. AI思维导图-错误信息 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.mindMap.field.errorMessage' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI思维导图-错误信息', 'ai.mindMap.field.errorMessage', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '错误信息', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 9. AI思维导图-创建时间
DELETE FROM infra_i18n_key WHERE message_key = 'ai.mindMap.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI思维导图-创建时间', 'ai.mindMap.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 9. AI思维导图-创建时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.mindMap.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI思维导图-创建时间', 'ai.mindMap.field.createTime', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 9. AI思维导图-创建时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.mindMap.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI思维导图-创建时间', 'ai.mindMap.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '创建时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
