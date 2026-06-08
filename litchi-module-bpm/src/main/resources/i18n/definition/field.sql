-- =============================================
-- BPM 定义模块 字段国际化 SQL
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
SET @USE_TYPE_FILED = 3;
SET @MODULE_TYPE = 'bpm';
SET @LOCALE_TARGET_BACKEND = 1;
SET @LOCALE_EN = 'en-US';
SET @LOCALE_ZH_CN = 'zh-CN';
SET @CREATOR = '0';
SET @REMARK = 'ai auto generate';
SET @ORDER_NUM = 5;

-- =============================================
-- BPM 流程分类（bpm_category 表）
-- =============================================

-- 1. BPM流程分类-编号
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.category.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程分类-编号', 'bpm.category.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.category.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程分类-编号', 'bpm.category.field.id', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.category.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程分类-编号', 'bpm.category.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '分类编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. BPM流程分类-分类名
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.category.field.name';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程分类-分类名', 'bpm.category.field.name', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.category.field.name' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程分类-分类名', 'bpm.category.field.name', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.category.field.name' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程分类-分类名', 'bpm.category.field.name', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '分类名', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. BPM流程分类-分类标志
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.category.field.code';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程分类-分类标志', 'bpm.category.field.code', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.category.field.code' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程分类-分类标志', 'bpm.category.field.code', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'code', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.category.field.code' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程分类-分类标志', 'bpm.category.field.code', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '分类标志', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. BPM流程分类-分类描述
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.category.field.description';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程分类-分类描述', 'bpm.category.field.description', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.category.field.description' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程分类-分类描述', 'bpm.category.field.description', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'description', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.category.field.description' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程分类-分类描述', 'bpm.category.field.description', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '分类描述', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. BPM流程分类-分类状态
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.category.field.status';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程分类-分类状态', 'bpm.category.field.status', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.category.field.status' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程分类-分类状态', 'bpm.category.field.status', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.category.field.status' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程分类-分类状态', 'bpm.category.field.status', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '分类状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 6. BPM流程分类-分类排序
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.category.field.sort';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程分类-分类排序', 'bpm.category.field.sort', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.category.field.sort' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程分类-分类排序', 'bpm.category.field.sort', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'sort', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.category.field.sort' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程分类-分类排序', 'bpm.category.field.sort', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '分类排序', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 7. BPM流程分类-创建时间
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.category.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程分类-创建时间', 'bpm.category.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.category.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程分类-创建时间', 'bpm.category.field.createTime', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.category.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程分类-创建时间', 'bpm.category.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '创建时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- BPM 流程表达式（bpm_process_expression 表）
-- =============================================

-- 8. BPM流程表达式-编号
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processExpression.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程表达式-编号', 'bpm.processExpression.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processExpression.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程表达式-编号', 'bpm.processExpression.field.id', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processExpression.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程表达式-编号', 'bpm.processExpression.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 9. BPM流程表达式-表达式名字
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processExpression.field.name';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程表达式-表达式名字', 'bpm.processExpression.field.name', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processExpression.field.name' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程表达式-表达式名字', 'bpm.processExpression.field.name', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processExpression.field.name' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程表达式-表达式名字', 'bpm.processExpression.field.name', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '表达式名字', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 10. BPM流程表达式-表达式状态
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processExpression.field.status';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程表达式-表达式状态', 'bpm.processExpression.field.status', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processExpression.field.status' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程表达式-表达式状态', 'bpm.processExpression.field.status', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processExpression.field.status' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程表达式-表达式状态', 'bpm.processExpression.field.status', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '表达式状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 11. BPM流程表达式-表达式
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processExpression.field.expression';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程表达式-表达式', 'bpm.processExpression.field.expression', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processExpression.field.expression' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程表达式-表达式', 'bpm.processExpression.field.expression', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'expression', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processExpression.field.expression' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程表达式-表达式', 'bpm.processExpression.field.expression', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '表达式', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 12. BPM流程表达式-创建时间
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processExpression.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程表达式-创建时间', 'bpm.processExpression.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processExpression.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程表达式-创建时间', 'bpm.processExpression.field.createTime', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processExpression.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程表达式-创建时间', 'bpm.processExpression.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '创建时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- BPM 动态表单（bpm_form 表）
-- =============================================

