-- =============================================
-- AI Knowledge Segment 知识库分段模块 校验消息国际化 SQL
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
-- AI 知识库分段（ai_knowledge_segment 表）
-- =============================================

-- 1. AI知识库分段-切片内容不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledgeSegment.back.content.notEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库分段-切片内容不能为空', 'ai.knowledgeSegment.back.content.notEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 1. AI知识库分段-切片内容不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledgeSegment.back.content.notEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库分段-切片内容不能为空', 'ai.knowledgeSegment.back.content.notEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'ai knowledge segment content cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 1. AI知识库分段-切片内容不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledgeSegment.back.content.notEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库分段-切片内容不能为空', 'ai.knowledgeSegment.back.content.notEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'AI知识库分段切片内容不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. AI知识库分段-知识库编号不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledgeSegment.back.knowledgeId.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库分段-知识库编号不能为空', 'ai.knowledgeSegment.back.knowledgeId.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. AI知识库分段-知识库编号不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledgeSegment.back.knowledgeId.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库分段-知识库编号不能为空', 'ai.knowledgeSegment.back.knowledgeId.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'ai knowledge segment knowledge id cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. AI知识库分段-知识库编号不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledgeSegment.back.knowledgeId.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库分段-知识库编号不能为空', 'ai.knowledgeSegment.back.knowledgeId.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'AI知识库分段知识库编号不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. AI知识库分段-是否启用不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledgeSegment.back.status.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库分段-是否启用不能为空', 'ai.knowledgeSegment.back.status.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. AI知识库分段-是否启用不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledgeSegment.back.status.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库分段-是否启用不能为空', 'ai.knowledgeSegment.back.status.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'ai knowledge segment status cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. AI知识库分段-是否启用不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledgeSegment.back.status.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库分段-是否启用不能为空', 'ai.knowledgeSegment.back.status.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'AI知识库分段是否启用不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. AI知识库分段-是否启用必须在指定范围
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledgeSegment.back.status.inEnum';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库分段-是否启用必须在指定范围', 'ai.knowledgeSegment.back.status.inEnum', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. AI知识库分段-是否启用必须在指定范围 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledgeSegment.back.status.inEnum' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库分段-是否启用必须在指定范围', 'ai.knowledgeSegment.back.status.inEnum', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'ai knowledge segment status must be in specified range', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. AI知识库分段-是否启用必须在指定范围 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledgeSegment.back.status.inEnum' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库分段-是否启用必须在指定范围', 'ai.knowledgeSegment.back.status.inEnum', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'AI知识库分段是否启用必须在指定范围', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
