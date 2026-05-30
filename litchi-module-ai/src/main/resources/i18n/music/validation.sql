-- =============================================
-- AI 音乐模块 校验消息国际化 SQL
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
-- AI 音乐（AiSunoGenerateReqVO）
-- =============================================

-- 1. AI音乐-平台不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.back.platform.notBlank';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐-平台不能为空', 'ai.music.back.platform.notBlank', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 1. AI音乐-平台不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.back.platform.notBlank' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐-平台不能为空', 'ai.music.back.platform.notBlank', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'ai music platform cannot be blank', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 1. AI音乐-平台不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.back.platform.notBlank' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐-平台不能为空', 'ai.music.back.platform.notBlank', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'AI音乐平台不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. AI音乐-生成模式不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.back.generateMode.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐-生成模式不能为空', 'ai.music.back.generateMode.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. AI音乐-生成模式不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.back.generateMode.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐-生成模式不能为空', 'ai.music.back.generateMode.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'ai music generate mode cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. AI音乐-生成模式不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.back.generateMode.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐-生成模式不能为空', 'ai.music.back.generateMode.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'AI音乐生成模式不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. AI音乐-模型不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.back.model.notEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐-模型不能为空', 'ai.music.back.model.notEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. AI音乐-模型不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.back.model.notEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐-模型不能为空', 'ai.music.back.model.notEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'ai music model cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. AI音乐-模型不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.back.model.notEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐-模型不能为空', 'ai.music.back.model.notEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'AI音乐模型不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- AI 音乐（AiMusicUpdateReqVO）
-- =============================================

-- 4. AI音乐-编号不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.back.id.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐-编号不能为空', 'ai.music.back.id.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. AI音乐-编号不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.back.id.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐-编号不能为空', 'ai.music.back.id.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'ai music id cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. AI音乐-编号不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.back.id.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐-编号不能为空', 'ai.music.back.id.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'AI音乐编号不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- AI 修改我的音乐（AiMusicUpdateMyReqVO）
-- =============================================

-- 5. AI修改我的音乐-编号不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'ai.musicUpdateMy.back.id.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI修改我的音乐-编号不能为空', 'ai.musicUpdateMy.back.id.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. AI修改我的音乐-编号不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.musicUpdateMy.back.id.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI修改我的音乐-编号不能为空', 'ai.musicUpdateMy.back.id.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'ai music update my id cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. AI修改我的音乐-编号不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.musicUpdateMy.back.id.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI修改我的音乐-编号不能为空', 'ai.musicUpdateMy.back.id.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'AI修改我的音乐编号不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- AI 音乐分页（AiMusicPageReqVO）
-- =============================================

-- 6. AI音乐-音乐状态必须在指定范围
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.back.status.inEnum';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐-音乐状态必须在指定范围', 'ai.music.back.status.inEnum', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 6. AI音乐-音乐状态必须在指定范围 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.back.status.inEnum' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐-音乐状态必须在指定范围', 'ai.music.back.status.inEnum', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'ai music status must be in specified range', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 6. AI音乐-音乐状态必须在指定范围 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.back.status.inEnum' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐-音乐状态必须在指定范围', 'ai.music.back.status.inEnum', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'AI音乐音乐状态必须在指定范围', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 7. AI音乐-生成模式必须在指定范围
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.back.generateMode.inEnum';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐-生成模式必须在指定范围', 'ai.music.back.generateMode.inEnum', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 7. AI音乐-生成模式必须在指定范围 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.back.generateMode.inEnum' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐-生成模式必须在指定范围', 'ai.music.back.generateMode.inEnum', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'ai music generate mode must be in specified range', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 7. AI音乐-生成模式必须在指定范围 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.back.generateMode.inEnum' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐-生成模式必须在指定范围', 'ai.music.back.generateMode.inEnum', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'AI音乐生成模式必须在指定范围', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
