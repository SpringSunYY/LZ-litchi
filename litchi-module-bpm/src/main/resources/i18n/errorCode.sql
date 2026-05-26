-- =============================================
-- bpm 模块错误码国际化 SQL
-- 生成时间：2026-05-25
-- 规范版本：v1.2
-- =============================================

-- ---------------------------------------------
-- 变量定义（运行时可覆盖）
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
-- OA 流程模块 1-009-001-000
-- =============================================

-- 1. 请假申请-不存在

DELETE FROM infra_i18n_key WHERE message_key = 'bpm.oaLeave.back.notExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请假申请-不存在', 'bpm.oaLeave.back.notExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 1. 请假申请-不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.oaLeave.back.notExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请假申请-不存在', 'bpm.oaLeave.back.notExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'leave application not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 1. 请假申请-不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.oaLeave.back.notExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请假申请-不存在', 'bpm.oaLeave.back.notExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '请假申请不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- 流程模型 1-009-002-000
-- =============================================

-- 2. 流程模型-key重复

DELETE FROM infra_i18n_key WHERE message_key = 'bpm.model.back.keyDuplicate';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程模型-key重复', 'bpm.model.back.keyDuplicate', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. 流程模型-key重复 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.model.back.keyDuplicate' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程模型-key重复', 'bpm.model.back.keyDuplicate', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'process with key ({}) already exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. 流程模型-key重复 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.model.back.keyDuplicate' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程模型-key重复', 'bpm.model.back.keyDuplicate', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '已经存在流程标识为【{}】的流程', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. 流程模型-不存在

DELETE FROM infra_i18n_key WHERE message_key = 'bpm.model.back.notExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程模型-不存在', 'bpm.model.back.notExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. 流程模型-不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.model.back.notExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程模型-不存在', 'bpm.model.back.notExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'process model not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. 流程模型-不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.model.back.notExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程模型-不存在', 'bpm.model.back.notExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '流程模型不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. 流程模型-key格式无效

DELETE FROM infra_i18n_key WHERE message_key = 'bpm.model.back.keyInvalid';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程模型-key格式无效', 'bpm.model.back.keyInvalid', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. 流程模型-key格式无效 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.model.back.keyInvalid' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程模型-key格式无效', 'bpm.model.back.keyInvalid', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'process key format is invalid, must start with letter or underscore, followed by letters, numbers, hyphens, underscores or dots', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. 流程模型-key格式无效 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.model.back.keyInvalid' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程模型-key格式无效', 'bpm.model.back.keyInvalid', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '流程标识格式不正确，需要以字母或下划线开头，后接任意字母、数字、中划线、下划线、句点！', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. 流程模型-表单未配置

DELETE FROM infra_i18n_key WHERE message_key = 'bpm.model.back.formNotConfigured';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程模型-表单未配置', 'bpm.model.back.formNotConfigured', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. 流程模型-表单未配置 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.model.back.formNotConfigured' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程模型-表单未配置', 'bpm.model.back.formNotConfigured', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'process deployment failed, form not configured, please click [Modify Process] button to configure', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. 流程模型-表单未配置 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.model.back.formNotConfigured' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程模型-表单未配置', 'bpm.model.back.formNotConfigured', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '部署流程失败，原因：流程表单未配置，请点击【修改流程】按钮进行配置', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 6. 流程模型-审批人未配置

DELETE FROM infra_i18n_key WHERE message_key = 'bpm.model.back.candidateNotConfigured';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程模型-审批人未配置', 'bpm.model.back.candidateNotConfigured', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 6. 流程模型-审批人未配置 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.model.back.candidateNotConfigured' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程模型-审批人未配置', 'bpm.model.back.candidateNotConfigured', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'process deployment failed, user task ({}) approver not configured, please click [Process Design] button and configure [Task Approver]', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 6. 流程模型-审批人未配置 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.model.back.candidateNotConfigured' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程模型-审批人未配置', 'bpm.model.back.candidateNotConfigured', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '部署流程失败，原因：用户任务({})未配置审批人，请点击【流程设计】按钮，选择该它的【任务（审批人）】进行配置', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 7. 流程模型-开始事件缺失

