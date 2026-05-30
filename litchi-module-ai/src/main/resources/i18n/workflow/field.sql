-- =============================================
-- AI 工作流模块 字段国际化 SQL
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
SET @USE_TYPE_FORM = 2;
SET @MODULE_TYPE = 'ai';
SET @LOCALE_TARGET_BACKEND = 1;
SET @LOCALE_EN = 'en-US';
SET @LOCALE_ZH_CN = 'zh-CN';
SET @CREATOR = '0';
SET @REMARK = 'ai auto generate';
SET @ORDER_NUM = 5;

-- =============================================
-- AI 工作流（ai_workflow 表）
-- =============================================

-- 1. AI工作流-编号
DELETE FROM infra_i18n_key WHERE message_key = 'ai.workflow.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工作流-编号', 'ai.workflow.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 1. AI工作流-编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工作流-编号', 'ai.workflow.field.id', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 1. AI工作流-编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工作流-编号', 'ai.workflow.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. AI工作流-工作流名称
DELETE FROM infra_i18n_key WHERE message_key = 'ai.workflow.field.name';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工作流-工作流名称', 'ai.workflow.field.name', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. AI工作流-工作流名称 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.field.name' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工作流-工作流名称', 'ai.workflow.field.name', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'workflow name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. AI工作流-工作流名称 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.field.name' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工作流-工作流名称', 'ai.workflow.field.name', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '工作流名称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. AI工作流-工作流标识
DELETE FROM infra_i18n_key WHERE message_key = 'ai.workflow.field.code';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工作流-工作流标识', 'ai.workflow.field.code', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. AI工作流-工作流标识 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.field.code' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工作流-工作流标识', 'ai.workflow.field.code', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'workflow code', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. AI工作流-工作流标识 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.field.code' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工作流-工作流标识', 'ai.workflow.field.code', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '工作流标识', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. AI工作流-工作流模型JSON数据
DELETE FROM infra_i18n_key WHERE message_key = 'ai.workflow.field.graph';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工作流-工作流模型JSON数据', 'ai.workflow.field.graph', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. AI工作流-工作流模型JSON数据 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.field.graph' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工作流-工作流模型JSON数据', 'ai.workflow.field.graph', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'workflow graph json', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. AI工作流-工作流模型JSON数据 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.field.graph' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工作流-工作流模型JSON数据', 'ai.workflow.field.graph', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '工作流模型JSON数据', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. AI工作流-备注
DELETE FROM infra_i18n_key WHERE message_key = 'ai.workflow.field.remark';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工作流-备注', 'ai.workflow.field.remark', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. AI工作流-备注 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.field.remark' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工作流-备注', 'ai.workflow.field.remark', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'remark', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. AI工作流-备注 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.field.remark' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工作流-备注', 'ai.workflow.field.remark', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '备注', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 6. AI工作流-状态
DELETE FROM infra_i18n_key WHERE message_key = 'ai.workflow.field.status';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工作流-状态', 'ai.workflow.field.status', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 6. AI工作流-状态 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.field.status' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工作流-状态', 'ai.workflow.field.status', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 6. AI工作流-状态 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.field.status' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工作流-状态', 'ai.workflow.field.status', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 7. AI工作流-创建时间
DELETE FROM infra_i18n_key WHERE message_key = 'ai.workflow.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工作流-创建时间', 'ai.workflow.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 7. AI工作流-创建时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工作流-创建时间', 'ai.workflow.field.createTime', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 7. AI工作流-创建时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工作流-创建时间', 'ai.workflow.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '创建时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- AI 工作流测试（AiWorkflowTestReqVO 扩展字段）
-- =============================================

-- 8. AI工作流-工作流编号
DELETE FROM infra_i18n_key WHERE message_key = 'ai.workflow.field.testId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工作流-工作流编号', 'ai.workflow.field.testId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 8. AI工作流-工作流编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.field.testId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工作流-工作流编号', 'ai.workflow.field.testId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'workflow id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 8. AI工作流-工作流编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.field.testId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工作流-工作流编号', 'ai.workflow.field.testId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '工作流编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 9. AI工作流-工作流模型
DELETE FROM infra_i18n_key WHERE message_key = 'ai.workflow.field.testGraph';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工作流-工作流模型', 'ai.workflow.field.testGraph', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 9. AI工作流-工作流模型 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.field.testGraph' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工作流-工作流模型', 'ai.workflow.field.testGraph', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'workflow graph', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 9. AI工作流-工作流模型 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.field.testGraph' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工作流-工作流模型', 'ai.workflow.field.testGraph', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '工作流模型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 10. AI工作流-参数
DELETE FROM infra_i18n_key WHERE message_key = 'ai.workflow.field.params';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工作流-参数', 'ai.workflow.field.params', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 10. AI工作流-参数 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.field.params' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工作流-参数', 'ai.workflow.field.params', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'params', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 10. AI工作流-参数 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.field.params' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工作流-参数', 'ai.workflow.field.params', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '参数', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
