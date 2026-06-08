-- =============================================
-- BPM OA 请假申请 字段国际化 SQL
-- 生成时间：2026-05-30
-- 规范版本：v6.1
-- =============================================

-- ---------------------------------------------
-- 变量定义（必须全部定义，INSERT 中必须全部使用变量）
-- ---------------------------------------------
SET @IS_SYSTEM = 0;
SET @USE_TYPE_FILED = 3;
SET @MODULE_TYPE = 'bpm';
SET @LOCALE_TARGET_BACKEND = 1;
SET @LOCALE_EN = 'en-US';
SET @LOCALE_ZH_CN = 'zh-CN';
SET @CREATOR = '0';
SET @REMARK = 'ai auto generate';
SET @ORDER_NUM = 5;

-- =============================================
-- BPM OA 请假申请（bpm_oa_leave 表）
-- =============================================

-- 1. BPM请假申请-请假表单主键
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.oaLeave.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM请假申请-请假表单主键', 'bpm.oaLeave.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.oaLeave.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM请假申请-请假表单主键', 'bpm.oaLeave.field.id', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.oaLeave.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM请假申请-请假表单主键', 'bpm.oaLeave.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '请假表单主键', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. BPM请假申请-申请人用户编号
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.oaLeave.field.userId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM请假申请-申请人用户编号', 'bpm.oaLeave.field.userId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.oaLeave.field.userId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM请假申请-申请人用户编号', 'bpm.oaLeave.field.userId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'user id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.oaLeave.field.userId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM请假申请-申请人用户编号', 'bpm.oaLeave.field.userId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '申请人用户编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. BPM请假申请-请假类型
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.oaLeave.field.type';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM请假申请-请假类型', 'bpm.oaLeave.field.type', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.oaLeave.field.type' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM请假申请-请假类型', 'bpm.oaLeave.field.type', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'leave type', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.oaLeave.field.type' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM请假申请-请假类型', 'bpm.oaLeave.field.type', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '请假类型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. BPM请假申请-原因
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.oaLeave.field.reason';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM请假申请-原因', 'bpm.oaLeave.field.reason', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.oaLeave.field.reason' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM请假申请-原因', 'bpm.oaLeave.field.reason', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'reason', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.oaLeave.field.reason' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM请假申请-原因', 'bpm.oaLeave.field.reason', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '原因', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. BPM请假申请-开始时间
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.oaLeave.field.startTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM请假申请-开始时间', 'bpm.oaLeave.field.startTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.oaLeave.field.startTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM请假申请-开始时间', 'bpm.oaLeave.field.startTime', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'start time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.oaLeave.field.startTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM请假申请-开始时间', 'bpm.oaLeave.field.startTime', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '开始时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 6. BPM请假申请-结束时间
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.oaLeave.field.endTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM请假申请-结束时间', 'bpm.oaLeave.field.endTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.oaLeave.field.endTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM请假申请-结束时间', 'bpm.oaLeave.field.endTime', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'end time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.oaLeave.field.endTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM请假申请-结束时间', 'bpm.oaLeave.field.endTime', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '结束时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 7. BPM请假申请-请假天数
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.oaLeave.field.day';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM请假申请-请假天数', 'bpm.oaLeave.field.day', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.oaLeave.field.day' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM请假申请-请假天数', 'bpm.oaLeave.field.day', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'leave days', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.oaLeave.field.day' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM请假申请-请假天数', 'bpm.oaLeave.field.day', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '请假天数', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 8. BPM请假申请-审批结果
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.oaLeave.field.status';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM请假申请-审批结果', 'bpm.oaLeave.field.status', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.oaLeave.field.status' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM请假申请-审批结果', 'bpm.oaLeave.field.status', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'approval status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.oaLeave.field.status' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM请假申请-审批结果', 'bpm.oaLeave.field.status', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '审批结果', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 9. BPM请假申请-流程编号
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.oaLeave.field.processInstanceId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM请假申请-流程编号', 'bpm.oaLeave.field.processInstanceId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.oaLeave.field.processInstanceId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM请假申请-流程编号', 'bpm.oaLeave.field.processInstanceId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'process instance id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.oaLeave.field.processInstanceId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM请假申请-流程编号', 'bpm.oaLeave.field.processInstanceId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '流程编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 10. BPM请假申请-申请时间
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.oaLeave.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM请假申请-申请时间', 'bpm.oaLeave.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.oaLeave.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM请假申请-申请时间', 'bpm.oaLeave.field.createTime', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.oaLeave.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM请假申请-申请时间', 'bpm.oaLeave.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '申请时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