DELETE FROM infra_i18n_key WHERE message_key = 'bpm.model.back.startEventMissing';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程模型-开始事件缺失', 'bpm.model.back.startEventMissing', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 7. 流程模型-开始事件缺失 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.model.back.startEventMissing' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程模型-开始事件缺失', 'bpm.model.back.startEventMissing', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'process deployment failed, BPMN diagram has no start event', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 7. 流程模型-开始事件缺失 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.model.back.startEventMissing' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程模型-开始事件缺失', 'bpm.model.back.startEventMissing', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '部署流程失败，原因：BPMN 流程图中，没有开始事件', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 8. 流程模型-用户任务名称缺失

DELETE FROM infra_i18n_key WHERE message_key = 'bpm.model.back.userTaskNameMissing';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程模型-用户任务名称缺失', 'bpm.model.back.userTaskNameMissing', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 8. 流程模型-用户任务名称缺失 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.model.back.userTaskNameMissing' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程模型-用户任务名称缺失', 'bpm.model.back.userTaskNameMissing', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'process deployment failed, BPMN diagram user task ({}) name not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 8. 流程模型-用户任务名称缺失 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.model.back.userTaskNameMissing' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程模型-用户任务名称缺失', 'bpm.model.back.userTaskNameMissing', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '部署流程失败，原因：BPMN 流程图中，用户任务({})的名字不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 9. 流程模型-非管理员

DELETE FROM infra_i18n_key WHERE message_key = 'bpm.model.back.notManager';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程模型-非管理员', 'bpm.model.back.notManager', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 9. 流程模型-非管理员 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.model.back.notManager' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程模型-非管理员', 'bpm.model.back.notManager', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'process operation failed, you are not the administrator of process ({})', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 9. 流程模型-非管理员 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.model.back.notManager' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程模型-非管理员', 'bpm.model.back.notManager', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '操作流程失败，原因：你不是该流程({})的管理员', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 10. 流程模型-首个任务策略无效

DELETE FROM infra_i18n_key WHERE message_key = 'bpm.model.back.firstTaskStrategyInvalid';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程模型-首个任务策略无效', 'bpm.model.back.firstTaskStrategyInvalid', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 10. 流程模型-首个任务策略无效 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.model.back.firstTaskStrategyInvalid' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程模型-首个任务策略无效', 'bpm.model.back.firstTaskStrategyInvalid', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'process deployment failed, first task ({}) approver cannot be [Approver Self-Select]', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 10. 流程模型-首个任务策略无效 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.model.back.firstTaskStrategyInvalid' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程模型-首个任务策略无效', 'bpm.model.back.firstTaskStrategyInvalid', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '部署流程失败，原因：首个任务({})的审批人不能是【审批人自选】', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- 流程定义 1-009-003-000
-- =============================================

-- 11. 流程定义-key不匹配

DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processDefinition.back.keyMismatch';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程定义-key不匹配', 'bpm.processDefinition.back.keyMismatch', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 11. 流程定义-key不匹配 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinition.back.keyMismatch' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程定义-key不匹配', 'bpm.processDefinition.back.keyMismatch', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'process definition key mismatch, expected ({}), current ({}), please modify BPMN diagram', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 11. 流程定义-key不匹配 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinition.back.keyMismatch' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程定义-key不匹配', 'bpm.processDefinition.back.keyMismatch', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '流程定义的标识期望是({})，当前是({})，请修改 BPMN 流程图', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 12. 流程定义-名称不匹配

DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processDefinition.back.nameMismatch';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程定义-名称不匹配', 'bpm.processDefinition.back.nameMismatch', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 12. 流程定义-名称不匹配 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinition.back.nameMismatch' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程定义-名称不匹配', 'bpm.processDefinition.back.nameMismatch', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'process definition name mismatch, expected ({}), current ({})', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 12. 流程定义-名称不匹配 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinition.back.nameMismatch' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程定义-名称不匹配', 'bpm.processDefinition.back.nameMismatch', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '流程定义的名字期望是({})，当前是({})，请修改 BPMN 流程图', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 13. 流程定义-不存在

DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processDefinition.back.notExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程定义-不存在', 'bpm.processDefinition.back.notExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 13. 流程定义-不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinition.back.notExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程定义-不存在', 'bpm.processDefinition.back.notExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'process definition not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 13. 流程定义-不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinition.back.notExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程定义-不存在', 'bpm.processDefinition.back.notExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '流程定义不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 14. 流程定义-挂起

DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processDefinition.back.suspended';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程定义-挂起', 'bpm.processDefinition.back.suspended', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 14. 流程定义-挂起 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinition.back.suspended' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程定义-挂起', 'bpm.processDefinition.back.suspended', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'process definition is suspended', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 14. 流程定义-挂起 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinition.back.suspended' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程定义-挂起', 'bpm.processDefinition.back.suspended', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '流程定义处于挂起状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- 流程实例 1-009-004-000
-- =============================================

-- 15. 流程实例-不存在

DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processInstance.back.notExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程实例-不存在', 'bpm.processInstance.back.notExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 15. 流程实例-不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstance.back.notExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程实例-不存在', 'bpm.processInstance.back.notExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'process instance not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 15. 流程实例-不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstance.back.notExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程实例-不存在', 'bpm.processInstance.back.notExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '流程实例不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 16. 流程实例-取消不允许

DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processInstance.back.cancelNotAllowed';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程实例-取消不允许', 'bpm.processInstance.back.cancelNotAllowed', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 16. 流程实例-取消不允许 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstance.back.cancelNotAllowed' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程实例-取消不允许', 'bpm.processInstance.back.cancelNotAllowed', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'process cancel failed, process is not in running status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 16. 流程实例-取消不允许 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstance.back.cancelNotAllowed' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程实例-取消不允许', 'bpm.processInstance.back.cancelNotAllowed', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '流程取消失败，流程不处于运行中', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 17. 流程实例-非发起人

DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processInstance.back.notOwner';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程实例-非发起人', 'bpm.processInstance.back.notOwner', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 17. 流程实例-非发起人 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstance.back.notOwner' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程实例-非发起人', 'bpm.processInstance.back.notOwner', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'process cancel failed, this process was not initiated by you', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 17. 流程实例-非发起人 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstance.back.notOwner' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程实例-非发起人', 'bpm.processInstance.back.notOwner', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '流程取消失败，该流程不是你发起的', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 18. 流程实例-候选人未配置

DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processInstance.back.assigneeNotConfigured';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程实例-候选人未配置', 'bpm.processInstance.back.assigneeNotConfigured', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 18. 流程实例-候选人未配置 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstance.back.assigneeNotConfigured' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程实例-候选人未配置', 'bpm.processInstance.back.assigneeNotConfigured', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'task ({}) candidate not configured', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 18. 流程实例-候选人未配置 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstance.back.assigneeNotConfigured' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程实例-候选人未配置', 'bpm.processInstance.back.assigneeNotConfigured', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '任务({})的候选人未配置', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 19. 流程实例-候选人不存在

DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processInstance.back.assigneeNotFound';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程实例-候选人不存在', 'bpm.processInstance.back.assigneeNotFound', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 19. 流程实例-候选人不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstance.back.assigneeNotFound' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程实例-候选人不存在', 'bpm.processInstance.back.assigneeNotFound', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'task ({}) candidate ({}) not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 19. 流程实例-候选人不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstance.back.assigneeNotFound' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程实例-候选人不存在', 'bpm.processInstance.back.assigneeNotFound', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '任务({})的候选人({})不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 20. 流程实例-无权发起

DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processInstance.back.permissionDenied';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程实例-无权发起', 'bpm.processInstance.back.permissionDenied', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 20. 流程实例-无权发起 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstance.back.permissionDenied' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程实例-无权发起', 'bpm.processInstance.back.permissionDenied', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'process start failed, you do not have permission to start this process', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 20. 流程实例-无权发起 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstance.back.permissionDenied' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程实例-无权发起', 'bpm.processInstance.back.permissionDenied', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '发起流程失败，你没有权限发起该流程', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 21. 流程实例-取消禁止

DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processInstance.back.cancelProhibited';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程实例-取消禁止', 'bpm.processInstance.back.cancelProhibited', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 21. 流程实例-取消禁止 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstance.back.cancelProhibited' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程实例-取消禁止', 'bpm.processInstance.back.cancelProhibited', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'process cancel failed, this process does not allow cancellation', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 21. 流程实例-取消禁止 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstance.back.cancelProhibited' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程实例-取消禁止', 'bpm.processInstance.back.cancelProhibited', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '流程取消失败，该流程不允许取消', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 22. 流程实例-Http触发器错误

DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processInstance.back.httpTriggerError';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程实例-Http触发器错误', 'bpm.processInstance.back.httpTriggerError', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 22. 流程实例-Http触发器错误 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstance.back.httpTriggerError' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程实例-Http触发器错误', 'bpm.processInstance.back.httpTriggerError', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'process HTTP trigger request call failed', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 22. 流程实例-Http触发器错误 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstance.back.httpTriggerError' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程实例-Http触发器错误', 'bpm.processInstance.back.httpTriggerError', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '流程 Http 触发器请求调用失败', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 23. 流程实例-审批候选人未配置

DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processInstance.back.approvalAssigneeNotConfigured';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程实例-审批候选人未配置', 'bpm.processInstance.back.approvalAssigneeNotConfigured', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 23. 流程实例-审批候选人未配置 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstance.back.approvalAssigneeNotConfigured' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程实例-审批候选人未配置', 'bpm.processInstance.back.approvalAssigneeNotConfigured', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'next task ({}) approver not configured', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 23. 流程实例-审批候选人未配置 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstance.back.approvalAssigneeNotConfigured' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程实例-审批候选人未配置', 'bpm.processInstance.back.approvalAssigneeNotConfigured', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '下一个任务({})的审批人未配置', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 24. 流程实例-子流程取消禁止

DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processInstance.back.subprocessCancelProhibited';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程实例-子流程取消禁止', 'bpm.processInstance.back.subprocessCancelProhibited', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 24. 流程实例-子流程取消禁止 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstance.back.subprocessCancelProhibited' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程实例-子流程取消禁止', 'bpm.processInstance.back.subprocessCancelProhibited', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'subprocess cancel failed, subprocess does not allow cancellation', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 24. 流程实例-子流程取消禁止 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstance.back.subprocessCancelProhibited' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程实例-子流程取消禁止', 'bpm.processInstance.back.subprocessCancelProhibited', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '子流程取消失败，子流程不允许取消', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- 流程任务 1-009-005-000
-- =============================================

-- 25. 流程任务-审批人不匹配

DELETE FROM infra_i18n_key WHERE message_key = 'bpm.task.back.assigneeMismatch';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程任务-审批人不匹配', 'bpm.task.back.assigneeMismatch', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 25. 流程任务-审批人不匹配 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.back.assigneeMismatch' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程任务-审批人不匹配', 'bpm.task.back.assigneeMismatch', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'operation failed, you are not the approver of this task', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 25. 流程任务-审批人不匹配 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.back.assigneeMismatch' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程任务-审批人不匹配', 'bpm.task.back.assigneeMismatch', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '操作失败，原因：该任务的审批人不是你', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 26. 流程任务-不存在

DELETE FROM infra_i18n_key WHERE message_key = 'bpm.task.back.notExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程任务-不存在', 'bpm.task.back.notExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 26. 流程任务-不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.back.notExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程任务-不存在', 'bpm.task.back.notExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'process task not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 26. 流程任务-不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.back.notExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程任务-不存在', 'bpm.task.back.notExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '流程任务不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 27. 流程任务-挂起

DELETE FROM infra_i18n_key WHERE message_key = 'bpm.task.back.suspended';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程任务-挂起', 'bpm.task.back.suspended', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 27. 流程任务-挂起 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.back.suspended' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程任务-挂起', 'bpm.task.back.suspended', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'current task is suspended, cannot operate', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 27. 流程任务-挂起 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.back.suspended' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程任务-挂起', 'bpm.task.back.suspended', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '当前任务处于挂起状态，不能操作', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 28. 流程任务-目标节点不存在

DELETE FROM infra_i18n_key WHERE message_key = 'bpm.task.back.targetNodeNotFound';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程任务-目标节点不存在', 'bpm.task.back.targetNodeNotFound', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 28. 流程任务-目标节点不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.back.targetNodeNotFound' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程任务-目标节点不存在', 'bpm.task.back.targetNodeNotFound', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'target node not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 28. 流程任务-目标节点不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.back.targetNodeNotFound' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程任务-目标节点不存在', 'bpm.task.back.targetNodeNotFound', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '目标节点不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 29. 流程任务-退回节点错误

DELETE FROM infra_i18n_key WHERE message_key = 'bpm.task.back.returnNodeError';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程任务-退回节点错误', 'bpm.task.back.returnNodeError', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 29. 流程任务-退回节点错误 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.back.returnNodeError' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程任务-退回节点错误', 'bpm.task.back.returnNodeError', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'task return failed, target node is on parallel gateway or not on same route, cannot jump', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 29. 流程任务-退回节点错误 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.back.returnNodeError' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程任务-退回节点错误', 'bpm.task.back.returnNodeError', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '退回任务失败，目标节点是在并行网关上或非同一路线上，不可跳转', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 30. 流程任务-委派自身错误

