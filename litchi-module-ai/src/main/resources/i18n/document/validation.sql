-- =============================================
-- AI Knowledge Document 知识库文档模块 校验消息国际化 SQL
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
-- AI 知识库文档（ai_knowledge_document 表）
-- =============================================

-- 1. AI知识库文档-知识库编号不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledgeDocument.back.knowledgeId.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库文档-知识库编号不能为空', 'ai.knowledgeDocument.back.knowledgeId.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 1. AI知识库文档-知识库编号不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledgeDocument.back.knowledgeId.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库文档-知识库编号不能为空', 'ai.knowledgeDocument.back.knowledgeId.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'ai knowledge document knowledge id cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 1. AI知识库文档-知识库编号不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledgeDocument.back.knowledgeId.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库文档-知识库编号不能为空', 'ai.knowledgeDocument.back.knowledgeId.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'AI知识库文档知识库编号不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. AI知识库文档-文档名称不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledgeDocument.back.name.notBlank';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库文档-文档名称不能为空', 'ai.knowledgeDocument.back.name.notBlank', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. AI知识库文档-文档名称不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledgeDocument.back.name.notBlank' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库文档-文档名称不能为空', 'ai.knowledgeDocument.back.name.notBlank', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'ai knowledge document name cannot be blank', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. AI知识库文档-文档名称不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledgeDocument.back.name.notBlank' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库文档-文档名称不能为空', 'ai.knowledgeDocument.back.name.notBlank', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'AI知识库文档文档名称不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. AI知识库文档-文档URL格式不正确
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledgeDocument.back.url.url';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库文档-文档URL格式不正确', 'ai.knowledgeDocument.back.url.url', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. AI知识库文档-文档URL格式不正确 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledgeDocument.back.url.url' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库文档-文档URL格式不正确', 'ai.knowledgeDocument.back.url.url', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'ai knowledge document url must be a valid url', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. AI知识库文档-文档URL格式不正确 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledgeDocument.back.url.url' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库文档-文档URL格式不正确', 'ai.knowledgeDocument.back.url.url', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'AI知识库文档文档URL格式不正确', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. AI知识库文档-分段的最大Token数不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledgeDocument.back.segmentMaxTokens.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库文档-分段的最大Token数不能为空', 'ai.knowledgeDocument.back.segmentMaxTokens.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. AI知识库文档-分段的最大Token数不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledgeDocument.back.segmentMaxTokens.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库文档-分段的最大Token数不能为空', 'ai.knowledgeDocument.back.segmentMaxTokens.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'ai knowledge document segment max tokens cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. AI知识库文档-分段的最大Token数不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledgeDocument.back.segmentMaxTokens.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库文档-分段的最大Token数不能为空', 'ai.knowledgeDocument.back.segmentMaxTokens.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'AI知识库文档分段的最大Token数不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. AI知识库文档-文档列表不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledgeDocument.back.list.notEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库文档-文档列表不能为空', 'ai.knowledgeDocument.back.list.notEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. AI知识库文档-文档列表不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledgeDocument.back.list.notEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库文档-文档列表不能为空', 'ai.knowledgeDocument.back.list.notEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'ai knowledge document list cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. AI知识库文档-文档列表不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledgeDocument.back.list.notEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库文档-文档列表不能为空', 'ai.knowledgeDocument.back.list.notEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'AI知识库文档文档列表不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 6. AI知识库文档-编号不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledgeDocument.back.id.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库文档-编号不能为空', 'ai.knowledgeDocument.back.id.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 6. AI知识库文档-编号不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledgeDocument.back.id.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库文档-编号不能为空', 'ai.knowledgeDocument.back.id.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'ai knowledge document id cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 6. AI知识库文档-编号不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledgeDocument.back.id.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库文档-编号不能为空', 'ai.knowledgeDocument.back.id.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'AI知识库文档编号不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 7. AI知识库文档-状态不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledgeDocument.back.status.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库文档-状态不能为空', 'ai.knowledgeDocument.back.status.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 7. AI知识库文档-状态不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledgeDocument.back.status.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库文档-状态不能为空', 'ai.knowledgeDocument.back.status.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'ai knowledge document status cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 7. AI知识库文档-状态不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledgeDocument.back.status.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库文档-状态不能为空', 'ai.knowledgeDocument.back.status.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'AI知识库文档状态不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 8. AI知识库文档-状态必须在指定范围
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledgeDocument.back.status.inEnum';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库文档-状态必须在指定范围', 'ai.knowledgeDocument.back.status.inEnum', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 8. AI知识库文档-状态必须在指定范围 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledgeDocument.back.status.inEnum' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库文档-状态必须在指定范围', 'ai.knowledgeDocument.back.status.inEnum', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'ai knowledge document status must be in specified range', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 8. AI知识库文档-状态必须在指定范围 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledgeDocument.back.status.inEnum' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库文档-状态必须在指定范围', 'ai.knowledgeDocument.back.status.inEnum', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'AI知识库文档状态必须在指定范围', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
