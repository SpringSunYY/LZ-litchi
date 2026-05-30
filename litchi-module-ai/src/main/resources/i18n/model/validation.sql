-- =============================================
-- AI Model 模型模块 校验消息国际化 SQL
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
-- AI 模型（ai_model 表）
-- =============================================

-- 1. AI模型-API秘钥编号不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.back.keyId.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI模型-API秘钥编号不能为空', 'ai.model.back.keyId.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 1. AI模型-API秘钥编号不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.back.keyId.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI模型-API秘钥编号不能为空', 'ai.model.back.keyId.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'ai model api secret key id cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 1. AI模型-API秘钥编号不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.back.keyId.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI模型-API秘钥编号不能为空', 'ai.model.back.keyId.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'AI模型API秘钥编号不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. AI模型-模型名字不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.back.name.notEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI模型-模型名字不能为空', 'ai.model.back.name.notEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. AI模型-模型名字不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.back.name.notEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI模型-模型名字不能为空', 'ai.model.back.name.notEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'ai model name cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. AI模型-模型名字不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.back.name.notEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI模型-模型名字不能为空', 'ai.model.back.name.notEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'AI模型模型名字不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. AI模型-模型标识不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.back.model.notEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI模型-模型标识不能为空', 'ai.model.back.model.notEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. AI模型-模型标识不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.back.model.notEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI模型-模型标识不能为空', 'ai.model.back.model.notEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'ai model model cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. AI模型-模型标识不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.back.model.notEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI模型-模型标识不能为空', 'ai.model.back.model.notEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'AI模型模型标识不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. AI模型-模型平台不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.back.platform.notEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI模型-模型平台不能为空', 'ai.model.back.platform.notEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. AI模型-模型平台不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.back.platform.notEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI模型-模型平台不能为空', 'ai.model.back.platform.notEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'ai model platform cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. AI模型-模型平台不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.back.platform.notEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI模型-模型平台不能为空', 'ai.model.back.platform.notEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'AI模型模型平台不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. AI模型-模型类型不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.back.type.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI模型-模型类型不能为空', 'ai.model.back.type.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. AI模型-模型类型不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.back.type.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI模型-模型类型不能为空', 'ai.model.back.type.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'ai model type cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. AI模型-模型类型不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.back.type.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI模型-模型类型不能为空', 'ai.model.back.type.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'AI模型模型类型不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 6. AI模型-排序不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.back.sort.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI模型-排序不能为空', 'ai.model.back.sort.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 6. AI模型-排序不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.back.sort.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI模型-排序不能为空', 'ai.model.back.sort.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'ai model sort cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 6. AI模型-排序不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.back.sort.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI模型-排序不能为空', 'ai.model.back.sort.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'AI模型排序不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 7. AI模型-状态不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.back.status.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI模型-状态不能为空', 'ai.model.back.status.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 7. AI模型-状态不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.back.status.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI模型-状态不能为空', 'ai.model.back.status.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'ai model status cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 7. AI模型-状态不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.back.status.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI模型-状态不能为空', 'ai.model.back.status.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'AI模型状态不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- AI 聊天角色（ai_chat_role 表）
-- =============================================