-- 13. BPM动态表单-编号
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.form.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM动态表单-编号', 'bpm.form.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.form.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM动态表单-编号', 'bpm.form.field.id', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.form.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM动态表单-编号', 'bpm.form.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 14. BPM动态表单-表单名称
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.form.field.name';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM动态表单-表单名称', 'bpm.form.field.name', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.form.field.name' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM动态表单-表单名称', 'bpm.form.field.name', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.form.field.name' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM动态表单-表单名称', 'bpm.form.field.name', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '表单名称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 15. BPM动态表单-表单状态
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.form.field.status';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM动态表单-表单状态', 'bpm.form.field.status', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.form.field.status' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM动态表单-表单状态', 'bpm.form.field.status', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.form.field.status' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM动态表单-表单状态', 'bpm.form.field.status', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '表单状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 16. BPM动态表单-表单的配置
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.form.field.conf';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM动态表单-表单的配置', 'bpm.form.field.conf', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.form.field.conf' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM动态表单-表单的配置', 'bpm.form.field.conf', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'form configuration', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.form.field.conf' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM动态表单-表单的配置', 'bpm.form.field.conf', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '表单的配置', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 17. BPM动态表单-表单项的数组
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.form.field.fields';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM动态表单-表单项的数组', 'bpm.form.field.fields', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.form.field.fields' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM动态表单-表单项的数组', 'bpm.form.field.fields', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'form fields', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.form.field.fields' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM动态表单-表单项的数组', 'bpm.form.field.fields', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '表单项的数组', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 18. BPM动态表单-备注
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.form.field.remark';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM动态表单-备注', 'bpm.form.field.remark', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.form.field.remark' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM动态表单-备注', 'bpm.form.field.remark', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'remark', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.form.field.remark' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM动态表单-备注', 'bpm.form.field.remark', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '备注', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 19. BPM动态表单-创建时间
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.form.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM动态表单-创建时间', 'bpm.form.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.form.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM动态表单-创建时间', 'bpm.form.field.createTime', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.form.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM动态表单-创建时间', 'bpm.form.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '创建时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- BPM 用户组（bpm_user_group 表）
-- =============================================

-- 20. BPM用户组-编号
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.userGroup.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM用户组-编号', 'bpm.userGroup.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.userGroup.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM用户组-编号', 'bpm.userGroup.field.id', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.userGroup.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM用户组-编号', 'bpm.userGroup.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 21. BPM用户组-组名
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.userGroup.field.name';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM用户组-组名', 'bpm.userGroup.field.name', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.userGroup.field.name' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM用户组-组名', 'bpm.userGroup.field.name', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.userGroup.field.name' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM用户组-组名', 'bpm.userGroup.field.name', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '组名', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 22. BPM用户组-描述
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.userGroup.field.description';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM用户组-描述', 'bpm.userGroup.field.description', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.userGroup.field.description' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM用户组-描述', 'bpm.userGroup.field.description', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'description', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.userGroup.field.description' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM用户组-描述', 'bpm.userGroup.field.description', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '描述', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 23. BPM用户组-状态
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.userGroup.field.status';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM用户组-状态', 'bpm.userGroup.field.status', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.userGroup.field.status' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM用户组-状态', 'bpm.userGroup.field.status', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.userGroup.field.status' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM用户组-状态', 'bpm.userGroup.field.status', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 24. BPM用户组-成员编号数组
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.userGroup.field.userIds';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM用户组-成员编号数组', 'bpm.userGroup.field.userIds', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.userGroup.field.userIds' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM用户组-成员编号数组', 'bpm.userGroup.field.userIds', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'user ids', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.userGroup.field.userIds' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM用户组-成员编号数组', 'bpm.userGroup.field.userIds', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '成员编号数组', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 25. BPM用户组-创建时间
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.userGroup.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM用户组-创建时间', 'bpm.userGroup.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.userGroup.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM用户组-创建时间', 'bpm.userGroup.field.createTime', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.userGroup.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM用户组-创建时间', 'bpm.userGroup.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '创建时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- BPM 流程监听器（bpm_process_listener 表）
-- =============================================

