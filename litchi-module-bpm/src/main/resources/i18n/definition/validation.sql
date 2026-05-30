-- =============================================
-- BPM 定义模块 校验消息国际化 SQL
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
-- BPM 流程分类
-- =============================================

-- 1. BPM流程分类-分类名不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.category.back.name.notEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程分类-分类名不能为空', 'bpm.category.back.name.notEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 1. BPM流程分类-分类名不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.category.back.name.notEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程分类-分类名不能为空', 'bpm.category.back.name.notEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm category name cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 1. BPM流程分类-分类名不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.category.back.name.notEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程分类-分类名不能为空', 'bpm.category.back.name.notEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM流程分类分类名不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. BPM流程分类-分类标志不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.category.back.code.notEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程分类-分类标志不能为空', 'bpm.category.back.code.notEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. BPM流程分类-分类标志不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.category.back.code.notEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程分类-分类标志不能为空', 'bpm.category.back.code.notEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm category code cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. BPM流程分类-分类标志不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.category.back.code.notEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程分类-分类标志不能为空', 'bpm.category.back.code.notEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM流程分类分类标志不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. BPM流程分类-分类状态不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.category.back.status.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程分类-分类状态不能为空', 'bpm.category.back.status.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. BPM流程分类-分类状态不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.category.back.status.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程分类-分类状态不能为空', 'bpm.category.back.status.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm category status cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. BPM流程分类-分类状态不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.category.back.status.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程分类-分类状态不能为空', 'bpm.category.back.status.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM流程分类分类状态不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. BPM流程分类-分类排序不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.category.back.sort.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程分类-分类排序不能为空', 'bpm.category.back.sort.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. BPM流程分类-分类排序不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.category.back.sort.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程分类-分类排序不能为空', 'bpm.category.back.sort.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm category sort cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. BPM流程分类-分类排序不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.category.back.sort.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程分类-分类排序不能为空', 'bpm.category.back.sort.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM流程分类分类排序不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- BPM 流程表达式
-- =============================================

-- 5. BPM流程表达式-表达式名字不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processExpression.back.name.notEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程表达式-表达式名字不能为空', 'bpm.processExpression.back.name.notEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. BPM流程表达式-表达式名字不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processExpression.back.name.notEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程表达式-表达式名字不能为空', 'bpm.processExpression.back.name.notEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm process expression name cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. BPM流程表达式-表达式名字不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processExpression.back.name.notEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程表达式-表达式名字不能为空', 'bpm.processExpression.back.name.notEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM流程表达式表达式名字不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 6. BPM流程表达式-表达式状态不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processExpression.back.status.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程表达式-表达式状态不能为空', 'bpm.processExpression.back.status.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 6. BPM流程表达式-表达式状态不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processExpression.back.status.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程表达式-表达式状态不能为空', 'bpm.processExpression.back.status.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm process expression status cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 6. BPM流程表达式-表达式状态不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processExpression.back.status.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程表达式-表达式状态不能为空', 'bpm.processExpression.back.status.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM流程表达式表达式状态不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 7. BPM流程表达式-表达式不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processExpression.back.expression.notEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程表达式-表达式不能为空', 'bpm.processExpression.back.expression.notEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 7. BPM流程表达式-表达式不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processExpression.back.expression.notEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程表达式-表达式不能为空', 'bpm.processExpression.back.expression.notEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm process expression expression cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 7. BPM流程表达式-表达式不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processExpression.back.expression.notEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程表达式-表达式不能为空', 'bpm.processExpression.back.expression.notEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM流程表达式表达式不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- BPM 动态表单
-- =============================================

-- 8. BPM动态表单-表单名称不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.form.back.name.notEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM动态表单-表单名称不能为空', 'bpm.form.back.name.notEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 8. BPM动态表单-表单名称不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.form.back.name.notEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM动态表单-表单名称不能为空', 'bpm.form.back.name.notEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm form name cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 8. BPM动态表单-表单名称不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.form.back.name.notEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM动态表单-表单名称不能为空', 'bpm.form.back.name.notEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM动态表单表单名称不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 9. BPM动态表单-表单的配置不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.form.back.conf.notEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM动态表单-表单的配置不能为空', 'bpm.form.back.conf.notEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 9. BPM动态表单-表单的配置不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.form.back.conf.notEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM动态表单-表单的配置不能为空', 'bpm.form.back.conf.notEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm form configuration cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 9. BPM动态表单-表单的配置不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.form.back.conf.notEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM动态表单-表单的配置不能为空', 'bpm.form.back.conf.notEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM动态表单表单的配置不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 10. BPM动态表单-表单项的数组不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.form.back.fields.notEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM动态表单-表单项的数组不能为空', 'bpm.form.back.fields.notEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 10. BPM动态表单-表单项的数组不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.form.back.fields.notEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM动态表单-表单项的数组不能为空', 'bpm.form.back.fields.notEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm form fields cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 10. BPM动态表单-表单项的数组不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.form.back.fields.notEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM动态表单-表单项的数组不能为空', 'bpm.form.back.fields.notEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM动态表单表单项的数组不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 11. BPM动态表单-表单状态不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.form.back.status.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM动态表单-表单状态不能为空', 'bpm.form.back.status.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 11. BPM动态表单-表单状态不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.form.back.status.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM动态表单-表单状态不能为空', 'bpm.form.back.status.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm form status cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 11. BPM动态表单-表单状态不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.form.back.status.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM动态表单-表单状态不能为空', 'bpm.form.back.status.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM动态表单表单状态不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- BPM 用户组
-- =============================================

