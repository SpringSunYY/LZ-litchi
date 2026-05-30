-- =============================================
-- BPM 流程任务 字段国际化 SQL
-- 生成时间：2026-05-30
-- 规范版本：v6.1
-- =============================================
-- 说明：field.sql 以 DO + VO 字段的并集为准
--       DO 继承父类后，字段是 DO 本身 + 父类字段
--       VO 可能还有 DO 没有的字段（如 Flowable 自带字段）
-- =============================================

-- ---------------------------------------------
-- 变量定义（必须全部定义，INSERT 中必须全部使用变量）
-- ---------------------------------------------
SET @IS_SYSTEM = 0;
SET @USE_TYPE_FORM = 2;
SET @MODULE_TYPE = 'bpm';
SET @LOCALE_TARGET_BACKEND = 1;
SET @LOCALE_EN = 'en-US';
SET @LOCALE_ZH_CN = 'zh-CN';
SET @CREATOR = '0';
SET @REMARK = 'ai auto generate';
SET @ORDER_NUM = 5;

-- =============================================
-- BPM 流程实例抄送（bpm_process_instance_copy 表）
-- =============================================

-- 1. BPM流程实例抄送-抄送主键
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processInstanceCopy.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例抄送-抄送主键', 'bpm.processInstanceCopy.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstanceCopy.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例抄送-抄送主键', 'bpm.processInstanceCopy.field.id', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstanceCopy.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例抄送-抄送主键', 'bpm.processInstanceCopy.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '抄送主键', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. BPM流程实例抄送-流程实例编号
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processInstanceCopy.field.processInstanceId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例抄送-流程实例编号', 'bpm.processInstanceCopy.field.processInstanceId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstanceCopy.field.processInstanceId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例抄送-流程实例编号', 'bpm.processInstanceCopy.field.processInstanceId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'process instance id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstanceCopy.field.processInstanceId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例抄送-流程实例编号', 'bpm.processInstanceCopy.field.processInstanceId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '流程实例编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. BPM流程实例抄送-流程实例的名称
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processInstanceCopy.field.processInstanceName';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例抄送-流程实例的名称', 'bpm.processInstanceCopy.field.processInstanceName', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstanceCopy.field.processInstanceName' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例抄送-流程实例的名称', 'bpm.processInstanceCopy.field.processInstanceName', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'process instance name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstanceCopy.field.processInstanceName' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例抄送-流程实例的名称', 'bpm.processInstanceCopy.field.processInstanceName', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '流程实例的名称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. BPM流程实例抄送-流程实例的发起时间
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processInstanceCopy.field.processInstanceStartTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例抄送-流程实例的发起时间', 'bpm.processInstanceCopy.field.processInstanceStartTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstanceCopy.field.processInstanceStartTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例抄送-流程实例的发起时间', 'bpm.processInstanceCopy.field.processInstanceStartTime', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'process instance start time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstanceCopy.field.processInstanceStartTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例抄送-流程实例的发起时间', 'bpm.processInstanceCopy.field.processInstanceStartTime', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '流程实例的发起时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. BPM流程实例抄送-流程活动的编号
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processInstanceCopy.field.activityId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例抄送-流程活动的编号', 'bpm.processInstanceCopy.field.activityId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstanceCopy.field.activityId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例抄送-流程活动的编号', 'bpm.processInstanceCopy.field.activityId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'activity id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstanceCopy.field.activityId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例抄送-流程活动的编号', 'bpm.processInstanceCopy.field.activityId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '流程活动的编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 6. BPM流程实例抄送-流程活动的名字
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processInstanceCopy.field.activityName';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例抄送-流程活动的名字', 'bpm.processInstanceCopy.field.activityName', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstanceCopy.field.activityName' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例抄送-流程活动的名字', 'bpm.processInstanceCopy.field.activityName', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'activity name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstanceCopy.field.activityName' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例抄送-流程活动的名字', 'bpm.processInstanceCopy.field.activityName', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '流程活动的名字', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 7. BPM流程实例抄送-流程任务的编号
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processInstanceCopy.field.taskId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例抄送-流程任务的编号', 'bpm.processInstanceCopy.field.taskId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstanceCopy.field.taskId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例抄送-流程任务的编号', 'bpm.processInstanceCopy.field.taskId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'task id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstanceCopy.field.taskId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例抄送-流程任务的编号', 'bpm.processInstanceCopy.field.taskId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '流程任务的编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 8. BPM流程实例抄送-抄送人意见
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processInstanceCopy.field.reason';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例抄送-抄送人意见', 'bpm.processInstanceCopy.field.reason', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstanceCopy.field.reason' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例抄送-抄送人意见', 'bpm.processInstanceCopy.field.reason', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'reason', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstanceCopy.field.reason' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例抄送-抄送人意见', 'bpm.processInstanceCopy.field.reason', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '抄送人意见', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 9. BPM流程实例抄送-抄送时间
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processInstanceCopy.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例抄送-抄送时间', 'bpm.processInstanceCopy.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstanceCopy.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例抄送-抄送时间', 'bpm.processInstanceCopy.field.createTime', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstanceCopy.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例抄送-抄送时间', 'bpm.processInstanceCopy.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '抄送时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 10. BPM流程实例抄送-流程摘要
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processInstanceCopy.field.summary';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例抄送-流程摘要', 'bpm.processInstanceCopy.field.summary', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstanceCopy.field.summary' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例抄送-流程摘要', 'bpm.processInstanceCopy.field.summary', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'summary', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstanceCopy.field.summary' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例抄送-流程摘要', 'bpm.processInstanceCopy.field.summary', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '流程摘要', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- BPM 流程活动
-- =============================================

