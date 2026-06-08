-- =============================================
-- AI Model 模型模块 字段国际化 SQL
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
-- AI 模型（ai_model 表）
-- =============================================

-- 1. AI模型-编号
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI模型-编号', 'ai.model.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI模型-编号', 'ai.model.field.id', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI模型-编号', 'ai.model.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. AI模型-API秘钥编号
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.field.keyId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI模型-API秘钥编号', 'ai.model.field.keyId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.field.keyId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI模型-API秘钥编号', 'ai.model.field.keyId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'api secret key id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.field.keyId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI模型-API秘钥编号', 'ai.model.field.keyId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'API秘钥编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. AI模型-模型名称
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.field.name';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI模型-模型名称', 'ai.model.field.name', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.field.name' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI模型-模型名称', 'ai.model.field.name', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'model name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.field.name' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI模型-模型名称', 'ai.model.field.name', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '模型名称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. AI模型-模型标志
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.field.model';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI模型-模型标志', 'ai.model.field.model', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.field.model' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI模型-模型标志', 'ai.model.field.model', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'model', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.field.model' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI模型-模型标志', 'ai.model.field.model', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '模型标志', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. AI模型-平台
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.field.platform';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI模型-平台', 'ai.model.field.platform', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.field.platform' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI模型-平台', 'ai.model.field.platform', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'platform', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.field.platform' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI模型-平台', 'ai.model.field.platform', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '平台', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 6. AI模型-类型
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.field.type';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI模型-类型', 'ai.model.field.type', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.field.type' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI模型-类型', 'ai.model.field.type', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'type', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.field.type' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI模型-类型', 'ai.model.field.type', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '类型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 7. AI模型-排序值
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.field.sort';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI模型-排序值', 'ai.model.field.sort', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.field.sort' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI模型-排序值', 'ai.model.field.sort', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'sort', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.field.sort' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI模型-排序值', 'ai.model.field.sort', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '排序值', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 8. AI模型-状态
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.field.status';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI模型-状态', 'ai.model.field.status', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.field.status' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI模型-状态', 'ai.model.field.status', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.field.status' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI模型-状态', 'ai.model.field.status', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 9. AI模型-温度参数
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.field.temperature';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI模型-温度参数', 'ai.model.field.temperature', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.field.temperature' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI模型-温度参数', 'ai.model.field.temperature', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'temperature', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.field.temperature' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI模型-温度参数', 'ai.model.field.temperature', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '温度参数', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 10. AI模型-单条回复的最大Token数量
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.field.maxTokens';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI模型-单条回复的最大Token数量', 'ai.model.field.maxTokens', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.field.maxTokens' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI模型-单条回复的最大Token数量', 'ai.model.field.maxTokens', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'max tokens', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.field.maxTokens' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI模型-单条回复的最大Token数量', 'ai.model.field.maxTokens', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '单条回复的最大Token数量', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 11. AI模型-上下文的最大Message数量
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.field.maxContexts';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI模型-上下文的最大Message数量', 'ai.model.field.maxContexts', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.field.maxContexts' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI模型-上下文的最大Message数量', 'ai.model.field.maxContexts', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'max contexts', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.field.maxContexts' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI模型-上下文的最大Message数量', 'ai.model.field.maxContexts', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '上下文的最大Message数量', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 12. AI模型-创建时间
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI模型-创建时间', 'ai.model.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI模型-创建时间', 'ai.model.field.createTime', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI模型-创建时间', 'ai.model.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '创建时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 13. AI模型-最后更新时间
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.field.updateTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI模型-最后更新时间', 'ai.model.field.updateTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.field.updateTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI模型-最后更新时间', 'ai.model.field.updateTime', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'update time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.field.updateTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI模型-最后更新时间', 'ai.model.field.updateTime', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '最后更新时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 14. AI模型-创建者
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.field.creator';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI模型-创建者', 'ai.model.field.creator', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.field.creator' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI模型-创建者', 'ai.model.field.creator', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'creator', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.field.creator' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI模型-创建者', 'ai.model.field.creator', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '创建者', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 15. AI模型-更新者
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.field.updater';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI模型-更新者', 'ai.model.field.updater', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.field.updater' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI模型-更新者', 'ai.model.field.updater', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'updater', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.field.updater' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI模型-更新者', 'ai.model.field.updater', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '更新者', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 16. AI模型-是否删除
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.field.deleted';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI模型-是否删除', 'ai.model.field.deleted', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.field.deleted' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI模型-是否删除', 'ai.model.field.deleted', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'deleted', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.field.deleted' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI模型-是否删除', 'ai.model.field.deleted', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '是否删除', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- AI 聊天角色（ai_chat_role 表）
-- =============================================