DELETE FROM infra_i18n_key WHERE message_key = 'bpm.task.back.delegateSelfError';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程任务-委派自身错误', 'bpm.task.back.delegateSelfError', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 30. 流程任务-委派自身错误 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.back.delegateSelfError' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程任务-委派自身错误', 'bpm.task.back.delegateSelfError', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'task delegate failed, delegator and current approver cannot be the same person', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 30. 流程任务-委派自身错误 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.back.delegateSelfError' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程任务-委派自身错误', 'bpm.task.back.delegateSelfError', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '任务委派失败，委派人和当前审批人为同一人', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 31. 流程任务-委派用户不存在

DELETE FROM infra_i18n_key WHERE message_key = 'bpm.task.back.delegateUserNotFound';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程任务-委派用户不存在', 'bpm.task.back.delegateUserNotFound', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 31. 流程任务-委派用户不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.back.delegateUserNotFound' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程任务-委派用户不存在', 'bpm.task.back.delegateUserNotFound', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'task delegate failed, delegated user not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 31. 流程任务-委派用户不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.back.delegateUserNotFound' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程任务-委派用户不存在', 'bpm.task.back.delegateUserNotFound', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '任务委派失败，被委派人不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 32. 流程任务-加签用户不存在

DELETE FROM infra_i18n_key WHERE message_key = 'bpm.task.back.addSignUserNotFound';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程任务-加签用户不存在', 'bpm.task.back.addSignUserNotFound', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 32. 流程任务-加签用户不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.back.addSignUserNotFound' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程任务-加签用户不存在', 'bpm.task.back.addSignUserNotFound', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'task add-sign: selected user not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 32. 流程任务-加签用户不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.back.addSignUserNotFound' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程任务-加签用户不存在', 'bpm.task.back.addSignUserNotFound', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '任务加签：选择的用户不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 33. 流程任务-加签状态无效

DELETE FROM infra_i18n_key WHERE message_key = 'bpm.task.back.addSignStatusInvalid';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程任务-加签状态无效', 'bpm.task.back.addSignStatusInvalid', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 33. 流程任务-加签状态无效 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.back.addSignStatusInvalid' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程任务-加签状态无效', 'bpm.task.back.addSignStatusInvalid', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'task add-sign: current task already {}, cannot {}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 33. 流程任务-加签状态无效 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.back.addSignStatusInvalid' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程任务-加签状态无效', 'bpm.task.back.addSignStatusInvalid', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '任务加签：当前任务已经{}，不能{}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 34. 流程任务-加签用户重复

DELETE FROM infra_i18n_key WHERE message_key = 'bpm.task.back.addSignUserDuplicate';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程任务-加签用户重复', 'bpm.task.back.addSignUserDuplicate', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 34. 流程任务-加签用户重复 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.back.addSignUserDuplicate' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程任务-加签用户重复', 'bpm.task.back.addSignUserDuplicate', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'task add-sign failed, added user duplicates with existing approver [{}]', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 34. 流程任务-加签用户重复 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.back.addSignUserDuplicate' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程任务-加签用户重复', 'bpm.task.back.addSignUserDuplicate', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '任务加签失败，加签人与现有审批人[{}]重复', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 35. 流程任务-减签无效

DELETE FROM infra_i18n_key WHERE message_key = 'bpm.task.back.removeSignInvalid';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程任务-减签无效', 'bpm.task.back.removeSignInvalid', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 35. 流程任务-减签无效 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.back.removeSignInvalid' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程任务-减签无效', 'bpm.task.back.removeSignInvalid', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'task remove-sign failed, task to be removed must be generated by add-sign', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 35. 流程任务-减签无效 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.back.removeSignInvalid' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程任务-减签无效', 'bpm.task.back.removeSignInvalid', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '任务减签失败，被减签的任务必须是通过加签生成的任务', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 36. 流程任务-转办自身错误

DELETE FROM infra_i18n_key WHERE message_key = 'bpm.task.back.transferSelfError';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程任务-转办自身错误', 'bpm.task.back.transferSelfError', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 36. 流程任务-转办自身错误 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.back.transferSelfError' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程任务-转办自身错误', 'bpm.task.back.transferSelfError', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'task transfer failed, transferor and current approver cannot be the same person', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 36. 流程任务-转办自身错误 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.back.transferSelfError' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程任务-转办自身错误', 'bpm.task.back.transferSelfError', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '任务转办失败，转办人和当前审批人为同一人', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 37. 流程任务-转办用户不存在