-- 12. BPM用户组-组名不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.userGroup.back.name.notEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM用户组-组名不能为空', 'bpm.userGroup.back.name.notEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 12. BPM用户组-组名不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.userGroup.back.name.notEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM用户组-组名不能为空', 'bpm.userGroup.back.name.notEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm user group name cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 12. BPM用户组-组名不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.userGroup.back.name.notEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM用户组-组名不能为空', 'bpm.userGroup.back.name.notEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM用户组组名不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 13. BPM用户组-成员编号数组不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.userGroup.back.userIds.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM用户组-成员编号数组不能为空', 'bpm.userGroup.back.userIds.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 13. BPM用户组-成员编号数组不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.userGroup.back.userIds.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM用户组-成员编号数组不能为空', 'bpm.userGroup.back.userIds.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm user group user ids cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 13. BPM用户组-成员编号数组不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.userGroup.back.userIds.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM用户组-成员编号数组不能为空', 'bpm.userGroup.back.userIds.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM用户组成员编号数组不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 14. BPM用户组-状态不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.userGroup.back.status.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM用户组-状态不能为空', 'bpm.userGroup.back.status.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 14. BPM用户组-状态不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.userGroup.back.status.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM用户组-状态不能为空', 'bpm.userGroup.back.status.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm user group status cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 14. BPM用户组-状态不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.userGroup.back.status.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM用户组-状态不能为空', 'bpm.userGroup.back.status.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM用户组状态不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- BPM 流程监听器
-- =============================================

-- 15. BPM流程监听器-监听器名字不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processListener.back.name.notEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程监听器-监听器名字不能为空', 'bpm.processListener.back.name.notEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 15. BPM流程监听器-监听器名字不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processListener.back.name.notEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程监听器-监听器名字不能为空', 'bpm.processListener.back.name.notEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm process listener name cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 15. BPM流程监听器-监听器名字不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processListener.back.name.notEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程监听器-监听器名字不能为空', 'bpm.processListener.back.name.notEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM流程监听器监听器名字不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 16. BPM流程监听器-监听器类型不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processListener.back.type.notEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程监听器-监听器类型不能为空', 'bpm.processListener.back.type.notEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 16. BPM流程监听器-监听器类型不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processListener.back.type.notEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程监听器-监听器类型不能为空', 'bpm.processListener.back.type.notEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm process listener type cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 16. BPM流程监听器-监听器类型不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processListener.back.type.notEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程监听器-监听器类型不能为空', 'bpm.processListener.back.type.notEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM流程监听器监听器类型不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 17. BPM流程监听器-监听器状态不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processListener.back.status.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程监听器-监听器状态不能为空', 'bpm.processListener.back.status.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 17. BPM流程监听器-监听器状态不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processListener.back.status.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程监听器-监听器状态不能为空', 'bpm.processListener.back.status.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm process listener status cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 17. BPM流程监听器-监听器状态不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processListener.back.status.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程监听器-监听器状态不能为空', 'bpm.processListener.back.status.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM流程监听器监听器状态不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 18. BPM流程监听器-监听事件不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processListener.back.event.notEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程监听器-监听事件不能为空', 'bpm.processListener.back.event.notEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 18. BPM流程监听器-监听事件不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processListener.back.event.notEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程监听器-监听事件不能为空', 'bpm.processListener.back.event.notEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm process listener event cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 18. BPM流程监听器-监听事件不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processListener.back.event.notEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程监听器-监听事件不能为空', 'bpm.processListener.back.event.notEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM流程监听器监听事件不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 19. BPM流程监听器-监听器值类型不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processListener.back.valueType.notEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程监听器-监听器值类型不能为空', 'bpm.processListener.back.valueType.notEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 19. BPM流程监听器-监听器值类型不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processListener.back.valueType.notEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程监听器-监听器值类型不能为空', 'bpm.processListener.back.valueType.notEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm process listener value type cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 19. BPM流程监听器-监听器值类型不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processListener.back.valueType.notEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程监听器-监听器值类型不能为空', 'bpm.processListener.back.valueType.notEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM流程监听器监听器值类型不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 20. BPM流程监听器-监听器值不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processListener.back.value.notEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程监听器-监听器值不能为空', 'bpm.processListener.back.value.notEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 20. BPM流程监听器-监听器值不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processListener.back.value.notEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程监听器-监听器值不能为空', 'bpm.processListener.back.value.notEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm process listener value cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 20. BPM流程监听器-监听器值不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processListener.back.value.notEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程监听器-监听器值不能为空', 'bpm.processListener.back.value.notEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM流程监听器监听器值不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- BPM 流程模型
-- =============================================

