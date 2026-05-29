-- =============================================
-- system area 校验消息国际化 SQL
-- 生成时间：2026-05-29
-- 规范版本：v6.1
-- =============================================

-- ---------------------------------------------
-- 变量定义（必须全部定义，INSERT 中必须全部使用变量）
-- ---------------------------------------------
SET @IS_SYSTEM = 0;
SET @USE_TYPE_EXCEPTION = 5;
SET @MODULE_TYPE = 'system';
SET @LOCALE_TARGET_BACKEND = 1;
SET @LOCALE_EN = 'en-US';
SET @LOCALE_ZH_CN = 'zh-CN';
SET @CREATOR = '0';
SET @REMARK = 'ai auto generate';
SET @ORDER_NUM = 5;

-- =============================================
-- AreaSaveReqVO (area)
-- =============================================

-- 1. name - 不能为空白
DELETE FROM infra_i18n_key WHERE message_key = 'system.area.back.name.notBlank';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区-地区名称不能为空白', 'system.area.back.name.notBlank', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.area.back.name.notBlank' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区-地区名称不能为空白', 'system.area.back.name.notBlank', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'area name cannot be blank', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.area.back.name.notBlank' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区-地区名称不能为空白', 'system.area.back.name.notBlank', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '地区名称不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. parentId - 不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'system.area.back.parentId.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区-父级ID不能为空', 'system.area.back.parentId.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.area.back.parentId.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区-父级ID不能为空', 'system.area.back.parentId.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'area parent id cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.area.back.parentId.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区-父级ID不能为空', 'system.area.back.parentId.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '父级ID不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. level - 不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'system.area.back.level.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区-层级不能为空', 'system.area.back.level.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.area.back.level.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区-层级不能为空', 'system.area.back.level.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'area level cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.area.back.level.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区-层级不能为空', 'system.area.back.level.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '层级不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
