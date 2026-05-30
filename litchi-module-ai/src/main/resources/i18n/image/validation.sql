-- =============================================
-- AI 绘画模块 校验消息国际化 SQL
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
-- AI 绘画（ai_image 表）
-- =============================================

-- 1. AI绘画-编号不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.back.id.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI绘画-编号不能为空', 'ai.image.back.id.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 1. AI绘画-编号不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.back.id.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI绘画-编号不能为空', 'ai.image.back.id.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'ai image id cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 1. AI绘画-编号不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.back.id.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI绘画-编号不能为空', 'ai.image.back.id.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'AI绘画编号不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. AI绘画-模型编号不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.back.modelId.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI绘画-模型编号不能为空', 'ai.image.back.modelId.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. AI绘画-模型编号不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.back.modelId.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI绘画-模型编号不能为空', 'ai.image.back.modelId.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'ai image model id cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. AI绘画-模型编号不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.back.modelId.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI绘画-模型编号不能为空', 'ai.image.back.modelId.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'AI绘画模型编号不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. AI绘画-提示词不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.back.prompt.notEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI绘画-提示词不能为空', 'ai.image.back.prompt.notEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. AI绘画-提示词不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.back.prompt.notEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI绘画-提示词不能为空', 'ai.image.back.prompt.notEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'ai image prompt cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. AI绘画-提示词不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.back.prompt.notEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI绘画-提示词不能为空', 'ai.image.back.prompt.notEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'AI绘画提示词不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. AI绘画-提示词长度超限
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.back.prompt.length';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI绘画-提示词长度超限', 'ai.image.back.prompt.length', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. AI绘画-提示词长度超限 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.back.prompt.length' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI绘画-提示词长度超限', 'ai.image.back.prompt.length', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'ai image prompt length cannot exceed 1200 characters', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. AI绘画-提示词长度超限 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.back.prompt.length' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI绘画-提示词长度超限', 'ai.image.back.prompt.length', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'AI绘画提示词长度不能超过1200个字符', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. AI绘画-图片高度不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.back.height.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI绘画-图片高度不能为空', 'ai.image.back.height.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. AI绘画-图片高度不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.back.height.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI绘画-图片高度不能为空', 'ai.image.back.height.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'ai image height cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. AI绘画-图片高度不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.back.height.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI绘画-图片高度不能为空', 'ai.image.back.height.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'AI绘画图片高度不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 6. AI绘画-图片宽度不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.back.width.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI绘画-图片宽度不能为空', 'ai.image.back.width.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 6. AI绘画-图片宽度不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.back.width.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI绘画-图片宽度不能为空', 'ai.image.back.width.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'ai image width cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 6. AI绘画-图片宽度不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.back.width.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI绘画-图片宽度不能为空', 'ai.image.back.width.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'AI绘画图片宽度不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 7. AI绘画-操作按钮编号不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.back.customId.notEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI绘画-操作按钮编号不能为空', 'ai.image.back.customId.notEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 7. AI绘画-操作按钮编号不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.back.customId.notEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI绘画-操作按钮编号不能为空', 'ai.image.back.customId.notEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'ai image custom id cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 7. AI绘画-操作按钮编号不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.back.customId.notEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI绘画-操作按钮编号不能为空', 'ai.image.back.customId.notEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'AI绘画操作按钮编号不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 8. AI绘画-版本号不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.back.version.notEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI绘画-版本号不能为空', 'ai.image.back.version.notEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 8. AI绘画-版本号不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.back.version.notEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI绘画-版本号不能为空', 'ai.image.back.version.notEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'ai image version cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 8. AI绘画-版本号不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.back.version.notEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI绘画-版本号不能为空', 'ai.image.back.version.notEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'AI绘画版本号不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