-- 21. BPM流程模型-流程标识不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processDefinitionInfo.back.key.notEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-流程标识不能为空', 'bpm.processDefinitionInfo.back.key.notEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 21. BPM流程模型-流程标识不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.back.key.notEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-流程标识不能为空', 'bpm.processDefinitionInfo.back.key.notEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm process definition key cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 21. BPM流程模型-流程标识不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.back.key.notEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-流程标识不能为空', 'bpm.processDefinitionInfo.back.key.notEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM流程模型流程标识不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 22. BPM流程模型-流程名称不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processDefinitionInfo.back.name.notEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-流程名称不能为空', 'bpm.processDefinitionInfo.back.name.notEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 22. BPM流程模型-流程名称不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.back.name.notEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-流程名称不能为空', 'bpm.processDefinitionInfo.back.name.notEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm process definition name cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 22. BPM流程模型-流程名称不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.back.name.notEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-流程名称不能为空', 'bpm.processDefinitionInfo.back.name.notEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM流程模型流程名称不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 23. BPM流程模型-编号不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processDefinitionInfo.back.id.notEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-编号不能为空', 'bpm.processDefinitionInfo.back.id.notEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 23. BPM流程模型-编号不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.back.id.notEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-编号不能为空', 'bpm.processDefinitionInfo.back.id.notEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm process definition id cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 23. BPM流程模型-编号不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.back.id.notEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-编号不能为空', 'bpm.processDefinitionInfo.back.id.notEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM流程模型编号不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 24. BPM流程模型-状态不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processDefinitionInfo.back.state.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-状态不能为空', 'bpm.processDefinitionInfo.back.state.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 24. BPM流程模型-状态不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.back.state.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-状态不能为空', 'bpm.processDefinitionInfo.back.state.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm process definition state cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 24. BPM流程模型-状态不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.back.state.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-状态不能为空', 'bpm.processDefinitionInfo.back.state.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM流程模型状态不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 25. BPM流程模型-BPMN XML不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processDefinitionInfo.back.bpmnXml.notEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-BPMN XML不能为空', 'bpm.processDefinitionInfo.back.bpmnXml.notEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 25. BPM流程模型-BPMN XML不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.back.bpmnXml.notEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-BPMN XML不能为空', 'bpm.processDefinitionInfo.back.bpmnXml.notEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm process definition bpmn xml cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 25. BPM流程模型-BPMN XML不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.back.bpmnXml.notEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-BPMN XML不能为空', 'bpm.processDefinitionInfo.back.bpmnXml.notEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM流程模型BPMN XML不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 26. BPM流程模型-流程图标格式不正确
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processDefinitionInfo.back.icon.url';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-流程图标格式不正确', 'bpm.processDefinitionInfo.back.icon.url', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 26. BPM流程模型-流程图标格式不正确 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.back.icon.url' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-流程图标格式不正确', 'bpm.processDefinitionInfo.back.icon.url', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm process definition icon must be a valid url', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 26. BPM流程模型-流程图标格式不正确 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.back.icon.url' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-流程图标格式不正确', 'bpm.processDefinitionInfo.back.icon.url', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM流程模型流程图标格式不正确', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 27. BPM流程模型-流程类型不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processDefinitionInfo.back.type.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-流程类型不能为空', 'bpm.processDefinitionInfo.back.type.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 27. BPM流程模型-流程类型不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.back.type.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-流程类型不能为空', 'bpm.processDefinitionInfo.back.type.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm process definition type cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 27. BPM流程模型-流程类型不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.back.type.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-流程类型不能为空', 'bpm.processDefinitionInfo.back.type.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM流程模型流程类型不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 28. BPM流程模型-表单类型不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processDefinitionInfo.back.formType.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-表单类型不能为空', 'bpm.processDefinitionInfo.back.formType.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 28. BPM流程模型-表单类型不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.back.formType.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-表单类型不能为空', 'bpm.processDefinitionInfo.back.formType.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm process definition form type cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 28. BPM流程模型-表单类型不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.back.formType.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-表单类型不能为空', 'bpm.processDefinitionInfo.back.formType.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM流程模型表单类型不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 29. BPM流程模型-是否可见不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processDefinitionInfo.back.visible.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-是否可见不能为空', 'bpm.processDefinitionInfo.back.visible.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 29. BPM流程模型-是否可见不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.back.visible.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-是否可见不能为空', 'bpm.processDefinitionInfo.back.visible.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm process definition visible cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 29. BPM流程模型-是否可见不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.back.visible.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-是否可见不能为空', 'bpm.processDefinitionInfo.back.visible.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM流程模型是否可见不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 30. BPM流程模型-可管理用户编号数组不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processDefinitionInfo.back.managerUserIds.notEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-可管理用户编号数组不能为空', 'bpm.processDefinitionInfo.back.managerUserIds.notEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 30. BPM流程模型-可管理用户编号数组不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.back.managerUserIds.notEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-可管理用户编号数组不能为空', 'bpm.processDefinitionInfo.back.managerUserIds.notEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm process definition manager user ids cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 30. BPM流程模型-可管理用户编号数组不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.back.managerUserIds.notEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-可管理用户编号数组不能为空', 'bpm.processDefinitionInfo.back.managerUserIds.notEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM流程模型可管理用户编号数组不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 31. BPM流程模型-流程ID规则是否启用不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processDefinitionInfo.back.processIdRule.enable.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-流程ID规则是否启用不能为空', 'bpm.processDefinitionInfo.back.processIdRule.enable.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 31. BPM流程模型-流程ID规则是否启用不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.back.processIdRule.enable.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-流程ID规则是否启用不能为空', 'bpm.processDefinitionInfo.back.processIdRule.enable.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm process definition process id rule enable cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 31. BPM流程模型-流程ID规则是否启用不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.back.processIdRule.enable.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-流程ID规则是否启用不能为空', 'bpm.processDefinitionInfo.back.processIdRule.enable.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM流程模型流程ID规则是否启用不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 32. BPM流程模型-流程ID规则序列长度不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processDefinitionInfo.back.processIdRule.length.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-流程ID规则序列长度不能为空', 'bpm.processDefinitionInfo.back.processIdRule.length.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 32. BPM流程模型-流程ID规则序列长度不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.back.processIdRule.length.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-流程ID规则序列长度不能为空', 'bpm.processDefinitionInfo.back.processIdRule.length.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm process definition process id rule length cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 32. BPM流程模型-流程ID规则序列长度不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.back.processIdRule.length.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-流程ID规则序列长度不能为空', 'bpm.processDefinitionInfo.back.processIdRule.length.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM流程模型流程ID规则序列长度不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 33. BPM流程模型-标题设置是否自定义不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processDefinitionInfo.back.titleSetting.enable.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-标题设置是否自定义不能为空', 'bpm.processDefinitionInfo.back.titleSetting.enable.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 33. BPM流程模型-标题设置是否自定义不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.back.titleSetting.enable.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-标题设置是否自定义不能为空', 'bpm.processDefinitionInfo.back.titleSetting.enable.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm process definition title setting enable cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 33. BPM流程模型-标题设置是否自定义不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.back.titleSetting.enable.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-标题设置是否自定义不能为空', 'bpm.processDefinitionInfo.back.titleSetting.enable.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM流程模型标题设置是否自定义不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 34. BPM流程模型-摘要设置是否自定义不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processDefinitionInfo.back.summarySetting.enable.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-摘要设置是否自定义不能为空', 'bpm.processDefinitionInfo.back.summarySetting.enable.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 34. BPM流程模型-摘要设置是否自定义不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.back.summarySetting.enable.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-摘要设置是否自定义不能为空', 'bpm.processDefinitionInfo.back.summarySetting.enable.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm process definition summary setting enable cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 34. BPM流程模型-摘要设置是否自定义不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.back.summarySetting.enable.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-摘要设置是否自定义不能为空', 'bpm.processDefinitionInfo.back.summarySetting.enable.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM流程模型摘要设置是否自定义不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 35. BPM流程模型-请求设置请求路径不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processDefinitionInfo.back.httpRequestSetting.url.notEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-请求设置请求路径不能为空', 'bpm.processDefinitionInfo.back.httpRequestSetting.url.notEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 35. BPM流程模型-请求设置请求路径不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.back.httpRequestSetting.url.notEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-请求设置请求路径不能为空', 'bpm.processDefinitionInfo.back.httpRequestSetting.url.notEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm process definition http request url cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 35. BPM流程模型-请求设置请求路径不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.back.httpRequestSetting.url.notEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-请求设置请求路径不能为空', 'bpm.processDefinitionInfo.back.httpRequestSetting.url.notEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM流程模型请求设置请求路径不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 36. BPM流程模型-请求设置请求路径格式不正确
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processDefinitionInfo.back.httpRequestSetting.url.url';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-请求设置请求路径格式不正确', 'bpm.processDefinitionInfo.back.httpRequestSetting.url.url', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 36. BPM流程模型-请求设置请求路径格式不正确 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.back.httpRequestSetting.url.url' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-请求设置请求路径格式不正确', 'bpm.processDefinitionInfo.back.httpRequestSetting.url.url', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm process definition http request url must be a valid url', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 36. BPM流程模型-请求设置请求路径格式不正确 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.back.httpRequestSetting.url.url' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-请求设置请求路径格式不正确', 'bpm.processDefinitionInfo.back.httpRequestSetting.url.url', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM流程模型请求设置请求路径格式不正确', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- BPM 模型节点
-- =============================================