-- 17. AI聊天角色-编号
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chatRole.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-编号', 'ai.chatRole.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.chatRole.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-编号', 'ai.chatRole.field.id', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.chatRole.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-编号', 'ai.chatRole.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 18. AI聊天角色-角色名称
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chatRole.field.name';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-角色名称', 'ai.chatRole.field.name', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.chatRole.field.name' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-角色名称', 'ai.chatRole.field.name', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'role name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.chatRole.field.name' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-角色名称', 'ai.chatRole.field.name', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '角色名称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 19. AI聊天角色-角色头像
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chatRole.field.avatar';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-角色头像', 'ai.chatRole.field.avatar', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.chatRole.field.avatar' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-角色头像', 'ai.chatRole.field.avatar', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'role avatar', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.chatRole.field.avatar' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-角色头像', 'ai.chatRole.field.avatar', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '角色头像', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 20. AI聊天角色-角色分类
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chatRole.field.category';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-角色分类', 'ai.chatRole.field.category', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.chatRole.field.category' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-角色分类', 'ai.chatRole.field.category', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'category', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.chatRole.field.category' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-角色分类', 'ai.chatRole.field.category', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '角色分类', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 21. AI聊天角色-角色描述
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chatRole.field.description';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-角色描述', 'ai.chatRole.field.description', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.chatRole.field.description' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-角色描述', 'ai.chatRole.field.description', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'description', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.chatRole.field.description' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-角色描述', 'ai.chatRole.field.description', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '角色描述', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 22. AI聊天角色-角色设定
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chatRole.field.systemMessage';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-角色设定', 'ai.chatRole.field.systemMessage', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.chatRole.field.systemMessage' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-角色设定', 'ai.chatRole.field.systemMessage', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'system message', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.chatRole.field.systemMessage' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-角色设定', 'ai.chatRole.field.systemMessage', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '角色设定', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 23. AI聊天角色-用户编号
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chatRole.field.userId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-用户编号', 'ai.chatRole.field.userId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.chatRole.field.userId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-用户编号', 'ai.chatRole.field.userId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'user id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.chatRole.field.userId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-用户编号', 'ai.chatRole.field.userId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '用户编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 24. AI聊天角色-模型编号
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chatRole.field.modelId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-模型编号', 'ai.chatRole.field.modelId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.chatRole.field.modelId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-模型编号', 'ai.chatRole.field.modelId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'model id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.chatRole.field.modelId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-模型编号', 'ai.chatRole.field.modelId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '模型编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 25. AI聊天角色-引用的知识库编号列表
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chatRole.field.knowledgeIds';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-引用的知识库编号列表', 'ai.chatRole.field.knowledgeIds', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.chatRole.field.knowledgeIds' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-引用的知识库编号列表', 'ai.chatRole.field.knowledgeIds', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'knowledge ids', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.chatRole.field.knowledgeIds' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-引用的知识库编号列表', 'ai.chatRole.field.knowledgeIds', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '引用的知识库编号列表', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 26. AI聊天角色-引用的工具编号列表
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chatRole.field.toolIds';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-引用的工具编号列表', 'ai.chatRole.field.toolIds', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.chatRole.field.toolIds' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-引用的工具编号列表', 'ai.chatRole.field.toolIds', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'tool ids', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.chatRole.field.toolIds' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-引用的工具编号列表', 'ai.chatRole.field.toolIds', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '引用的工具编号列表', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 27. AI聊天角色-是否公开
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chatRole.field.publicStatus';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-是否公开', 'ai.chatRole.field.publicStatus', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.chatRole.field.publicStatus' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-是否公开', 'ai.chatRole.field.publicStatus', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'public status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.chatRole.field.publicStatus' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-是否公开', 'ai.chatRole.field.publicStatus', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '是否公开', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 28. AI聊天角色-排序值
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chatRole.field.sort';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-排序值', 'ai.chatRole.field.sort', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.chatRole.field.sort' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-排序值', 'ai.chatRole.field.sort', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'sort', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.chatRole.field.sort' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-排序值', 'ai.chatRole.field.sort', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '排序值', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 29. AI聊天角色-状态
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chatRole.field.status';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-状态', 'ai.chatRole.field.status', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.chatRole.field.status' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-状态', 'ai.chatRole.field.status', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.chatRole.field.status' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-状态', 'ai.chatRole.field.status', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 30. AI聊天角色-创建时间
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chatRole.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-创建时间', 'ai.chatRole.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.chatRole.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-创建时间', 'ai.chatRole.field.createTime', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.chatRole.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-创建时间', 'ai.chatRole.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '创建时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 31. AI聊天角色-最后更新时间
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chatRole.field.updateTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-最后更新时间', 'ai.chatRole.field.updateTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.chatRole.field.updateTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-最后更新时间', 'ai.chatRole.field.updateTime', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'update time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.chatRole.field.updateTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-最后更新时间', 'ai.chatRole.field.updateTime', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '最后更新时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 32. AI聊天角色-创建者
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chatRole.field.creator';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-创建者', 'ai.chatRole.field.creator', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.chatRole.field.creator' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-创建者', 'ai.chatRole.field.creator', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'creator', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.chatRole.field.creator' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-创建者', 'ai.chatRole.field.creator', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '创建者', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 33. AI聊天角色-更新者
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chatRole.field.updater';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-更新者', 'ai.chatRole.field.updater', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.chatRole.field.updater' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-更新者', 'ai.chatRole.field.updater', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'updater', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.chatRole.field.updater' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-更新者', 'ai.chatRole.field.updater', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '更新者', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 34. AI聊天角色-是否删除
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chatRole.field.deleted';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-是否删除', 'ai.chatRole.field.deleted', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.chatRole.field.deleted' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-是否删除', 'ai.chatRole.field.deleted', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'deleted', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.chatRole.field.deleted' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-是否删除', 'ai.chatRole.field.deleted', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '是否删除', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 35. AI聊天角色-模型名字（VO 特有字段）
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chatRole.field.modelName';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-模型名字', 'ai.chatRole.field.modelName', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.chatRole.field.modelName' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-模型名字', 'ai.chatRole.field.modelName', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'model name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.chatRole.field.modelName' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-模型名字', 'ai.chatRole.field.modelName', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '模型名字', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- AI 工具（ai_tool 表）
-- =============================================

