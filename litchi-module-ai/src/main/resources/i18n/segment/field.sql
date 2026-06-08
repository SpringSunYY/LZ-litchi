-- =============================================
-- AI Knowledge Segment 知识库分段模块 字段国际化 SQL
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
-- AI 知识库分段（ai_knowledge_segment 表）
-- =============================================

-- 1. AI知识库分段-编号
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledgeSegment.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库分段-编号', 'ai.knowledgeSegment.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledgeSegment.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库分段-编号', 'ai.knowledgeSegment.field.id', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledgeSegment.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库分段-编号', 'ai.knowledgeSegment.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. AI知识库分段-知识库编号
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledgeSegment.field.knowledgeId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库分段-知识库编号', 'ai.knowledgeSegment.field.knowledgeId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledgeSegment.field.knowledgeId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库分段-知识库编号', 'ai.knowledgeSegment.field.knowledgeId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'knowledge id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledgeSegment.field.knowledgeId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库分段-知识库编号', 'ai.knowledgeSegment.field.knowledgeId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '知识库编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. AI知识库分段-文档编号
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledgeSegment.field.documentId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库分段-文档编号', 'ai.knowledgeSegment.field.documentId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledgeSegment.field.documentId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库分段-文档编号', 'ai.knowledgeSegment.field.documentId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'document id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledgeSegment.field.documentId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库分段-文档编号', 'ai.knowledgeSegment.field.documentId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '文档编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. AI知识库分段-向量库编号
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledgeSegment.field.vectorId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库分段-向量库编号', 'ai.knowledgeSegment.field.vectorId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledgeSegment.field.vectorId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库分段-向量库编号', 'ai.knowledgeSegment.field.vectorId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'vector id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledgeSegment.field.vectorId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库分段-向量库编号', 'ai.knowledgeSegment.field.vectorId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '向量库编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. AI知识库分段-切片内容
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledgeSegment.field.content';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库分段-切片内容', 'ai.knowledgeSegment.field.content', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledgeSegment.field.content' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库分段-切片内容', 'ai.knowledgeSegment.field.content', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'segment content', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledgeSegment.field.content' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库分段-切片内容', 'ai.knowledgeSegment.field.content', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '切片内容', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 6. AI知识库分段-切片内容长度
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledgeSegment.field.contentLength';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库分段-切片内容长度', 'ai.knowledgeSegment.field.contentLength', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledgeSegment.field.contentLength' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库分段-切片内容长度', 'ai.knowledgeSegment.field.contentLength', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'content length', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledgeSegment.field.contentLength' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库分段-切片内容长度', 'ai.knowledgeSegment.field.contentLength', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '切片内容长度', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 7. AI知识库分段-token数量
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledgeSegment.field.tokens';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库分段-token数量', 'ai.knowledgeSegment.field.tokens', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledgeSegment.field.tokens' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库分段-token数量', 'ai.knowledgeSegment.field.tokens', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'tokens', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledgeSegment.field.tokens' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库分段-token数量', 'ai.knowledgeSegment.field.tokens', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'token数量', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 8. AI知识库分段-召回次数
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledgeSegment.field.retrievalCount';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库分段-召回次数', 'ai.knowledgeSegment.field.retrievalCount', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledgeSegment.field.retrievalCount' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库分段-召回次数', 'ai.knowledgeSegment.field.retrievalCount', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'retrieval count', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledgeSegment.field.retrievalCount' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库分段-召回次数', 'ai.knowledgeSegment.field.retrievalCount', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '召回次数', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 9. AI知识库分段-状态
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledgeSegment.field.status';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库分段-状态', 'ai.knowledgeSegment.field.status', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledgeSegment.field.status' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库分段-状态', 'ai.knowledgeSegment.field.status', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledgeSegment.field.status' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库分段-状态', 'ai.knowledgeSegment.field.status', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 10. AI知识库分段-创建时间
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledgeSegment.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库分段-创建时间', 'ai.knowledgeSegment.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledgeSegment.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库分段-创建时间', 'ai.knowledgeSegment.field.createTime', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledgeSegment.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库分段-创建时间', 'ai.knowledgeSegment.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '创建时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 11. AI知识库分段-是否启用
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledgeSegment.field.enabled';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库分段-是否启用', 'ai.knowledgeSegment.field.enabled', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledgeSegment.field.enabled' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库分段-是否启用', 'ai.knowledgeSegment.field.enabled', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'enabled', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledgeSegment.field.enabled' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库分段-是否启用', 'ai.knowledgeSegment.field.enabled', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '是否启用', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 12. AI知识库分段-分段内容关键字
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledgeSegment.field.contentKeyword';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库分段-分段内容关键字', 'ai.knowledgeSegment.field.contentKeyword', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledgeSegment.field.contentKeyword' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库分段-分段内容关键字', 'ai.knowledgeSegment.field.contentKeyword', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'content keyword', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledgeSegment.field.contentKeyword' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库分段-分段内容关键字', 'ai.knowledgeSegment.field.contentKeyword', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '分段内容关键字', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 13. AI知识库分段-最大返回数量
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledgeSegment.field.topK';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库分段-最大返回数量', 'ai.knowledgeSegment.field.topK', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledgeSegment.field.topK' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库分段-最大返回数量', 'ai.knowledgeSegment.field.topK', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'top k', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledgeSegment.field.topK' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库分段-最大返回数量', 'ai.knowledgeSegment.field.topK', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '最大返回数量', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 14. AI知识库分段-相似度阈值
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledgeSegment.field.similarityThreshold';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库分段-相似度阈值', 'ai.knowledgeSegment.field.similarityThreshold', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledgeSegment.field.similarityThreshold' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库分段-相似度阈值', 'ai.knowledgeSegment.field.similarityThreshold', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'similarity threshold', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledgeSegment.field.similarityThreshold' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库分段-相似度阈值', 'ai.knowledgeSegment.field.similarityThreshold', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '相似度阈值', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 15. AI知识库分段-文档名称
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledgeSegment.field.documentName';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库分段-文档名称', 'ai.knowledgeSegment.field.documentName', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledgeSegment.field.documentName' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库分段-文档名称', 'ai.knowledgeSegment.field.documentName', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'document name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledgeSegment.field.documentName' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库分段-文档名称', 'ai.knowledgeSegment.field.documentName', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '文档名称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 16. AI知识库分段-相似度分数
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledgeSegment.field.score';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库分段-相似度分数', 'ai.knowledgeSegment.field.score', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledgeSegment.field.score' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库分段-相似度分数', 'ai.knowledgeSegment.field.score', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'similarity score', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledgeSegment.field.score' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库分段-相似度分数', 'ai.knowledgeSegment.field.score', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '相似度分数', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 17. AI知识库分段-总段落数量
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledgeSegment.field.count';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库分段-总段落数量', 'ai.knowledgeSegment.field.count', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledgeSegment.field.count' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库分段-总段落数量', 'ai.knowledgeSegment.field.count', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'total count', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledgeSegment.field.count' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库分段-总段落数量', 'ai.knowledgeSegment.field.count', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '总段落数量', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 18. AI知识库分段-已向量化段落数量
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledgeSegment.field.embeddingCount';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库分段-已向量化段落数量', 'ai.knowledgeSegment.field.embeddingCount', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledgeSegment.field.embeddingCount' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库分段-已向量化段落数量', 'ai.knowledgeSegment.field.embeddingCount', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'embedded count', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledgeSegment.field.embeddingCount' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库分段-已向量化段落数量', 'ai.knowledgeSegment.field.embeddingCount', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '已向量化段落数量', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 19. AI知识库分段-分段状态
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledgeSegment.field.segmentStatus';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库分段-分段状态', 'ai.knowledgeSegment.field.segmentStatus', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledgeSegment.field.segmentStatus' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库分段-分段状态', 'ai.knowledgeSegment.field.segmentStatus', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'segment status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledgeSegment.field.segmentStatus' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库分段-分段状态', 'ai.knowledgeSegment.field.segmentStatus', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '分段状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