-- 37. BPM模型节点-模型节点编号不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.modelNode.back.id.notEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-模型节点编号不能为空', 'bpm.modelNode.back.id.notEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 37. BPM模型节点-模型节点编号不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.modelNode.back.id.notEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-模型节点编号不能为空', 'bpm.modelNode.back.id.notEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm model node id cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 37. BPM模型节点-模型节点编号不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.modelNode.back.id.notEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-模型节点编号不能为空', 'bpm.modelNode.back.id.notEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM模型节点模型节点编号不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 38. BPM模型节点-模型节点类型不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.modelNode.back.type.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-模型节点类型不能为空', 'bpm.modelNode.back.type.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 38. BPM模型节点-模型节点类型不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.modelNode.back.type.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-模型节点类型不能为空', 'bpm.modelNode.back.type.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm model node type cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 38. BPM模型节点-模型节点类型不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.modelNode.back.type.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-模型节点类型不能为空', 'bpm.modelNode.back.type.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM模型节点模型节点类型不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 39. BPM模型节点-监听器是否开启不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.modelNode.back.listenerHandler.enable.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-监听器是否开启不能为空', 'bpm.modelNode.back.listenerHandler.enable.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 39. BPM模型节点-监听器是否开启不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.modelNode.back.listenerHandler.enable.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-监听器是否开启不能为空', 'bpm.modelNode.back.listenerHandler.enable.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm model node listener enable cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 39. BPM模型节点-监听器是否开启不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.modelNode.back.listenerHandler.enable.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-监听器是否开启不能为空', 'bpm.modelNode.back.listenerHandler.enable.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM模型节点监听器是否开启不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 40. BPM模型节点-HTTP请求参数值类型不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.modelNode.back.httpRequestParam.type.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-HTTP请求参数值类型不能为空', 'bpm.modelNode.back.httpRequestParam.type.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 40. BPM模型节点-HTTP请求参数值类型不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.modelNode.back.httpRequestParam.type.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-HTTP请求参数值类型不能为空', 'bpm.modelNode.back.httpRequestParam.type.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm model node http request param type cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 40. BPM模型节点-HTTP请求参数值类型不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.modelNode.back.httpRequestParam.type.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-HTTP请求参数值类型不能为空', 'bpm.modelNode.back.httpRequestParam.type.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM模型节点HTTP请求参数值类型不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 41. BPM模型节点-HTTP请求参数键不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.modelNode.back.httpRequestParam.key.notEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-HTTP请求参数键不能为空', 'bpm.modelNode.back.httpRequestParam.key.notEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 41. BPM模型节点-HTTP请求参数键不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.modelNode.back.httpRequestParam.key.notEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-HTTP请求参数键不能为空', 'bpm.modelNode.back.httpRequestParam.key.notEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm model node http request param key cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 41. BPM模型节点-HTTP请求参数键不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.modelNode.back.httpRequestParam.key.notEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-HTTP请求参数键不能为空', 'bpm.modelNode.back.httpRequestParam.key.notEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM模型节点HTTP请求参数键不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 42. BPM模型节点-HTTP请求参数值不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.modelNode.back.httpRequestParam.value.notEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-HTTP请求参数值不能为空', 'bpm.modelNode.back.httpRequestParam.value.notEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 42. BPM模型节点-HTTP请求参数值不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.modelNode.back.httpRequestParam.value.notEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-HTTP请求参数值不能为空', 'bpm.modelNode.back.httpRequestParam.value.notEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm model node http request param value cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 42. BPM模型节点-HTTP请求参数值不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.modelNode.back.httpRequestParam.value.notEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-HTTP请求参数值不能为空', 'bpm.modelNode.back.httpRequestParam.value.notEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM模型节点HTTP请求参数值不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 43. BPM模型节点-超时处理是否开启不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.modelNode.back.timeoutHandler.enable.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-超时处理是否开启不能为空', 'bpm.modelNode.back.timeoutHandler.enable.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 43. BPM模型节点-超时处理是否开启不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.modelNode.back.timeoutHandler.enable.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-超时处理是否开启不能为空', 'bpm.modelNode.back.timeoutHandler.enable.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm model node timeout handler enable cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 43. BPM模型节点-超时处理是否开启不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.modelNode.back.timeoutHandler.enable.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-超时处理是否开启不能为空', 'bpm.modelNode.back.timeoutHandler.enable.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM模型节点超时处理是否开启不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 44. BPM模型节点-超时处理任务超时未处理的行为不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.modelNode.back.timeoutHandler.type.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-超时处理任务超时未处理的行为不能为空', 'bpm.modelNode.back.timeoutHandler.type.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 44. BPM模型节点-超时处理任务超时未处理的行为不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.modelNode.back.timeoutHandler.type.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-超时处理任务超时未处理的行为不能为空', 'bpm.modelNode.back.timeoutHandler.type.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm model node timeout handler type cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 44. BPM模型节点-超时处理任务超时未处理的行为不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.modelNode.back.timeoutHandler.type.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-超时处理任务超时未处理的行为不能为空', 'bpm.modelNode.back.timeoutHandler.type.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM模型节点超时处理任务超时未处理的行为不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 45. BPM模型节点-超时处理超时时间不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.modelNode.back.timeoutHandler.timeDuration.notEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-超时处理超时时间不能为空', 'bpm.modelNode.back.timeoutHandler.timeDuration.notEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 45. BPM模型节点-超时处理超时时间不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.modelNode.back.timeoutHandler.timeDuration.notEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-超时处理超时时间不能为空', 'bpm.modelNode.back.timeoutHandler.timeDuration.notEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm model node timeout handler time duration cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 45. BPM模型节点-超时处理超时时间不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.modelNode.back.timeoutHandler.timeDuration.notEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-超时处理超时时间不能为空', 'bpm.modelNode.back.timeoutHandler.timeDuration.notEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM模型节点超时处理超时时间不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 46. BPM模型节点-空处理类型不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.modelNode.back.assignEmptyHandler.type.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-空处理类型不能为空', 'bpm.modelNode.back.assignEmptyHandler.type.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 46. BPM模型节点-空处理类型不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.modelNode.back.assignEmptyHandler.type.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-空处理类型不能为空', 'bpm.modelNode.back.assignEmptyHandler.type.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm model node assign empty handler type cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 46. BPM模型节点-空处理类型不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.modelNode.back.assignEmptyHandler.type.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-空处理类型不能为空', 'bpm.modelNode.back.assignEmptyHandler.type.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM模型节点空处理类型不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 47. BPM模型节点-条件组条件关系不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.modelNode.back.conditionGroups.and.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-条件组条件关系不能为空', 'bpm.modelNode.back.conditionGroups.and.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 47. BPM模型节点-条件组条件关系不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.modelNode.back.conditionGroups.and.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-条件组条件关系不能为空', 'bpm.modelNode.back.conditionGroups.and.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm model node condition groups and cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 47. BPM模型节点-条件组条件关系不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.modelNode.back.conditionGroups.and.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-条件组条件关系不能为空', 'bpm.modelNode.back.conditionGroups.and.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM模型节点条件组条件关系不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 48. BPM模型节点-条件组条件不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.modelNode.back.conditionGroups.conditions.notEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-条件组条件不能为空', 'bpm.modelNode.back.conditionGroups.conditions.notEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 48. BPM模型节点-条件组条件不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.modelNode.back.conditionGroups.conditions.notEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-条件组条件不能为空', 'bpm.modelNode.back.conditionGroups.conditions.notEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm model node condition groups conditions cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 48. BPM模型节点-条件组条件不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.modelNode.back.conditionGroups.conditions.notEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-条件组条件不能为空', 'bpm.modelNode.back.conditionGroups.conditions.notEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM模型节点条件组条件不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 49. BPM模型节点-条件规则关系不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.modelNode.back.condition.and.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-条件规则关系不能为空', 'bpm.modelNode.back.condition.and.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 49. BPM模型节点-条件规则关系不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.modelNode.back.condition.and.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-条件规则关系不能为空', 'bpm.modelNode.back.condition.and.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm model node condition and cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 49. BPM模型节点-条件规则关系不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.modelNode.back.condition.and.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-条件规则关系不能为空', 'bpm.modelNode.back.condition.and.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM模型节点条件规则关系不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 50. BPM模型节点-条件规则不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.modelNode.back.condition.rules.notEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-条件规则不能为空', 'bpm.modelNode.back.condition.rules.notEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 50. BPM模型节点-条件规则不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.modelNode.back.condition.rules.notEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-条件规则不能为空', 'bpm.modelNode.back.condition.rules.notEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm model node condition rules cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 50. BPM模型节点-条件规则不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.modelNode.back.condition.rules.notEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-条件规则不能为空', 'bpm.modelNode.back.condition.rules.notEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM模型节点条件规则不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 51. BPM模型节点-条件规则运行符号不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.modelNode.back.conditionRule.opCode.notEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-条件规则运行符号不能为空', 'bpm.modelNode.back.conditionRule.opCode.notEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 51. BPM模型节点-条件规则运行符号不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.modelNode.back.conditionRule.opCode.notEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-条件规则运行符号不能为空', 'bpm.modelNode.back.conditionRule.opCode.notEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm model node condition rule operator cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 51. BPM模型节点-条件规则运行符号不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.modelNode.back.conditionRule.opCode.notEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-条件规则运行符号不能为空', 'bpm.modelNode.back.conditionRule.opCode.notEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM模型节点条件规则运行符号不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 52. BPM模型节点-条件规则运算符左值不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.modelNode.back.conditionRule.leftSide.notEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-条件规则运算符左值不能为空', 'bpm.modelNode.back.conditionRule.leftSide.notEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 52. BPM模型节点-条件规则运算符左值不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.modelNode.back.conditionRule.leftSide.notEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-条件规则运算符左值不能为空', 'bpm.modelNode.back.conditionRule.leftSide.notEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm model node condition rule left side cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 52. BPM模型节点-条件规则运算符左值不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.modelNode.back.conditionRule.leftSide.notEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-条件规则运算符左值不能为空', 'bpm.modelNode.back.conditionRule.leftSide.notEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM模型节点条件规则运算符左值不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 53. BPM模型节点-条件规则运算符右值不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.modelNode.back.conditionRule.rightSide.notEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-条件规则运算符右值不能为空', 'bpm.modelNode.back.conditionRule.rightSide.notEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 53. BPM模型节点-条件规则运算符右值不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.modelNode.back.conditionRule.rightSide.notEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-条件规则运算符右值不能为空', 'bpm.modelNode.back.conditionRule.rightSide.notEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm model node condition rule right side cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 53. BPM模型节点-条件规则运算符右值不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.modelNode.back.conditionRule.rightSide.notEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-条件规则运算符右值不能为空', 'bpm.modelNode.back.conditionRule.rightSide.notEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM模型节点条件规则运算符右值不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 54. BPM模型节点-延迟器延迟时间类型不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.modelNode.back.delaySetting.delayType.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-延迟器延迟时间类型不能为空', 'bpm.modelNode.back.delaySetting.delayType.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 54. BPM模型节点-延迟器延迟时间类型不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.modelNode.back.delaySetting.delayType.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-延迟器延迟时间类型不能为空', 'bpm.modelNode.back.delaySetting.delayType.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm model node delay setting delay type cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 54. BPM模型节点-延迟器延迟时间类型不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.modelNode.back.delaySetting.delayType.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-延迟器延迟时间类型不能为空', 'bpm.modelNode.back.delaySetting.delayType.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM模型节点延迟器延迟时间类型不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 55. BPM模型节点-延迟器延迟时间表达式不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.modelNode.back.delaySetting.delayTime.notEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-延迟器延迟时间表达式不能为空', 'bpm.modelNode.back.delaySetting.delayTime.notEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 55. BPM模型节点-延迟器延迟时间表达式不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.modelNode.back.delaySetting.delayTime.notEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-延迟器延迟时间表达式不能为空', 'bpm.modelNode.back.delaySetting.delayTime.notEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm model node delay setting delay time cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 55. BPM模型节点-延迟器延迟时间表达式不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.modelNode.back.delaySetting.delayTime.notEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-延迟器延迟时间表达式不能为空', 'bpm.modelNode.back.delaySetting.delayTime.notEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM模型节点延迟器延迟时间表达式不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 56. BPM模型节点-路由分支节点ID不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.modelNode.back.routerSetting.nodeId.notEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-路由分支节点ID不能为空', 'bpm.modelNode.back.routerSetting.nodeId.notEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 56. BPM模型节点-路由分支节点ID不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.modelNode.back.routerSetting.nodeId.notEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-路由分支节点ID不能为空', 'bpm.modelNode.back.routerSetting.nodeId.notEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm model node router setting node id cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 56. BPM模型节点-路由分支节点ID不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.modelNode.back.routerSetting.nodeId.notEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-路由分支节点ID不能为空', 'bpm.modelNode.back.routerSetting.nodeId.notEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM模型节点路由分支节点ID不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 57. BPM模型节点-路由分支条件类型不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.modelNode.back.routerSetting.conditionType.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-路由分支条件类型不能为空', 'bpm.modelNode.back.routerSetting.conditionType.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 57. BPM模型节点-路由分支条件类型不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.modelNode.back.routerSetting.conditionType.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-路由分支条件类型不能为空', 'bpm.modelNode.back.routerSetting.conditionType.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm model node router setting condition type cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 57. BPM模型节点-路由分支条件类型不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.modelNode.back.routerSetting.conditionType.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-路由分支条件类型不能为空', 'bpm.modelNode.back.routerSetting.conditionType.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM模型节点路由分支条件类型不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 58. BPM模型节点-触发器类型不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.modelNode.back.triggerSetting.type.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-触发器类型不能为空', 'bpm.modelNode.back.triggerSetting.type.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 58. BPM模型节点-触发器类型不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.modelNode.back.triggerSetting.type.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-触发器类型不能为空', 'bpm.modelNode.back.triggerSetting.type.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm model node trigger setting type cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 58. BPM模型节点-触发器类型不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.modelNode.back.triggerSetting.type.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-触发器类型不能为空', 'bpm.modelNode.back.triggerSetting.type.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM模型节点触发器类型不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 59. BPM模型节点-HTTP触发器URL不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.modelNode.back.httpRequestTriggerSetting.url.notEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-HTTP触发器URL不能为空', 'bpm.modelNode.back.httpRequestTriggerSetting.url.notEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 59. BPM模型节点-HTTP触发器URL不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.modelNode.back.httpRequestTriggerSetting.url.notEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-HTTP触发器URL不能为空', 'bpm.modelNode.back.httpRequestTriggerSetting.url.notEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm model node http trigger url cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 59. BPM模型节点-HTTP触发器URL不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.modelNode.back.httpRequestTriggerSetting.url.notEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-HTTP触发器URL不能为空', 'bpm.modelNode.back.httpRequestTriggerSetting.url.notEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM模型节点HTTP触发器URL不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 60. BPM模型节点-HTTP触发器URL格式不正确
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.modelNode.back.httpRequestTriggerSetting.url.url';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-HTTP触发器URL格式不正确', 'bpm.modelNode.back.httpRequestTriggerSetting.url.url', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 60. BPM模型节点-HTTP触发器URL格式不正确 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.modelNode.back.httpRequestTriggerSetting.url.url' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-HTTP触发器URL格式不正确', 'bpm.modelNode.back.httpRequestTriggerSetting.url.url', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm model node http trigger url must be a valid url', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 60. BPM模型节点-HTTP触发器URL格式不正确 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.modelNode.back.httpRequestTriggerSetting.url.url' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-HTTP触发器URL格式不正确', 'bpm.modelNode.back.httpRequestTriggerSetting.url.url', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM模型节点HTTP触发器URL格式不正确', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 61. BPM模型节点-子流程被调用流程不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.modelNode.back.childProcessSetting.calledProcessDefinitionKey.notEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-子流程被调用流程不能为空', 'bpm.modelNode.back.childProcessSetting.calledProcessDefinitionKey.notEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 61. BPM模型节点-子流程被调用流程不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.modelNode.back.childProcessSetting.calledProcessDefinitionKey.notEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-子流程被调用流程不能为空', 'bpm.modelNode.back.childProcessSetting.calledProcessDefinitionKey.notEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm model node child process called process definition key cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 61. BPM模型节点-子流程被调用流程不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.modelNode.back.childProcessSetting.calledProcessDefinitionKey.notEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-子流程被调用流程不能为空', 'bpm.modelNode.back.childProcessSetting.calledProcessDefinitionKey.notEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM模型节点子流程被调用流程不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 62. BPM模型节点-子流程被调用流程名称不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.modelNode.back.childProcessSetting.calledProcessDefinitionName.notEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-子流程被调用流程名称不能为空', 'bpm.modelNode.back.childProcessSetting.calledProcessDefinitionName.notEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 62. BPM模型节点-子流程被调用流程名称不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.modelNode.back.childProcessSetting.calledProcessDefinitionName.notEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-子流程被调用流程名称不能为空', 'bpm.modelNode.back.childProcessSetting.calledProcessDefinitionName.notEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm model node child process called process definition name cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 62. BPM模型节点-子流程被调用流程名称不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.modelNode.back.childProcessSetting.calledProcessDefinitionName.notEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-子流程被调用流程名称不能为空', 'bpm.modelNode.back.childProcessSetting.calledProcessDefinitionName.notEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM模型节点子流程被调用流程名称不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 63. BPM模型节点-子流程是否异步不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.modelNode.back.childProcessSetting.async.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-子流程是否异步不能为空', 'bpm.modelNode.back.childProcessSetting.async.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 63. BPM模型节点-子流程是否异步不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.modelNode.back.childProcessSetting.async.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-子流程是否异步不能为空', 'bpm.modelNode.back.childProcessSetting.async.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm model node child process async cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 63. BPM模型节点-子流程是否异步不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.modelNode.back.childProcessSetting.async.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-子流程是否异步不能为空', 'bpm.modelNode.back.childProcessSetting.async.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM模型节点子流程是否异步不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 64. BPM模型节点-子流程是否自动跳过发起节点不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.modelNode.back.childProcessSetting.skipStartUserNode.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-子流程是否自动跳过发起节点不能为空', 'bpm.modelNode.back.childProcessSetting.skipStartUserNode.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 64. BPM模型节点-子流程是否自动跳过发起节点不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.modelNode.back.childProcessSetting.skipStartUserNode.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-子流程是否自动跳过发起节点不能为空', 'bpm.modelNode.back.childProcessSetting.skipStartUserNode.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm model node child process skip start user node cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 64. BPM模型节点-子流程是否自动跳过发起节点不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.modelNode.back.childProcessSetting.skipStartUserNode.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-子流程是否自动跳过发起节点不能为空', 'bpm.modelNode.back.childProcessSetting.skipStartUserNode.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM模型节点子流程是否自动跳过发起节点不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 65. BPM模型节点-子流程发起人配置不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.modelNode.back.childProcessSetting.startUserSetting.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-子流程发起人配置不能为空', 'bpm.modelNode.back.childProcessSetting.startUserSetting.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 65. BPM模型节点-子流程发起人配置不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.modelNode.back.childProcessSetting.startUserSetting.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-子流程发起人配置不能为空', 'bpm.modelNode.back.childProcessSetting.startUserSetting.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm model node child process start user setting cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 65. BPM模型节点-子流程发起人配置不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.modelNode.back.childProcessSetting.startUserSetting.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-子流程发起人配置不能为空', 'bpm.modelNode.back.childProcessSetting.startUserSetting.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM模型节点子流程发起人配置不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 66. BPM模型节点-子流程发起人类型不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.modelNode.back.childProcessSetting.startUserSetting.type.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-子流程发起人类型不能为空', 'bpm.modelNode.back.childProcessSetting.startUserSetting.type.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 66. BPM模型节点-子流程发起人类型不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.modelNode.back.childProcessSetting.startUserSetting.type.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-子流程发起人类型不能为空', 'bpm.modelNode.back.childProcessSetting.startUserSetting.type.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm model node child process start user type cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 66. BPM模型节点-子流程发起人类型不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.modelNode.back.childProcessSetting.startUserSetting.type.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-子流程发起人类型不能为空', 'bpm.modelNode.back.childProcessSetting.startUserSetting.type.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM模型节点子流程发起人类型不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 67. BPM模型节点-子流程发起人为空时类型不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.modelNode.back.childProcessSetting.startUserSetting.emptyType.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-子流程发起人为空时类型不能为空', 'bpm.modelNode.back.childProcessSetting.startUserSetting.emptyType.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 67. BPM模型节点-子流程发起人为空时类型不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.modelNode.back.childProcessSetting.startUserSetting.emptyType.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-子流程发起人为空时类型不能为空', 'bpm.modelNode.back.childProcessSetting.startUserSetting.emptyType.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm model node child process start user empty type cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 67. BPM模型节点-子流程发起人为空时类型不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.modelNode.back.childProcessSetting.startUserSetting.emptyType.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-子流程发起人为空时类型不能为空', 'bpm.modelNode.back.childProcessSetting.startUserSetting.emptyType.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM模型节点子流程发起人为空时类型不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 68. BPM模型节点-子流程超时设置是否开启不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.modelNode.back.childProcessSetting.timeoutSetting.enable.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-子流程超时设置是否开启不能为空', 'bpm.modelNode.back.childProcessSetting.timeoutSetting.enable.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 68. BPM模型节点-子流程超时设置是否开启不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.modelNode.back.childProcessSetting.timeoutSetting.enable.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-子流程超时设置是否开启不能为空', 'bpm.modelNode.back.childProcessSetting.timeoutSetting.enable.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm model node child process timeout setting enable cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 68. BPM模型节点-子流程超时设置是否开启不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.modelNode.back.childProcessSetting.timeoutSetting.enable.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-子流程超时设置是否开启不能为空', 'bpm.modelNode.back.childProcessSetting.timeoutSetting.enable.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM模型节点子流程超时设置是否开启不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 69. BPM模型节点-子流程多实例是否开启不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.modelNode.back.childProcessSetting.multiInstanceSetting.enable.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-子流程多实例是否开启不能为空', 'bpm.modelNode.back.childProcessSetting.multiInstanceSetting.enable.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 69. BPM模型节点-子流程多实例是否开启不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.modelNode.back.childProcessSetting.multiInstanceSetting.enable.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-子流程多实例是否开启不能为空', 'bpm.modelNode.back.childProcessSetting.multiInstanceSetting.enable.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm model node child process multi instance enable cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 69. BPM模型节点-子流程多实例是否开启不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.modelNode.back.childProcessSetting.multiInstanceSetting.enable.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-子流程多实例是否开启不能为空', 'bpm.modelNode.back.childProcessSetting.multiInstanceSetting.enable.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM模型节点子流程多实例是否开启不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 70. BPM模型节点-子流程多实例是否串行不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.modelNode.back.childProcessSetting.multiInstanceSetting.sequential.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-子流程多实例是否串行不能为空', 'bpm.modelNode.back.childProcessSetting.multiInstanceSetting.sequential.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 70. BPM模型节点-子流程多实例是否串行不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.modelNode.back.childProcessSetting.multiInstanceSetting.sequential.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-子流程多实例是否串行不能为空', 'bpm.modelNode.back.childProcessSetting.multiInstanceSetting.sequential.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm model node child process multi instance sequential cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 70. BPM模型节点-子流程多实例是否串行不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.modelNode.back.childProcessSetting.multiInstanceSetting.sequential.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-子流程多实例是否串行不能为空', 'bpm.modelNode.back.childProcessSetting.multiInstanceSetting.sequential.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM模型节点子流程多实例是否串行不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 71. BPM模型节点-子流程多实例完成比例不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.modelNode.back.childProcessSetting.multiInstanceSetting.approveRatio.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-子流程多实例完成比例不能为空', 'bpm.modelNode.back.childProcessSetting.multiInstanceSetting.approveRatio.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 71. BPM模型节点-子流程多实例完成比例不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.modelNode.back.childProcessSetting.multiInstanceSetting.approveRatio.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-子流程多实例完成比例不能为空', 'bpm.modelNode.back.childProcessSetting.multiInstanceSetting.approveRatio.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm model node child process multi instance approve ratio cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 71. BPM模型节点-子流程多实例完成比例不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.modelNode.back.childProcessSetting.multiInstanceSetting.approveRatio.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-子流程多实例完成比例不能为空', 'bpm.modelNode.back.childProcessSetting.multiInstanceSetting.approveRatio.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM模型节点子流程多实例完成比例不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 72. BPM模型节点-子流程多实例来源类型不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.modelNode.back.childProcessSetting.multiInstanceSetting.sourceType.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-子流程多实例来源类型不能为空', 'bpm.modelNode.back.childProcessSetting.multiInstanceSetting.sourceType.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 72. BPM模型节点-子流程多实例来源类型不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.modelNode.back.childProcessSetting.multiInstanceSetting.sourceType.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-子流程多实例来源类型不能为空', 'bpm.modelNode.back.childProcessSetting.multiInstanceSetting.sourceType.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm model node child process multi instance source type cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 72. BPM模型节点-子流程多实例来源类型不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.modelNode.back.childProcessSetting.multiInstanceSetting.sourceType.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-子流程多实例来源类型不能为空', 'bpm.modelNode.back.childProcessSetting.multiInstanceSetting.sourceType.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM模型节点子流程多实例来源类型不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 73. BPM模型节点-子流程多实例来源不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.modelNode.back.childProcessSetting.multiInstanceSetting.source.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-子流程多实例来源不能为空', 'bpm.modelNode.back.childProcessSetting.multiInstanceSetting.source.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 73. BPM模型节点-子流程多实例来源不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.modelNode.back.childProcessSetting.multiInstanceSetting.source.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-子流程多实例来源不能为空', 'bpm.modelNode.back.childProcessSetting.multiInstanceSetting.source.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm model node child process multi instance source cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 73. BPM模型节点-子流程多实例来源不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.modelNode.back.childProcessSetting.multiInstanceSetting.source.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-子流程多实例来源不能为空', 'bpm.modelNode.back.childProcessSetting.multiInstanceSetting.source.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM模型节点子流程多实例来源不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 74. BPM模型节点-仿钉钉流程设计模型对象不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.modelNode.back.simpleModel.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-仿钉钉流程设计模型对象不能为空', 'bpm.modelNode.back.simpleModel.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 74. BPM模型节点-仿钉钉流程设计模型对象不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.modelNode.back.simpleModel.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-仿钉钉流程设计模型对象不能为空', 'bpm.modelNode.back.simpleModel.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm model node simple model cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 74. BPM模型节点-仿钉钉流程设计模型对象不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.modelNode.back.simpleModel.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM模型节点-仿钉钉流程设计模型对象不能为空', 'bpm.modelNode.back.simpleModel.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM模型节点仿钉钉流程设计模型对象不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- BPM 流程任务
-- =============================================