-- 36. AI工具-工具编号
DELETE FROM infra_i18n_key WHERE message_key = 'ai.tool.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工具-工具编号', 'ai.tool.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.tool.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工具-工具编号', 'ai.tool.field.id', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.tool.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工具-工具编号', 'ai.tool.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '工具编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 37. AI工具-工具名称
DELETE FROM infra_i18n_key WHERE message_key = 'ai.tool.field.name';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工具-工具名称', 'ai.tool.field.name', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.tool.field.name' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工具-工具名称', 'ai.tool.field.name', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'tool name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.tool.field.name' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工具-工具名称', 'ai.tool.field.name', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '工具名称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 38. AI工具-工具描述
DELETE FROM infra_i18n_key WHERE message_key = 'ai.tool.field.description';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工具-工具描述', 'ai.tool.field.description', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.tool.field.description' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工具-工具描述', 'ai.tool.field.description', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'description', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.tool.field.description' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工具-工具描述', 'ai.tool.field.description', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '工具描述', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 39. AI工具-状态
DELETE FROM infra_i18n_key WHERE message_key = 'ai.tool.field.status';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工具-状态', 'ai.tool.field.status', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.tool.field.status' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工具-状态', 'ai.tool.field.status', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.tool.field.status' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工具-状态', 'ai.tool.field.status', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 40. AI工具-创建时间
DELETE FROM infra_i18n_key WHERE message_key = 'ai.tool.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工具-创建时间', 'ai.tool.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.tool.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工具-创建时间', 'ai.tool.field.createTime', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.tool.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工具-创建时间', 'ai.tool.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '创建时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 41. AI工具-最后更新时间
DELETE FROM infra_i18n_key WHERE message_key = 'ai.tool.field.updateTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工具-最后更新时间', 'ai.tool.field.updateTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.tool.field.updateTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工具-最后更新时间', 'ai.tool.field.updateTime', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'update time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.tool.field.updateTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工具-最后更新时间', 'ai.tool.field.updateTime', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '最后更新时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 42. AI工具-创建者
DELETE FROM infra_i18n_key WHERE message_key = 'ai.tool.field.creator';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工具-创建者', 'ai.tool.field.creator', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.tool.field.creator' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工具-创建者', 'ai.tool.field.creator', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'creator', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.tool.field.creator' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工具-创建者', 'ai.tool.field.creator', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '创建者', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 43. AI工具-更新者
DELETE FROM infra_i18n_key WHERE message_key = 'ai.tool.field.updater';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工具-更新者', 'ai.tool.field.updater', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.tool.field.updater' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工具-更新者', 'ai.tool.field.updater', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'updater', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.tool.field.updater' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工具-更新者', 'ai.tool.field.updater', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '更新者', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 44. AI工具-是否删除
DELETE FROM infra_i18n_key WHERE message_key = 'ai.tool.field.deleted';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工具-是否删除', 'ai.tool.field.deleted', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.tool.field.deleted' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工具-是否删除', 'ai.tool.field.deleted', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'deleted', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.tool.field.deleted' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工具-是否删除', 'ai.tool.field.deleted', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '是否删除', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- AI API 密钥（ai_api_key 表）
-- =============================================