-- 26. BPM流程监听器-编号
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processListener.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程监听器-编号', 'bpm.processListener.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processListener.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程监听器-编号', 'bpm.processListener.field.id', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processListener.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程监听器-编号', 'bpm.processListener.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 27. BPM流程监听器-监听器名字
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processListener.field.name';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程监听器-监听器名字', 'bpm.processListener.field.name', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processListener.field.name' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程监听器-监听器名字', 'bpm.processListener.field.name', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processListener.field.name' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程监听器-监听器名字', 'bpm.processListener.field.name', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '监听器名字', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 28. BPM流程监听器-状态
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processListener.field.status';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程监听器-状态', 'bpm.processListener.field.status', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processListener.field.status' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程监听器-状态', 'bpm.processListener.field.status', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processListener.field.status' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程监听器-状态', 'bpm.processListener.field.status', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 29. BPM流程监听器-监听类型
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processListener.field.type';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程监听器-监听类型', 'bpm.processListener.field.type', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processListener.field.type' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程监听器-监听类型', 'bpm.processListener.field.type', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'type', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processListener.field.type' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程监听器-监听类型', 'bpm.processListener.field.type', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '监听类型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 30. BPM流程监听器-监听事件
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processListener.field.event';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程监听器-监听事件', 'bpm.processListener.field.event', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processListener.field.event' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程监听器-监听事件', 'bpm.processListener.field.event', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'event', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processListener.field.event' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程监听器-监听事件', 'bpm.processListener.field.event', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '监听事件', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 31. BPM流程监听器-值类型
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processListener.field.valueType';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程监听器-值类型', 'bpm.processListener.field.valueType', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processListener.field.valueType' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程监听器-值类型', 'bpm.processListener.field.valueType', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'value type', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processListener.field.valueType' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程监听器-值类型', 'bpm.processListener.field.valueType', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '值类型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 32. BPM流程监听器-值
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processListener.field.value';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程监听器-值', 'bpm.processListener.field.value', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processListener.field.value' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程监听器-值', 'bpm.processListener.field.value', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'value', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processListener.field.value' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程监听器-值', 'bpm.processListener.field.value', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '值', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 33. BPM流程监听器-创建时间
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processListener.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程监听器-创建时间', 'bpm.processListener.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processListener.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程监听器-创建时间', 'bpm.processListener.field.createTime', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processListener.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程监听器-创建时间', 'bpm.processListener.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '创建时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- BPM 流程模型（bpm_process_definition_info 表）
-- =============================================