-- 8. AI聊天角色-角色名称不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chatRole.back.name.notEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-角色名称不能为空', 'ai.chatRole.back.name.notEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 8. AI聊天角色-角色名称不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chatRole.back.name.notEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-角色名称不能为空', 'ai.chatRole.back.name.notEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'ai chat role name cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 8. AI聊天角色-角色名称不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chatRole.back.name.notEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-角色名称不能为空', 'ai.chatRole.back.name.notEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'AI聊天角色角色名称不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 9. AI聊天角色-角色头像不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chatRole.back.avatar.notEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-角色头像不能为空', 'ai.chatRole.back.avatar.notEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 9. AI聊天角色-角色头像不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chatRole.back.avatar.notEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-角色头像不能为空', 'ai.chatRole.back.avatar.notEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'ai chat role avatar cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 9. AI聊天角色-角色头像不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chatRole.back.avatar.notEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-角色头像不能为空', 'ai.chatRole.back.avatar.notEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'AI聊天角色角色头像不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 10. AI聊天角色-角色头像URL格式不正确
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chatRole.back.avatar.url';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-角色头像URL格式不正确', 'ai.chatRole.back.avatar.url', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 10. AI聊天角色-角色头像URL格式不正确 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chatRole.back.avatar.url' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-角色头像URL格式不正确', 'ai.chatRole.back.avatar.url', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'ai chat role avatar must be a valid url', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 10. AI聊天角色-角色头像URL格式不正确 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chatRole.back.avatar.url' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-角色头像URL格式不正确', 'ai.chatRole.back.avatar.url', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'AI聊天角色角色头像URL格式不正确', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 11. AI聊天角色-角色类别不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chatRole.back.category.notEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-角色类别不能为空', 'ai.chatRole.back.category.notEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 11. AI聊天角色-角色类别不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chatRole.back.category.notEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-角色类别不能为空', 'ai.chatRole.back.category.notEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'ai chat role category cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 11. AI聊天角色-角色类别不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chatRole.back.category.notEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-角色类别不能为空', 'ai.chatRole.back.category.notEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'AI聊天角色角色类别不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 12. AI聊天角色-角色排序不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chatRole.back.sort.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-角色排序不能为空', 'ai.chatRole.back.sort.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 12. AI聊天角色-角色排序不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chatRole.back.sort.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-角色排序不能为空', 'ai.chatRole.back.sort.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'ai chat role sort cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 12. AI聊天角色-角色排序不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chatRole.back.sort.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-角色排序不能为空', 'ai.chatRole.back.sort.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'AI聊天角色角色排序不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 13. AI聊天角色-角色描述不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chatRole.back.description.notEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-角色描述不能为空', 'ai.chatRole.back.description.notEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 13. AI聊天角色-角色描述不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chatRole.back.description.notEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-角色描述不能为空', 'ai.chatRole.back.description.notEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'ai chat role description cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 13. AI聊天角色-角色描述不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chatRole.back.description.notEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-角色描述不能为空', 'ai.chatRole.back.description.notEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'AI聊天角色角色描述不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 14. AI聊天角色-角色设定不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chatRole.back.systemMessage.notEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-角色设定不能为空', 'ai.chatRole.back.systemMessage.notEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 14. AI聊天角色-角色设定不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chatRole.back.systemMessage.notEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-角色设定不能为空', 'ai.chatRole.back.systemMessage.notEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'ai chat role system message cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 14. AI聊天角色-角色设定不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chatRole.back.systemMessage.notEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-角色设定不能为空', 'ai.chatRole.back.systemMessage.notEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'AI聊天角色角色设定不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 15. AI聊天角色-是否公开不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chatRole.back.publicStatus.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-是否公开不能为空', 'ai.chatRole.back.publicStatus.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 15. AI聊天角色-是否公开不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chatRole.back.publicStatus.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-是否公开不能为空', 'ai.chatRole.back.publicStatus.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'ai chat role public status cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 15. AI聊天角色-是否公开不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chatRole.back.publicStatus.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-是否公开不能为空', 'ai.chatRole.back.publicStatus.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'AI聊天角色是否公开不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 16. AI聊天角色-状态不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chatRole.back.status.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-状态不能为空', 'ai.chatRole.back.status.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 16. AI聊天角色-状态不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chatRole.back.status.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-状态不能为空', 'ai.chatRole.back.status.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'ai chat role status cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 16. AI聊天角色-状态不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chatRole.back.status.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天角色-状态不能为空', 'ai.chatRole.back.status.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'AI聊天角色状态不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- AI 工具（ai_tool 表）
-- =============================================

-- 17. AI工具-工具名称不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'ai.tool.back.name.notEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工具-工具名称不能为空', 'ai.tool.back.name.notEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 17. AI工具-工具名称不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.tool.back.name.notEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工具-工具名称不能为空', 'ai.tool.back.name.notEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'ai tool name cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 17. AI工具-工具名称不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.tool.back.name.notEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工具-工具名称不能为空', 'ai.tool.back.name.notEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'AI工具工具名称不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- AI API 密钥（ai_api_key 表）
-- =============================================

-- 18. AI API密钥-名称不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'ai.apiKey.back.name.notEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI API密钥-名称不能为空', 'ai.apiKey.back.name.notEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 18. AI API密钥-名称不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.apiKey.back.name.notEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI API密钥-名称不能为空', 'ai.apiKey.back.name.notEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'ai api key name cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 18. AI API密钥-名称不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.apiKey.back.name.notEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI API密钥-名称不能为空', 'ai.apiKey.back.name.notEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'AI API密钥名称不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 19. AI API密钥-密钥不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'ai.apiKey.back.apiKey.notEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI API密钥-密钥不能为空', 'ai.apiKey.back.apiKey.notEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 19. AI API密钥-密钥不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.apiKey.back.apiKey.notEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI API密钥-密钥不能为空', 'ai.apiKey.back.apiKey.notEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'ai api key secret cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 19. AI API密钥-密钥不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.apiKey.back.apiKey.notEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI API密钥-密钥不能为空', 'ai.apiKey.back.apiKey.notEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'AI API密钥密钥不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 20. AI API密钥-平台不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'ai.apiKey.back.platform.notEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI API密钥-平台不能为空', 'ai.apiKey.back.platform.notEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 20. AI API密钥-平台不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.apiKey.back.platform.notEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI API密钥-平台不能为空', 'ai.apiKey.back.platform.notEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'ai api key platform cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 20. AI API密钥-平台不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.apiKey.back.platform.notEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI API密钥-平台不能为空', 'ai.apiKey.back.platform.notEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'AI API密钥平台不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 21. AI API密钥-状态不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'ai.apiKey.back.status.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI API密钥-状态不能为空', 'ai.apiKey.back.status.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 21. AI API密钥-状态不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.apiKey.back.status.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI API密钥-状态不能为空', 'ai.apiKey.back.status.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'ai api key status cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 21. AI API密钥-状态不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.apiKey.back.status.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI API密钥-状态不能为空', 'ai.apiKey.back.status.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'AI API密钥状态不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
