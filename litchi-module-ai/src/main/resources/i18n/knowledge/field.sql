-- =============================================
-- AI Knowledge 知识库模块 字段国际化 SQL
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
-- AI 知识库（ai_knowledge 表）
-- =============================================

-- 1. AI知识库-编号
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库-编号', 'ai.knowledge.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库-编号', 'ai.knowledge.field.id', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库-编号', 'ai.knowledge.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. AI知识库-知识库名称
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.field.name';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库-知识库名称', 'ai.knowledge.field.name', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.field.name' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库-知识库名称', 'ai.knowledge.field.name', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'knowledge name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.field.name' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库-知识库名称', 'ai.knowledge.field.name', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '知识库名称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. AI知识库-知识库描述
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.field.description';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库-知识库描述', 'ai.knowledge.field.description', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.field.description' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库-知识库描述', 'ai.knowledge.field.description', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'knowledge description', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.field.description' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库-知识库描述', 'ai.knowledge.field.description', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '知识库描述', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. AI知识库-向量模型编号
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.field.embeddingModelId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库-向量模型编号', 'ai.knowledge.field.embeddingModelId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.field.embeddingModelId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库-向量模型编号', 'ai.knowledge.field.embeddingModelId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'embedding model id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.field.embeddingModelId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库-向量模型编号', 'ai.knowledge.field.embeddingModelId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '向量模型编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. AI知识库-向量模型标识
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.field.embeddingModel';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库-向量模型标识', 'ai.knowledge.field.embeddingModel', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.field.embeddingModel' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库-向量模型标识', 'ai.knowledge.field.embeddingModel', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'embedding model', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.field.embeddingModel' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库-向量模型标识', 'ai.knowledge.field.embeddingModel', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '向量模型标识', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 6. AI知识库-topK
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.field.topK';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库-topK', 'ai.knowledge.field.topK', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.field.topK' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库-topK', 'ai.knowledge.field.topK', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'top k', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.field.topK' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库-topK', 'ai.knowledge.field.topK', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'topK', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 7. AI知识库-相似度阈值
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.field.similarityThreshold';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库-相似度阈值', 'ai.knowledge.field.similarityThreshold', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.field.similarityThreshold' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库-相似度阈值', 'ai.knowledge.field.similarityThreshold', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'similarity threshold', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.field.similarityThreshold' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库-相似度阈值', 'ai.knowledge.field.similarityThreshold', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '相似度阈值', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 8. AI知识库-状态
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.field.status';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库-状态', 'ai.knowledge.field.status', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.field.status' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库-状态', 'ai.knowledge.field.status', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.field.status' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库-状态', 'ai.knowledge.field.status', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 9. AI知识库-创建时间
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库-创建时间', 'ai.knowledge.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库-创建时间', 'ai.knowledge.field.createTime', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库-创建时间', 'ai.knowledge.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '创建时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 10. AI知识库-是否启用
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.field.enabled';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库-是否启用', 'ai.knowledge.field.enabled', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.field.enabled' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库-是否启用', 'ai.knowledge.field.enabled', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'enabled', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.field.enabled' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库-是否启用', 'ai.knowledge.field.enabled', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '是否启用', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