-- 34. BPM流程模型-编号
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processDefinitionInfo.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-编号', 'bpm.processDefinitionInfo.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-编号', 'bpm.processDefinitionInfo.field.id', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-编号', 'bpm.processDefinitionInfo.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 35. BPM流程模型-流程定义的编号
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processDefinitionInfo.field.processDefinitionId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-流程定义的编号', 'bpm.processDefinitionInfo.field.processDefinitionId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.field.processDefinitionId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-流程定义的编号', 'bpm.processDefinitionInfo.field.processDefinitionId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'process definition id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.field.processDefinitionId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-流程定义的编号', 'bpm.processDefinitionInfo.field.processDefinitionId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '流程定义的编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 36. BPM流程模型-流程模型的编号
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processDefinitionInfo.field.modelId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-流程模型的编号', 'bpm.processDefinitionInfo.field.modelId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.field.modelId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-流程模型的编号', 'bpm.processDefinitionInfo.field.modelId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'model id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.field.modelId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-流程模型的编号', 'bpm.processDefinitionInfo.field.modelId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '流程模型的编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 37. BPM流程模型-流程模型的类型
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processDefinitionInfo.field.modelType';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-流程模型的类型', 'bpm.processDefinitionInfo.field.modelType', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.field.modelType' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-流程模型的类型', 'bpm.processDefinitionInfo.field.modelType', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'model type', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.field.modelType' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-流程模型的类型', 'bpm.processDefinitionInfo.field.modelType', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '流程模型的类型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 38. BPM流程模型-流程分类的编码
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processDefinitionInfo.field.category';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-流程分类的编码', 'bpm.processDefinitionInfo.field.category', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.field.category' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-流程分类的编码', 'bpm.processDefinitionInfo.field.category', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'process category code', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.field.category' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-流程分类的编码', 'bpm.processDefinitionInfo.field.category', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '流程分类的编码', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 39. BPM流程模型-图标
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processDefinitionInfo.field.icon';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-图标', 'bpm.processDefinitionInfo.field.icon', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.field.icon' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-图标', 'bpm.processDefinitionInfo.field.icon', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'icon', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.field.icon' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-图标', 'bpm.processDefinitionInfo.field.icon', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '图标', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 40. BPM流程模型-描述
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processDefinitionInfo.field.description';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-描述', 'bpm.processDefinitionInfo.field.description', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.field.description' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-描述', 'bpm.processDefinitionInfo.field.description', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'description', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.field.description' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-描述', 'bpm.processDefinitionInfo.field.description', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '描述', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 41. BPM流程模型-表单类型
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processDefinitionInfo.field.formType';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-表单类型', 'bpm.processDefinitionInfo.field.formType', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.field.formType' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-表单类型', 'bpm.processDefinitionInfo.field.formType', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'form type', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.field.formType' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-表单类型', 'bpm.processDefinitionInfo.field.formType', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '表单类型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 42. BPM流程模型-动态表单编号
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processDefinitionInfo.field.formId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-动态表单编号', 'bpm.processDefinitionInfo.field.formId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.field.formId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-动态表单编号', 'bpm.processDefinitionInfo.field.formId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'form id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.field.formId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-动态表单编号', 'bpm.processDefinitionInfo.field.formId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '动态表单编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 43. BPM流程模型-表单的配置
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processDefinitionInfo.field.formConf';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-表单的配置', 'bpm.processDefinitionInfo.field.formConf', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.field.formConf' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-表单的配置', 'bpm.processDefinitionInfo.field.formConf', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'form configuration', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.field.formConf' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-表单的配置', 'bpm.processDefinitionInfo.field.formConf', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '表单的配置', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 44. BPM流程模型-表单项的数组
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processDefinitionInfo.field.formFields';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-表单项的数组', 'bpm.processDefinitionInfo.field.formFields', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.field.formFields' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-表单项的数组', 'bpm.processDefinitionInfo.field.formFields', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'form fields', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.field.formFields' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-表单项的数组', 'bpm.processDefinitionInfo.field.formFields', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '表单项的数组', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 45. BPM流程模型-自定义表单的提交路径
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processDefinitionInfo.field.formCustomCreatePath';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-自定义表单的提交路径', 'bpm.processDefinitionInfo.field.formCustomCreatePath', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.field.formCustomCreatePath' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-自定义表单的提交路径', 'bpm.processDefinitionInfo.field.formCustomCreatePath', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'custom form create path', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.field.formCustomCreatePath' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-自定义表单的提交路径', 'bpm.processDefinitionInfo.field.formCustomCreatePath', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '自定义表单的提交路径', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 46. BPM流程模型-自定义表单的查看路径
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processDefinitionInfo.field.formCustomViewPath';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-自定义表单的查看路径', 'bpm.processDefinitionInfo.field.formCustomViewPath', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.field.formCustomViewPath' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-自定义表单的查看路径', 'bpm.processDefinitionInfo.field.formCustomViewPath', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'custom form view path', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.field.formCustomViewPath' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-自定义表单的查看路径', 'bpm.processDefinitionInfo.field.formCustomViewPath', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '自定义表单的查看路径', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 47. BPM流程模型-SIMPLE 设计器模型数据
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processDefinitionInfo.field.simpleModel';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-SIMPLE 设计器模型数据', 'bpm.processDefinitionInfo.field.simpleModel', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.field.simpleModel' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-SIMPLE 设计器模型数据', 'bpm.processDefinitionInfo.field.simpleModel', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'simple model', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.field.simpleModel' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-SIMPLE 设计器模型数据', 'bpm.processDefinitionInfo.field.simpleModel', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'SIMPLE 设计器模型数据', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 48. BPM流程模型-是否可见
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processDefinitionInfo.field.visible';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-是否可见', 'bpm.processDefinitionInfo.field.visible', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.field.visible' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-是否可见', 'bpm.processDefinitionInfo.field.visible', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'visible', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.field.visible' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-是否可见', 'bpm.processDefinitionInfo.field.visible', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '是否可见', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 49. BPM流程模型-排序值
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processDefinitionInfo.field.sort';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-排序值', 'bpm.processDefinitionInfo.field.sort', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.field.sort' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-排序值', 'bpm.processDefinitionInfo.field.sort', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'sort', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.field.sort' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-排序值', 'bpm.processDefinitionInfo.field.sort', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '排序值', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 50. BPM流程模型-可发起用户编号数组
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processDefinitionInfo.field.startUserIds';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-可发起用户编号数组', 'bpm.processDefinitionInfo.field.startUserIds', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.field.startUserIds' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-可发起用户编号数组', 'bpm.processDefinitionInfo.field.startUserIds', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'start user ids', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.field.startUserIds' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-可发起用户编号数组', 'bpm.processDefinitionInfo.field.startUserIds', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '可发起用户编号数组', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 51. BPM流程模型-可发起部门编号数组
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processDefinitionInfo.field.startDeptIds';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-可发起部门编号数组', 'bpm.processDefinitionInfo.field.startDeptIds', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.field.startDeptIds' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-可发起部门编号数组', 'bpm.processDefinitionInfo.field.startDeptIds', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'start dept ids', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.field.startDeptIds' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-可发起部门编号数组', 'bpm.processDefinitionInfo.field.startDeptIds', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '可发起部门编号数组', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 52. BPM流程模型-可管理用户编号数组
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processDefinitionInfo.field.managerUserIds';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-可管理用户编号数组', 'bpm.processDefinitionInfo.field.managerUserIds', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.field.managerUserIds' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-可管理用户编号数组', 'bpm.processDefinitionInfo.field.managerUserIds', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'manager user ids', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.field.managerUserIds' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-可管理用户编号数组', 'bpm.processDefinitionInfo.field.managerUserIds', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '可管理用户编号数组', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 53. BPM流程模型-是否允许撤销审批中的申请
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processDefinitionInfo.field.allowCancelRunningProcess';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-是否允许撤销审批中的申请', 'bpm.processDefinitionInfo.field.allowCancelRunningProcess', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.field.allowCancelRunningProcess' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-是否允许撤销审批中的申请', 'bpm.processDefinitionInfo.field.allowCancelRunningProcess', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'allow cancel running process', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.field.allowCancelRunningProcess' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-是否允许撤销审批中的申请', 'bpm.processDefinitionInfo.field.allowCancelRunningProcess', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '是否允许撤销审批中的申请', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 54. BPM流程模型-流程 ID 规则
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processDefinitionInfo.field.processIdRule';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-流程 ID 规则', 'bpm.processDefinitionInfo.field.processIdRule', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.field.processIdRule' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-流程 ID 规则', 'bpm.processDefinitionInfo.field.processIdRule', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'process id rule', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.field.processIdRule' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-流程 ID 规则', 'bpm.processDefinitionInfo.field.processIdRule', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '流程 ID 规则', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 55. BPM流程模型-自动去重类型
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processDefinitionInfo.field.autoApprovalType';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-自动去重类型', 'bpm.processDefinitionInfo.field.autoApprovalType', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.field.autoApprovalType' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-自动去重类型', 'bpm.processDefinitionInfo.field.autoApprovalType', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'auto approval type', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.field.autoApprovalType' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-自动去重类型', 'bpm.processDefinitionInfo.field.autoApprovalType', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '自动去重类型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 56. BPM流程模型-标题设置
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processDefinitionInfo.field.titleSetting';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-标题设置', 'bpm.processDefinitionInfo.field.titleSetting', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.field.titleSetting' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-标题设置', 'bpm.processDefinitionInfo.field.titleSetting', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'title setting', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.field.titleSetting' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-标题设置', 'bpm.processDefinitionInfo.field.titleSetting', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '标题设置', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 57. BPM流程模型-摘要设置
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processDefinitionInfo.field.summarySetting';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-摘要设置', 'bpm.processDefinitionInfo.field.summarySetting', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.field.summarySetting' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-摘要设置', 'bpm.processDefinitionInfo.field.summarySetting', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'summary setting', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.field.summarySetting' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-摘要设置', 'bpm.processDefinitionInfo.field.summarySetting', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '摘要设置', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 58. BPM流程模型-流程前置通知设置
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processDefinitionInfo.field.processBeforeTriggerSetting';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-流程前置通知设置', 'bpm.processDefinitionInfo.field.processBeforeTriggerSetting', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.field.processBeforeTriggerSetting' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-流程前置通知设置', 'bpm.processDefinitionInfo.field.processBeforeTriggerSetting', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'process before trigger setting', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.field.processBeforeTriggerSetting' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-流程前置通知设置', 'bpm.processDefinitionInfo.field.processBeforeTriggerSetting', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '流程前置通知设置', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 59. BPM流程模型-流程后置通知设置
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processDefinitionInfo.field.processAfterTriggerSetting';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-流程后置通知设置', 'bpm.processDefinitionInfo.field.processAfterTriggerSetting', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.field.processAfterTriggerSetting' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-流程后置通知设置', 'bpm.processDefinitionInfo.field.processAfterTriggerSetting', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'process after trigger setting', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.field.processAfterTriggerSetting' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-流程后置通知设置', 'bpm.processDefinitionInfo.field.processAfterTriggerSetting', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '流程后置通知设置', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 60. BPM流程模型-任务前置通知设置
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processDefinitionInfo.field.taskBeforeTriggerSetting';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-任务前置通知设置', 'bpm.processDefinitionInfo.field.taskBeforeTriggerSetting', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.field.taskBeforeTriggerSetting' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-任务前置通知设置', 'bpm.processDefinitionInfo.field.taskBeforeTriggerSetting', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'task before trigger setting', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.field.taskBeforeTriggerSetting' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-任务前置通知设置', 'bpm.processDefinitionInfo.field.taskBeforeTriggerSetting', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '任务前置通知设置', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 61. BPM流程模型-任务后置通知设置
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processDefinitionInfo.field.taskAfterTriggerSetting';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-任务后置通知设置', 'bpm.processDefinitionInfo.field.taskAfterTriggerSetting', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.field.taskAfterTriggerSetting' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-任务后置通知设置', 'bpm.processDefinitionInfo.field.taskAfterTriggerSetting', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'task after trigger setting', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.field.taskAfterTriggerSetting' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-任务后置通知设置', 'bpm.processDefinitionInfo.field.taskAfterTriggerSetting', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '任务后置通知设置', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 62. BPM流程模型-创建时间
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processDefinitionInfo.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-创建时间', 'bpm.processDefinitionInfo.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-创建时间', 'bpm.processDefinitionInfo.field.createTime', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinitionInfo.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-创建时间', 'bpm.processDefinitionInfo.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '创建时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- BPM 流程模型响应（bpm.model - BpmModelRespVO，Flowable 字段）
-- 注：BpmModelRespVO 继承 BpmModelMetaInfoVO，额外字段来自 Flowable
-- =============================================

