-- =============================================
-- AI 工作流模块 校验消息国际化 SQL
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
-- AI 工作流新增/修改（AiWorkflowSaveReqVO）
-- =============================================

-- 1. AI工作流-工作流标识不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'ai.workflow.back.code.notEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工作流-工作流标识不能为空', 'ai.workflow.back.code.notEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 1. AI工作流-工作流标识不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.back.code.notEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工作流-工作流标识不能为空', 'ai.workflow.back.code.notEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'ai workflow code cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 1. AI工作流-工作流标识不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.back.code.notEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工作流-工作流标识不能为空', 'ai.workflow.back.code.notEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'AI工作流工作流标识不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. AI工作流-工作流名称不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'ai.workflow.back.name.notBlank';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工作流-工作流名称不能为空', 'ai.workflow.back.name.notBlank', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. AI工作流-工作流名称不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.back.name.notBlank' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工作流-工作流名称不能为空', 'ai.workflow.back.name.notBlank', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'ai workflow name cannot be blank', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. AI工作流-工作流名称不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.back.name.notBlank' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工作流-工作流名称不能为空', 'ai.workflow.back.name.notBlank', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'AI工作流工作流名称不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. AI工作流-工作流模型不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'ai.workflow.back.graph.notBlank';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工作流-工作流模型不能为空', 'ai.workflow.back.graph.notBlank', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. AI工作流-工作流模型不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.back.graph.notBlank' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工作流-工作流模型不能为空', 'ai.workflow.back.graph.notBlank', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'ai workflow graph cannot be blank', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. AI工作流-工作流模型不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.back.graph.notBlank' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工作流-工作流模型不能为空', 'ai.workflow.back.graph.notBlank', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'AI工作流工作流模型不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. AI工作流-状态不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'ai.workflow.back.status.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工作流-状态不能为空', 'ai.workflow.back.status.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. AI工作流-状态不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.back.status.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工作流-状态不能为空', 'ai.workflow.back.status.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'ai workflow status cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. AI工作流-状态不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.back.status.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工作流-状态不能为空', 'ai.workflow.back.status.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'AI工作流状态不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- AI 工作流测试（AiWorkflowTestReqVO）
-- =============================================

-- 5. AI工作流-工作流或模型必须传递一个
DELETE FROM infra_i18n_key WHERE message_key = 'ai.workflow.back.assertTrue';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工作流-工作流或模型必须传递一个', 'ai.workflow.back.assertTrue', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. AI工作流-工作流或模型必须传递一个 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.back.assertTrue' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工作流-工作流或模型必须传递一个', 'ai.workflow.back.assertTrue', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'ai workflow or graph must be provided at least one', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. AI工作流-工作流或模型必须传递一个 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.back.assertTrue' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工作流-工作流或模型必须传递一个', 'ai.workflow.back.assertTrue', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'AI工作流工作流或模型必须传递一个', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
