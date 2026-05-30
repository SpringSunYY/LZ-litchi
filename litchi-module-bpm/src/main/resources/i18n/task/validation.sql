-- =============================================
-- BPM 流程任务 校验消息国际化 SQL
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
-- BPM 流程任务
-- =============================================

-- 1. BPM流程任务-任务编号不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.task.back.id.notEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务-任务编号不能为空', 'bpm.task.back.id.notEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 1. BPM流程任务-任务编号不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.back.id.notEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务-任务编号不能为空', 'bpm.task.back.id.notEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm task id cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 1. BPM流程任务-任务编号不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.back.id.notEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务-任务编号不能为空', 'bpm.task.back.id.notEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM流程任务任务编号不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- BPM 流程实例
-- =============================================

-- 2. BPM流程实例-流程定义编号不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processInstance.back.processDefinitionId.notEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例-流程定义编号不能为空', 'bpm.processInstance.back.processDefinitionId.notEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. BPM流程实例-流程定义编号不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstance.back.processDefinitionId.notEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例-流程定义编号不能为空', 'bpm.processInstance.back.processDefinitionId.notEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm process instance process definition id cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. BPM流程实例-流程定义编号不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstance.back.processDefinitionId.notEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例-流程定义编号不能为空', 'bpm.processInstance.back.processDefinitionId.notEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM流程实例流程定义编号不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. BPM流程实例-流程实例编号不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processInstance.back.id.notEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例-流程实例编号不能为空', 'bpm.processInstance.back.id.notEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. BPM流程实例-流程实例编号不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstance.back.id.notEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例-流程实例编号不能为空', 'bpm.processInstance.back.id.notEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm process instance id cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. BPM流程实例-流程实例编号不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstance.back.id.notEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例-流程实例编号不能为空', 'bpm.processInstance.back.id.notEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM流程实例流程实例编号不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. BPM流程实例-取消原因不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processInstance.back.reason.notEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例-取消原因不能为空', 'bpm.processInstance.back.reason.notEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. BPM流程实例-取消原因不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstance.back.reason.notEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例-取消原因不能为空', 'bpm.processInstance.back.reason.notEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm process instance cancel reason cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. BPM流程实例-取消原因不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstance.back.reason.notEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例-取消原因不能为空', 'bpm.processInstance.back.reason.notEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM流程实例取消原因不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. BPM流程实例-流程实例状态不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processInstance.back.status.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例-流程实例状态不能为空', 'bpm.processInstance.back.status.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. BPM流程实例-流程实例状态不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstance.back.status.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例-流程实例状态不能为空', 'bpm.processInstance.back.status.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm process instance status cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. BPM流程实例-流程实例状态不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstance.back.status.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例-流程实例状态不能为空', 'bpm.processInstance.back.status.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM流程实例流程实例状态不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- BPM 审批详情
-- =============================================

-- 6. BPM审批详情-流程定义的编号和流程实例的编号不能同时为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.approvalDetail.back.validProcessParam.assertTrue';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM审批详情-流程定义的编号和流程实例的编号不能同时为空', 'bpm.approvalDetail.back.validProcessParam.assertTrue', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 6. BPM审批详情-流程定义的编号和流程实例的编号不能同时为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.approvalDetail.back.validProcessParam.assertTrue' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM审批详情-流程定义的编号和流程实例的编号不能同时为空', 'bpm.approvalDetail.back.validProcessParam.assertTrue', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm approval detail process definition id and process instance id cannot both be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 6. BPM审批详情-流程定义的编号和流程实例的编号不能同时为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.approvalDetail.back.validProcessParam.assertTrue' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM审批详情-流程定义的编号和流程实例的编号不能同时为空', 'bpm.approvalDetail.back.validProcessParam.assertTrue', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM审批详情流程定义的编号和流程实例的编号不能同时为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- BPM 流程任务加签
-- =============================================

-- 7. BPM流程任务加签-加签用户不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.taskSign.back.userIds.notEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务加签-加签用户不能为空', 'bpm.taskSign.back.userIds.notEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 7. BPM流程任务加签-加签用户不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.taskSign.back.userIds.notEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务加签-加签用户不能为空', 'bpm.taskSign.back.userIds.notEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm task sign user ids cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 7. BPM流程任务加签-加签用户不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.taskSign.back.userIds.notEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务加签-加签用户不能为空', 'bpm.taskSign.back.userIds.notEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM流程任务加签加签用户不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 8. BPM流程任务加签-加签类型不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.taskSign.back.type.notEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务加签-加签类型不能为空', 'bpm.taskSign.back.type.notEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 8. BPM流程任务加签-加签类型不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.taskSign.back.type.notEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务加签-加签类型不能为空', 'bpm.taskSign.back.type.notEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm task sign type cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 8. BPM流程任务加签-加签类型不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.taskSign.back.type.notEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务加签-加签类型不能为空', 'bpm.taskSign.back.type.notEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM流程任务加签加签类型不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 9. BPM流程任务加签-加签原因不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.taskSign.back.reason.notEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务加签-加签原因不能为空', 'bpm.taskSign.back.reason.notEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 9. BPM流程任务加签-加签原因不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.taskSign.back.reason.notEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务加签-加签原因不能为空', 'bpm.taskSign.back.reason.notEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm task sign reason cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 9. BPM流程任务加签-加签原因不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.taskSign.back.reason.notEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务加签-加签原因不能为空', 'bpm.taskSign.back.reason.notEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM流程任务加签加签原因不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- BPM 流程任务退回
-- =============================================