-- 63. BPM流程模型-流程标识（Flowable）
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.model.field.key';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-流程标识', 'bpm.model.field.key', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.model.field.key' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-流程标识', 'bpm.model.field.key', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'process key', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.model.field.key' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-流程标识', 'bpm.model.field.key', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '流程标识', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 64. BPM流程模型-流程名称（Flowable）
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.model.field.name';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-流程名称', 'bpm.model.field.name', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.model.field.name' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-流程名称', 'bpm.model.field.name', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.model.field.name' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-流程名称', 'bpm.model.field.name', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '流程名称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 65. BPM流程模型-流程分类编号（Flowable）
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.model.field.category';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-流程分类编号', 'bpm.model.field.category', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.model.field.category' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-流程分类编号', 'bpm.model.field.category', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'category', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.model.field.category' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-流程分类编号', 'bpm.model.field.category', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '流程分类编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 66. BPM流程模型-流程分类名字
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.model.field.categoryName';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-流程分类名字', 'bpm.model.field.categoryName', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.model.field.categoryName' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-流程分类名字', 'bpm.model.field.categoryName', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'category name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.model.field.categoryName' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-流程分类名字', 'bpm.model.field.categoryName', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '流程分类名字', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 67. BPM流程模型-表单名字
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.model.field.formName';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-表单名字', 'bpm.model.field.formName', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.model.field.formName' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-表单名字', 'bpm.model.field.formName', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'form name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.model.field.formName' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-表单名字', 'bpm.model.field.formName', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '表单名字', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 68. BPM流程模型-BPMN XML
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.model.field.bpmnXml';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-BPMN XML', 'bpm.model.field.bpmnXml', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.model.field.bpmnXml' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-BPMN XML', 'bpm.model.field.bpmnXml', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'bpmn xml', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.model.field.bpmnXml' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程模型-BPMN XML', 'bpm.model.field.bpmnXml', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'BPMN XML', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- BPM 流程定义响应（bpm.processDefinition - BpmProcessDefinitionRespVO，Flowable 字段）
-- =============================================