-- 11. BPM流程活动-流程活动的标识
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.activity.field.key';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程活动-流程活动的标识', 'bpm.activity.field.key', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.activity.field.key' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程活动-流程活动的标识', 'bpm.activity.field.key', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'key', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.activity.field.key' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程活动-流程活动的标识', 'bpm.activity.field.key', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '流程活动的标识', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 12. BPM流程活动-流程活动的类型
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.activity.field.type';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程活动-流程活动的类型', 'bpm.activity.field.type', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.activity.field.type' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程活动-流程活动的类型', 'bpm.activity.field.type', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'type', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.activity.field.type' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程活动-流程活动的类型', 'bpm.activity.field.type', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '流程活动的类型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 13. BPM流程活动-流程活动的开始时间
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.activity.field.startTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程活动-流程活动的开始时间', 'bpm.activity.field.startTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.activity.field.startTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程活动-流程活动的开始时间', 'bpm.activity.field.startTime', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'start time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.activity.field.startTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程活动-流程活动的开始时间', 'bpm.activity.field.startTime', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '流程活动的开始时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 14. BPM流程活动-流程活动的结束时间
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.activity.field.endTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程活动-流程活动的结束时间', 'bpm.activity.field.endTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.activity.field.endTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程活动-流程活动的结束时间', 'bpm.activity.field.endTime', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'end time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.activity.field.endTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程活动-流程活动的结束时间', 'bpm.activity.field.endTime', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '流程活动的结束时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 15. BPM流程活动-关联的流程任务的编号
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.activity.field.taskId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程活动-关联的流程任务的编号', 'bpm.activity.field.taskId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.activity.field.taskId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程活动-关联的流程任务的编号', 'bpm.activity.field.taskId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'task id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.activity.field.taskId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程活动-关联的流程任务的编号', 'bpm.activity.field.taskId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '关联的流程任务的编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- BPM 审批详情
-- =============================================