-- 78. BPM流程任务-任务编号不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.task.back.id.notEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务-任务编号不能为空', 'bpm.task.back.id.notEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 78. BPM流程任务-任务编号不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.back.id.notEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务-任务编号不能为空', 'bpm.task.back.id.notEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm task id cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 78. BPM流程任务-任务编号不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.back.id.notEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程任务-任务编号不能为空', 'bpm.task.back.id.notEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM流程任务任务编号不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- BPM 流程实例
-- =============================================

-- 79. BPM流程实例-流程定义编号不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processInstance.back.processDefinitionId.notEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例-流程定义编号不能为空', 'bpm.processInstance.back.processDefinitionId.notEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 79. BPM流程实例-流程定义编号不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstance.back.processDefinitionId.notEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例-流程定义编号不能为空', 'bpm.processInstance.back.processDefinitionId.notEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm process instance process definition id cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 79. BPM流程实例-流程定义编号不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstance.back.processDefinitionId.notEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例-流程定义编号不能为空', 'bpm.processInstance.back.processDefinitionId.notEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'BPM流程实例流程定义编号不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 80. BPM流程实例-流程实例编号不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processInstance.back.id.notEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例-流程实例编号不能为空', 'bpm.processInstance.back.id.notEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 80. BPM流程实例-流程实例编号不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstance.back.id.notEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例-流程实例编号不能为空', 'bpm.processInstance.back.id.notEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'bpm process instance id cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