DELETE FROM infra_i18n_key WHERE message_key = 'bpm.task.back.transferUserNotFound';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程任务-转办用户不存在', 'bpm.task.back.transferUserNotFound', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 37. 流程任务-转办用户不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.back.transferUserNotFound' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程任务-转办用户不存在', 'bpm.task.back.transferUserNotFound', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'task transfer failed, transfer target user not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 37. 流程任务-转办用户不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.back.transferUserNotFound' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程任务-转办用户不存在', 'bpm.task.back.transferUserNotFound', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '任务转办失败，转办人不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 38. 流程任务-候选人找不到

DELETE FROM infra_i18n_key WHERE message_key = 'bpm.task.back.candidateNotFound';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程任务-候选人找不到', 'bpm.task.back.candidateNotFound', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 38. 流程任务-候选人找不到 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.back.candidateNotFound' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程任务-候选人找不到', 'bpm.task.back.candidateNotFound', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'operation failed, task approver not found', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 38. 流程任务-候选人找不到 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.back.candidateNotFound' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程任务-候选人找不到', 'bpm.task.back.candidateNotFound', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '操作失败，原因：找不到任务的审批人！', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 39. 流程任务-签名为空

DELETE FROM infra_i18n_key WHERE message_key = 'bpm.task.back.signatureRequired';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程任务-签名为空', 'bpm.task.back.signatureRequired', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 39. 流程任务-签名为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.back.signatureRequired' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程任务-签名为空', 'bpm.task.back.signatureRequired', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'signature cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 39. 流程任务-签名为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.back.signatureRequired' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程任务-签名为空', 'bpm.task.back.signatureRequired', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '签名不能为空！', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 40. 流程任务-审批意见必填

DELETE FROM infra_i18n_key WHERE message_key = 'bpm.task.back.reasonRequired';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程任务-审批意见必填', 'bpm.task.back.reasonRequired', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 40. 流程任务-审批意见必填 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.back.reasonRequired' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程任务-审批意见必填', 'bpm.task.back.reasonRequired', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'approval comment cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 40. 流程任务-审批意见必填 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.back.reasonRequired' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程任务-审批意见必填', 'bpm.task.back.reasonRequired', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '审批意见不能为空！', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- 动态表单模块 1-009-010-000
-- =============================================

-- 41. 动态表单-不存在