-- 16. BPM审批详情-流程定义的编号
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.approvalDetail.field.processDefinitionId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM审批详情-流程定义的编号', 'bpm.approvalDetail.field.processDefinitionId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.approvalDetail.field.processDefinitionId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM审批详情-流程定义的编号', 'bpm.approvalDetail.field.processDefinitionId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'process definition id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.approvalDetail.field.processDefinitionId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM审批详情-流程定义的编号', 'bpm.approvalDetail.field.processDefinitionId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '流程定义的编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 17. BPM审批详情-流程实例的编号
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.approvalDetail.field.processInstanceId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM审批详情-流程实例的编号', 'bpm.approvalDetail.field.processInstanceId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.approvalDetail.field.processInstanceId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM审批详情-流程实例的编号', 'bpm.approvalDetail.field.processInstanceId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'process instance id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.approvalDetail.field.processInstanceId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM审批详情-流程实例的编号', 'bpm.approvalDetail.field.processInstanceId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '流程实例的编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 18. BPM审批详情-流程活动编号
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.approvalDetail.field.activityId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM审批详情-流程活动编号', 'bpm.approvalDetail.field.activityId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.approvalDetail.field.activityId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM审批详情-流程活动编号', 'bpm.approvalDetail.field.activityId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'activity id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.approvalDetail.field.activityId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM审批详情-流程活动编号', 'bpm.approvalDetail.field.activityId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '流程活动编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 19. BPM审批详情-流程任务编号
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.approvalDetail.field.taskId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM审批详情-流程任务编号', 'bpm.approvalDetail.field.taskId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.approvalDetail.field.taskId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM审批详情-流程任务编号', 'bpm.approvalDetail.field.taskId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'task id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.approvalDetail.field.taskId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM审批详情-流程任务编号', 'bpm.approvalDetail.field.taskId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '流程任务编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 20. BPM审批详情-流程实例的状态
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.approvalDetail.field.status';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM审批详情-流程实例的状态', 'bpm.approvalDetail.field.status', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.approvalDetail.field.status' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM审批详情-流程实例的状态', 'bpm.approvalDetail.field.status', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.approvalDetail.field.status' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM审批详情-流程实例的状态', 'bpm.approvalDetail.field.status', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '流程实例的状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- BPM 流程实例
-- =============================================

-- 21. BPM流程实例-流程实例的编号
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processInstance.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例-流程实例的编号', 'bpm.processInstance.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstance.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例-流程实例的编号', 'bpm.processInstance.field.id', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstance.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例-流程实例的编号', 'bpm.processInstance.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '流程实例的编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 22. BPM流程实例-流程名称
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processInstance.field.name';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例-流程名称', 'bpm.processInstance.field.name', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstance.field.name' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例-流程名称', 'bpm.processInstance.field.name', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstance.field.name' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例-流程名称', 'bpm.processInstance.field.name', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '流程名称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 23. BPM流程实例-流程摘要
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processInstance.field.summary';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例-流程摘要', 'bpm.processInstance.field.summary', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstance.field.summary' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例-流程摘要', 'bpm.processInstance.field.summary', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'summary', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstance.field.summary' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例-流程摘要', 'bpm.processInstance.field.summary', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '流程摘要', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 24. BPM流程实例-流程分类
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processInstance.field.category';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例-流程分类', 'bpm.processInstance.field.category', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstance.field.category' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例-流程分类', 'bpm.processInstance.field.category', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'category', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstance.field.category' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例-流程分类', 'bpm.processInstance.field.category', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '流程分类', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 25. BPM流程实例-流程分类名称
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processInstance.field.categoryName';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例-流程分类名称', 'bpm.processInstance.field.categoryName', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstance.field.categoryName' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例-流程分类名称', 'bpm.processInstance.field.categoryName', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'category name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstance.field.categoryName' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例-流程分类名称', 'bpm.processInstance.field.categoryName', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '流程分类名称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 26. BPM流程实例-流程实例的状态
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processInstance.field.status';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例-流程实例的状态', 'bpm.processInstance.field.status', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstance.field.status' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例-流程实例的状态', 'bpm.processInstance.field.status', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstance.field.status' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例-流程实例的状态', 'bpm.processInstance.field.status', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '流程实例的状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 27. BPM流程实例-发起时间
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processInstance.field.startTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例-发起时间', 'bpm.processInstance.field.startTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstance.field.startTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例-发起时间', 'bpm.processInstance.field.startTime', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'start time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstance.field.startTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例-发起时间', 'bpm.processInstance.field.startTime', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '发起时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 28. BPM流程实例-结束时间
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processInstance.field.endTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例-结束时间', 'bpm.processInstance.field.endTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstance.field.endTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例-结束时间', 'bpm.processInstance.field.endTime', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'end time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstance.field.endTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例-结束时间', 'bpm.processInstance.field.endTime', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '结束时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 29. BPM流程实例-持续时间
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processInstance.field.durationInMillis';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例-持续时间', 'bpm.processInstance.field.durationInMillis', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstance.field.durationInMillis' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例-持续时间', 'bpm.processInstance.field.durationInMillis', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'duration', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstance.field.durationInMillis' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例-持续时间', 'bpm.processInstance.field.durationInMillis', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '持续时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 30. BPM流程实例-业务的唯一标识
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processInstance.field.businessKey';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例-业务的唯一标识', 'bpm.processInstance.field.businessKey', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstance.field.businessKey' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例-业务的唯一标识', 'bpm.processInstance.field.businessKey', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'business key', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstance.field.businessKey' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例-业务的唯一标识', 'bpm.processInstance.field.businessKey', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '业务的唯一标识', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 31. BPM流程实例-流程定义的编号
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processInstance.field.processDefinitionId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例-流程定义的编号', 'bpm.processInstance.field.processDefinitionId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstance.field.processDefinitionId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例-流程定义的编号', 'bpm.processInstance.field.processDefinitionId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'process definition id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstance.field.processDefinitionId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例-流程定义的编号', 'bpm.processInstance.field.processDefinitionId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '流程定义的编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 32. BPM流程实例-取消原因
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processInstance.field.reason';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例-取消原因', 'bpm.processInstance.field.reason', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstance.field.reason' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例-取消原因', 'bpm.processInstance.field.reason', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'reason', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstance.field.reason' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例-取消原因', 'bpm.processInstance.field.reason', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '取消原因', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 33. BPM流程实例-提交时间
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processInstance.field.submitTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例-提交时间', 'bpm.processInstance.field.submitTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstance.field.submitTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例-提交时间', 'bpm.processInstance.field.submitTime', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'submit time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstance.field.submitTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例-提交时间', 'bpm.processInstance.field.submitTime', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '提交时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- BPM 流程任务
-- =============================================