-- 69. BPM流程定义-版本（Flowable）
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processDefinition.field.version';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程定义-版本', 'bpm.processDefinition.field.version', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinition.field.version' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程定义-版本', 'bpm.processDefinition.field.version', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'version', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinition.field.version' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程定义-版本', 'bpm.processDefinition.field.version', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '版本', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 70. BPM流程定义-中断状态（Flowable）
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processDefinition.field.suspensionState';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程定义-中断状态', 'bpm.processDefinition.field.suspensionState', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinition.field.suspensionState' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程定义-中断状态', 'bpm.processDefinition.field.suspensionState', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'suspension state', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinition.field.suspensionState' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程定义-中断状态', 'bpm.processDefinition.field.suspensionState', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '中断状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 71. BPM流程定义-部署时间（Flowable）
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processDefinition.field.deploymentTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程定义-部署时间', 'bpm.processDefinition.field.deploymentTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinition.field.deploymentTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程定义-部署时间', 'bpm.processDefinition.field.deploymentTime', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'deployment time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinition.field.deploymentTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程定义-部署时间', 'bpm.processDefinition.field.deploymentTime', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '部署时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 72. BPM流程定义-流程定义排序
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processDefinition.field.sort';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程定义-流程定义排序', 'bpm.processDefinition.field.sort', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinition.field.sort' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程定义-流程定义排序', 'bpm.processDefinition.field.sort', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'sort', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinition.field.sort' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程定义-流程定义排序', 'bpm.processDefinition.field.sort', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '流程定义排序', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 73. BPM流程定义-任务标识
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processDefinition.field.userTaskId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程定义-任务标识', 'bpm.processDefinition.field.userTaskId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinition.field.userTaskId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程定义-任务标识', 'bpm.processDefinition.field.userTaskId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'task id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinition.field.userTaskId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程定义-任务标识', 'bpm.processDefinition.field.userTaskId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '任务标识', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 74. BPM流程定义-任务名
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processDefinition.field.userTaskName';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程定义-任务名', 'bpm.processDefinition.field.userTaskName', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinition.field.userTaskName' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程定义-任务名', 'bpm.processDefinition.field.userTaskName', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'task name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processDefinition.field.userTaskName' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程定义-任务名', 'bpm.processDefinition.field.userTaskName', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '任务名', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 137. BPM流程实例-提交时间
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processInstance.field.submitTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例-提交时间', 'bpm.processInstance.field.submitTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstance.field.submitTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例-提交时间', 'bpm.processInstance.field.submitTime', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'submit time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstance.field.submitTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('BPM流程实例-提交时间', 'bpm.processInstance.field.submitTime', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '提交时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
