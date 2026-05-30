-- =============================================
-- BPM OA 请假申请 校验消息国际化 SQL
-- 生成时间：2026-05-30
-- 规范版本：v6.1
-- =============================================

-- ---------------------------------------------
-- 变量定义（必须全部定义，INSERT 中必须全部使用变量）
-- ---------------------------------------------
SET @IS_SYSTEM = 0;
SET @USE_TYPE_EXCEPTION = 5;
SET @MODULE_TYPE = 'bpm';
SET @LOCALE_TARGET_BACKEND = 1;
SET @LOCALE_EN = 'en-US';
SET @LOCALE_ZH_CN = 'zh-CN';
SET @CREATOR = '0';
SET @REMARK = 'ai auto generate';
SET @ORDER_NUM = 5;

-- =============================================
-- BPM OA 请假申请
-- =============================================

-- 1. BPM请假申请-开始时间不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.oaLeave.back.startTime.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM请假申请-开始时间不能为空', 'bpm.oaLeave.back.startTime.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 1. BPM请假申请-开始时间不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.oaLeave.back.startTime.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM请假申请-开始时间不能为空', 'bpm.oaLeave.back.startTime.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm oa leave start time cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 1. BPM请假申请-开始时间不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.oaLeave.back.startTime.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM请假申请-开始时间不能为空', 'bpm.oaLeave.back.startTime.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM请假申请开始时间不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. BPM请假申请-结束时间不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.oaLeave.back.endTime.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM请假申请-结束时间不能为空', 'bpm.oaLeave.back.endTime.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. BPM请假申请-结束时间不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.oaLeave.back.endTime.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM请假申请-结束时间不能为空', 'bpm.oaLeave.back.endTime.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm oa leave end time cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. BPM请假申请-结束时间不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.oaLeave.back.endTime.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM请假申请-结束时间不能为空', 'bpm.oaLeave.back.endTime.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM请假申请结束时间不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. BPM请假申请-结束时间需要在开始时间之后
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.oaLeave.back.endTimeValid.assertTrue';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM请假申请-结束时间需要在开始时间之后', 'bpm.oaLeave.back.endTimeValid.assertTrue', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. BPM请假申请-结束时间需要在开始时间之后 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.oaLeave.back.endTimeValid.assertTrue' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM请假申请-结束时间需要在开始时间之后', 'bpm.oaLeave.back.endTimeValid.assertTrue', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm oa leave end time must be after start time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. BPM请假申请-结束时间需要在开始时间之后 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.oaLeave.back.endTimeValid.assertTrue' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM请假申请-结束时间需要在开始时间之后', 'bpm.oaLeave.back.endTimeValid.assertTrue', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM请假申请结束时间需要在开始时间之后', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