DELETE FROM infra_i18n_key WHERE message_key = 'bpm.form.back.notExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('动态表单-不存在', 'bpm.form.back.notExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 41. 动态表单-不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.form.back.notExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('动态表单-不存在', 'bpm.form.back.notExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'dynamic form not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 41. 动态表单-不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.form.back.notExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('动态表单-不存在', 'bpm.form.back.notExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '动态表单不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 42. 动态表单-字段重复

DELETE FROM infra_i18n_key WHERE message_key = 'bpm.form.back.fieldDuplicate';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('动态表单-字段重复', 'bpm.form.back.fieldDuplicate', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 42. 动态表单-字段重复 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.form.back.fieldDuplicate' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('动态表单-字段重复', 'bpm.form.back.fieldDuplicate', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'form fields ({}) and ({}) use the same field name ({})', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 42. 动态表单-字段重复 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.form.back.fieldDuplicate' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('动态表单-字段重复', 'bpm.form.back.fieldDuplicate', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '表单项({}) 和 ({}) 使用了相同的字段名({})', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- 用户组模块 1-009-011-000
-- =============================================

-- 43. 用户分组-不存在

DELETE FROM infra_i18n_key WHERE message_key = 'bpm.userGroup.back.notExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户分组-不存在', 'bpm.userGroup.back.notExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 43. 用户分组-不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.userGroup.back.notExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户分组-不存在', 'bpm.userGroup.back.notExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'user group not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 43. 用户分组-不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.userGroup.back.notExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户分组-不存在', 'bpm.userGroup.back.notExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '用户分组不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 44. 用户分组-已禁用

DELETE FROM infra_i18n_key WHERE message_key = 'bpm.userGroup.back.disabled';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户分组-已禁用', 'bpm.userGroup.back.disabled', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 44. 用户分组-已禁用 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.userGroup.back.disabled' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户分组-已禁用', 'bpm.userGroup.back.disabled', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'user group ({}) is disabled', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 44. 用户分组-已禁用 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.userGroup.back.disabled' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户分组-已禁用', 'bpm.userGroup.back.disabled', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '名字为【{}】的用户分组已被禁用', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- 流程分类模块 1-009-012-000
-- =============================================

-- 45. 流程分类-不存在

DELETE FROM infra_i18n_key WHERE message_key = 'bpm.category.back.notExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程分类-不存在', 'bpm.category.back.notExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 45. 流程分类-不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.category.back.notExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程分类-不存在', 'bpm.category.back.notExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'process category not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 45. 流程分类-不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.category.back.notExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程分类-不存在', 'bpm.category.back.notExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '流程分类不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 46. 流程分类-名称重复

DELETE FROM infra_i18n_key WHERE message_key = 'bpm.category.back.nameDuplicate';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程分类-名称重复', 'bpm.category.back.nameDuplicate', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 46. 流程分类-名称重复 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.category.back.nameDuplicate' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程分类-名称重复', 'bpm.category.back.nameDuplicate', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'process category name ({}) already exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 46. 流程分类-名称重复 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.category.back.nameDuplicate' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程分类-名称重复', 'bpm.category.back.nameDuplicate', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '流程分类名字【{}】重复', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 47. 流程分类-编码重复

DELETE FROM infra_i18n_key WHERE message_key = 'bpm.category.back.codeDuplicate';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程分类-编码重复', 'bpm.category.back.codeDuplicate', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 47. 流程分类-编码重复 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.category.back.codeDuplicate' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程分类-编码重复', 'bpm.category.back.codeDuplicate', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'process category code ({}) already exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 47. 流程分类-编码重复 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.category.back.codeDuplicate' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程分类-编码重复', 'bpm.category.back.codeDuplicate', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '流程分类编码【{}】重复', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- BPM 流程监听器 1-009-013-000
-- =============================================

-- 48. 流程监听器-不存在

DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processListener.back.notExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程监听器-不存在', 'bpm.processListener.back.notExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 48. 流程监听器-不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processListener.back.notExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程监听器-不存在', 'bpm.processListener.back.notExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'process listener not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 48. 流程监听器-不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processListener.back.notExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程监听器-不存在', 'bpm.processListener.back.notExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '流程监听器不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 49. 流程监听器-类不存在

DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processListener.back.classNotFound';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程监听器-类不存在', 'bpm.processListener.back.classNotFound', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 49. 流程监听器-类不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processListener.back.classNotFound' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程监听器-类不存在', 'bpm.processListener.back.classNotFound', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'process listener class ({}) not found', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 49. 流程监听器-类不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processListener.back.classNotFound' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程监听器-类不存在', 'bpm.processListener.back.classNotFound', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '流程监听器类({})不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 50. 流程监听器-类实现错误

DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processListener.back.classImplementsInvalid';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程监听器-类实现错误', 'bpm.processListener.back.classImplementsInvalid', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 50. 流程监听器-类实现错误 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processListener.back.classImplementsInvalid' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程监听器-类实现错误', 'bpm.processListener.back.classImplementsInvalid', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'process listener class ({}) does not implement interface ({})', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 50. 流程监听器-类实现错误 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processListener.back.classImplementsInvalid' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程监听器-类实现错误', 'bpm.processListener.back.classImplementsInvalid', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '流程监听器类({})没有实现接口({})', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 51. 流程监听器-表达式无效

DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processListener.back.expressionInvalid';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程监听器-表达式无效', 'bpm.processListener.back.expressionInvalid', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 51. 流程监听器-表达式无效 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processListener.back.expressionInvalid' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程监听器-表达式无效', 'bpm.processListener.back.expressionInvalid', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'process listener expression ({}) is invalid', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 51. 流程监听器-表达式无效 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processListener.back.expressionInvalid' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程监听器-表达式无效', 'bpm.processListener.back.expressionInvalid', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '流程监听器表达式({})不合法', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- BPM 流程表达式 1-009-014-000
-- =============================================

-- 52. 流程表达式-不存在

DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processExpression.back.notExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程表达式-不存在', 'bpm.processExpression.back.notExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 52. 流程表达式-不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processExpression.back.notExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程表达式-不存在', 'bpm.processExpression.back.notExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'process expression not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 52. 流程表达式-不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processExpression.back.notExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程表达式-不存在', 'bpm.processExpression.back.notExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '流程表达式不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