-- 10. BPM流程任务退回-退回到的任务 Key 不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.task.back.targetTaskDefinitionKey.notEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务退回-退回到的任务 Key 不能为空', 'bpm.task.back.targetTaskDefinitionKey.notEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 10. BPM流程任务退回-退回到的任务 Key 不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.back.targetTaskDefinitionKey.notEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务退回-退回到的任务 Key 不能为空', 'bpm.task.back.targetTaskDefinitionKey.notEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm task return target task definition key cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 10. BPM流程任务退回-退回到的任务 Key 不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.back.targetTaskDefinitionKey.notEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务退回-退回到的任务 Key 不能为空', 'bpm.task.back.targetTaskDefinitionKey.notEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM流程任务退回退回到的任务 Key 不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 11. BPM流程任务退回-退回意见不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.task.back.reason.notEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务退回-退回意见不能为空', 'bpm.task.back.reason.notEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 11. BPM流程任务退回-退回意见不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.back.reason.notEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务退回-退回意见不能为空', 'bpm.task.back.reason.notEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm task return reason cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 11. BPM流程任务退回-退回意见不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.back.reason.notEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务退回-退回意见不能为空', 'bpm.task.back.reason.notEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM流程任务退回退回意见不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- BPM 流程任务委派
-- =============================================

-- 12. BPM流程任务委派-被委派人 ID 不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.taskDelegate.back.delegateUserId.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务委派-被委派人 ID 不能为空', 'bpm.taskDelegate.back.delegateUserId.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 12. BPM流程任务委派-被委派人 ID 不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.taskDelegate.back.delegateUserId.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务委派-被委派人 ID 不能为空', 'bpm.taskDelegate.back.delegateUserId.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm task delegate user id cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 12. BPM流程任务委派-被委派人 ID 不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.taskDelegate.back.delegateUserId.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务委派-被委派人 ID 不能为空', 'bpm.taskDelegate.back.delegateUserId.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM流程任务委派被委派人 ID 不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 13. BPM流程任务委派-委派原因不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.taskDelegate.back.reason.notEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务委派-委派原因不能为空', 'bpm.taskDelegate.back.reason.notEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 13. BPM流程任务委派-委派原因不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.taskDelegate.back.reason.notEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务委派-委派原因不能为空', 'bpm.taskDelegate.back.reason.notEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm task delegate reason cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 13. BPM流程任务委派-委派原因不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.taskDelegate.back.reason.notEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务委派-委派原因不能为空', 'bpm.taskDelegate.back.reason.notEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM流程任务委派委派原因不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- BPM 流程任务转办
-- =============================================

-- 14. BPM流程任务转办-新审批人的用户编号不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.taskTransfer.back.assigneeUserId.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务转办-新审批人的用户编号不能为空', 'bpm.taskTransfer.back.assigneeUserId.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 14. BPM流程任务转办-新审批人的用户编号不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.taskTransfer.back.assigneeUserId.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务转办-新审批人的用户编号不能为空', 'bpm.taskTransfer.back.assigneeUserId.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm task transfer assignee user id cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 14. BPM流程任务转办-新审批人的用户编号不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.taskTransfer.back.assigneeUserId.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务转办-新审批人的用户编号不能为空', 'bpm.taskTransfer.back.assigneeUserId.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM流程任务转办新审批人的用户编号不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 15. BPM流程任务转办-转办原因不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.taskTransfer.back.reason.notEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务转办-转办原因不能为空', 'bpm.taskTransfer.back.reason.notEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 15. BPM流程任务转办-转办原因不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.taskTransfer.back.reason.notEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务转办-转办原因不能为空', 'bpm.taskTransfer.back.reason.notEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm task transfer reason cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 15. BPM流程任务转办-转办原因不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.taskTransfer.back.reason.notEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务转办-转办原因不能为空', 'bpm.taskTransfer.back.reason.notEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM流程任务转办转办原因不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- BPM 流程任务抄送
-- =============================================

-- 16. BPM流程任务抄送-抄送用户不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.taskCopy.back.copyUserIds.notEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务抄送-抄送用户不能为空', 'bpm.taskCopy.back.copyUserIds.notEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 16. BPM流程任务抄送-抄送用户不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.taskCopy.back.copyUserIds.notEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务抄送-抄送用户不能为空', 'bpm.taskCopy.back.copyUserIds.notEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm task copy user ids cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 16. BPM流程任务抄送-抄送用户不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.taskCopy.back.copyUserIds.notEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务抄送-抄送用户不能为空', 'bpm.taskCopy.back.copyUserIds.notEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM流程任务抄送抄送用户不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