-- 45. AI API密钥-编号
DELETE FROM infra_i18n_key WHERE message_key = 'ai.apiKey.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI API密钥-编号', 'ai.apiKey.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.apiKey.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI API密钥-编号', 'ai.apiKey.field.id', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.apiKey.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI API密钥-编号', 'ai.apiKey.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 46. AI API密钥-名称
DELETE FROM infra_i18n_key WHERE message_key = 'ai.apiKey.field.name';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI API密钥-名称', 'ai.apiKey.field.name', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.apiKey.field.name' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI API密钥-名称', 'ai.apiKey.field.name', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.apiKey.field.name' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI API密钥-名称', 'ai.apiKey.field.name', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '名称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 47. AI API密钥-密钥
DELETE FROM infra_i18n_key WHERE message_key = 'ai.apiKey.field.apiKey';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI API密钥-密钥', 'ai.apiKey.field.apiKey', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.apiKey.field.apiKey' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI API密钥-密钥', 'ai.apiKey.field.apiKey', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'api key', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.apiKey.field.apiKey' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI API密钥-密钥', 'ai.apiKey.field.apiKey', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '密钥', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 48. AI API密钥-平台
DELETE FROM infra_i18n_key WHERE message_key = 'ai.apiKey.field.platform';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI API密钥-平台', 'ai.apiKey.field.platform', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.apiKey.field.platform' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI API密钥-平台', 'ai.apiKey.field.platform', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'platform', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.apiKey.field.platform' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI API密钥-平台', 'ai.apiKey.field.platform', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '平台', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 49. AI API密钥-API地址
DELETE FROM infra_i18n_key WHERE message_key = 'ai.apiKey.field.url';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI API密钥-API地址', 'ai.apiKey.field.url', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.apiKey.field.url' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI API密钥-API地址', 'ai.apiKey.field.url', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'api address', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.apiKey.field.url' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI API密钥-API地址', 'ai.apiKey.field.url', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'API地址', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 50. AI API密钥-状态
DELETE FROM infra_i18n_key WHERE message_key = 'ai.apiKey.field.status';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI API密钥-状态', 'ai.apiKey.field.status', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.apiKey.field.status' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI API密钥-状态', 'ai.apiKey.field.status', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.apiKey.field.status' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI API密钥-状态', 'ai.apiKey.field.status', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 51. AI API密钥-创建时间
DELETE FROM infra_i18n_key WHERE message_key = 'ai.apiKey.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI API密钥-创建时间', 'ai.apiKey.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.apiKey.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI API密钥-创建时间', 'ai.apiKey.field.createTime', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.apiKey.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI API密钥-创建时间', 'ai.apiKey.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '创建时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 52. AI API密钥-最后更新时间
DELETE FROM infra_i18n_key WHERE message_key = 'ai.apiKey.field.updateTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI API密钥-最后更新时间', 'ai.apiKey.field.updateTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.apiKey.field.updateTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI API密钥-最后更新时间', 'ai.apiKey.field.updateTime', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'update time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.apiKey.field.updateTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI API密钥-最后更新时间', 'ai.apiKey.field.updateTime', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '最后更新时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 53. AI API密钥-创建者
DELETE FROM infra_i18n_key WHERE message_key = 'ai.apiKey.field.creator';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI API密钥-创建者', 'ai.apiKey.field.creator', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.apiKey.field.creator' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI API密钥-创建者', 'ai.apiKey.field.creator', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'creator', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.apiKey.field.creator' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI API密钥-创建者', 'ai.apiKey.field.creator', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '创建者', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 54. AI API密钥-更新者
DELETE FROM infra_i18n_key WHERE message_key = 'ai.apiKey.field.updater';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI API密钥-更新者', 'ai.apiKey.field.updater', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.apiKey.field.updater' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI API密钥-更新者', 'ai.apiKey.field.updater', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'updater', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.apiKey.field.updater' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI API密钥-更新者', 'ai.apiKey.field.updater', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '更新者', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 55. AI API密钥-是否删除
DELETE FROM infra_i18n_key WHERE message_key = 'ai.apiKey.field.deleted';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI API密钥-是否删除', 'ai.apiKey.field.deleted', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.apiKey.field.deleted' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI API密钥-是否删除', 'ai.apiKey.field.deleted', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'deleted', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'ai.apiKey.field.deleted' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI API密钥-是否删除', 'ai.apiKey.field.deleted', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '是否删除', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