-- 34. BPM流程任务-任务编号
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.task.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务-任务编号', 'bpm.task.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务-任务编号', 'bpm.task.field.id', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务-任务编号', 'bpm.task.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '任务编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 35. BPM流程任务-任务名字
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.task.field.name';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务-任务名字', 'bpm.task.field.name', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.field.name' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务-任务名字', 'bpm.task.field.name', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.field.name' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务-任务名字', 'bpm.task.field.name', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '任务名字', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 36. BPM流程任务-创建时间
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.task.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务-创建时间', 'bpm.task.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务-创建时间', 'bpm.task.field.createTime', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务-创建时间', 'bpm.task.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '创建时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 37. BPM流程任务-结束时间
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.task.field.endTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务-结束时间', 'bpm.task.field.endTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.field.endTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务-结束时间', 'bpm.task.field.endTime', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'end time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.field.endTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务-结束时间', 'bpm.task.field.endTime', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '结束时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 38. BPM流程任务-持续时间
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.task.field.durationInMillis';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务-持续时间', 'bpm.task.field.durationInMillis', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.field.durationInMillis' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务-持续时间', 'bpm.task.field.durationInMillis', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'duration', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.field.durationInMillis' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务-持续时间', 'bpm.task.field.durationInMillis', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '持续时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 39. BPM流程任务-任务状态
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.task.field.status';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务-任务状态', 'bpm.task.field.status', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.field.status' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务-任务状态', 'bpm.task.field.status', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.field.status' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务-任务状态', 'bpm.task.field.status', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '任务状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 40. BPM流程任务-审批理由
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.task.field.reason';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务-审批理由', 'bpm.task.field.reason', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.field.reason' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务-审批理由', 'bpm.task.field.reason', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'reason', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.field.reason' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务-审批理由', 'bpm.task.field.reason', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '审批理由', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 41. BPM流程任务-任务定义的标识
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.task.field.taskDefinitionKey';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务-任务定义的标识', 'bpm.task.field.taskDefinitionKey', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.field.taskDefinitionKey' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务-任务定义的标识', 'bpm.task.field.taskDefinitionKey', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'task definition key', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.field.taskDefinitionKey' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务-任务定义的标识', 'bpm.task.field.taskDefinitionKey', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '任务定义的标识', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 42. BPM流程任务-所属流程实例编号
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.task.field.processInstanceId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务-所属流程实例编号', 'bpm.task.field.processInstanceId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.field.processInstanceId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务-所属流程实例编号', 'bpm.task.field.processInstanceId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'process instance id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.field.processInstanceId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务-所属流程实例编号', 'bpm.task.field.processInstanceId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '所属流程实例编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 43. BPM流程任务-父任务编号
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.task.field.parentTaskId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务-父任务编号', 'bpm.task.field.parentTaskId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.field.parentTaskId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务-父任务编号', 'bpm.task.field.parentTaskId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'parent task id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.field.parentTaskId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务-父任务编号', 'bpm.task.field.parentTaskId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '父任务编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 44. BPM流程任务-子任务列表
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.task.field.children';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务-子任务列表', 'bpm.task.field.children', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.field.children' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务-子任务列表', 'bpm.task.field.children', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'children', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.field.children' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务-子任务列表', 'bpm.task.field.children', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '子任务列表', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 45. BPM流程任务-表单编号
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.task.field.formId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务-表单编号', 'bpm.task.field.formId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.field.formId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务-表单编号', 'bpm.task.field.formId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'form id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.field.formId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务-表单编号', 'bpm.task.field.formId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '表单编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 46. BPM流程任务-表单名字
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.task.field.formName';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务-表单名字', 'bpm.task.field.formName', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.field.formName' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务-表单名字', 'bpm.task.field.formName', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'form name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.field.formName' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务-表单名字', 'bpm.task.field.formName', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '表单名字', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 47. BPM流程任务-表单的配置
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.task.field.formConf';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务-表单的配置', 'bpm.task.field.formConf', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.field.formConf' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务-表单的配置', 'bpm.task.field.formConf', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'form config', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.field.formConf' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务-表单的配置', 'bpm.task.field.formConf', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '表单的配置', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 48. BPM流程任务-表单项的数组
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.task.field.formFields';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务-表单项的数组', 'bpm.task.field.formFields', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.field.formFields' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务-表单项的数组', 'bpm.task.field.formFields', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'form fields', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.field.formFields' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务-表单项的数组', 'bpm.task.field.formFields', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '表单项的数组', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 49. BPM流程任务-提交的表单值
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.task.field.formVariables';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务-提交的表单值', 'bpm.task.field.formVariables', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.field.formVariables' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务-提交的表单值', 'bpm.task.field.formVariables', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'form variables', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.field.formVariables' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务-提交的表单值', 'bpm.task.field.formVariables', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '提交的表单值', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 50. BPM流程任务-操作按钮设置值
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.task.field.buttonsSetting';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务-操作按钮设置值', 'bpm.task.field.buttonsSetting', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.field.buttonsSetting' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务-操作按钮设置值', 'bpm.task.field.buttonsSetting', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'buttons setting', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.field.buttonsSetting' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务-操作按钮设置值', 'bpm.task.field.buttonsSetting', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '操作按钮设置值', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 51. BPM流程任务-是否需要签名
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.task.field.signEnable';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务-是否需要签名', 'bpm.task.field.signEnable', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.field.signEnable' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务-是否需要签名', 'bpm.task.field.signEnable', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'sign enable', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.field.signEnable' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务-是否需要签名', 'bpm.task.field.signEnable', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '是否需要签名', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 52. BPM流程任务-是否填写审批意见
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.task.field.reasonRequire';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务-是否填写审批意见', 'bpm.task.field.reasonRequire', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.field.reasonRequire' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务-是否填写审批意见', 'bpm.task.field.reasonRequire', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'reason require', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.field.reasonRequire' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务-是否填写审批意见', 'bpm.task.field.reasonRequire', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '是否填写审批意见', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 53. BPM流程任务-节点类型
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.task.field.nodeType';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务-节点类型', 'bpm.task.field.nodeType', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.field.nodeType' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务-节点类型', 'bpm.task.field.nodeType', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'node type', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.field.nodeType' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务-节点类型', 'bpm.task.field.nodeType', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '节点类型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
