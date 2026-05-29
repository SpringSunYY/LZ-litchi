-- =============================================
-- system tenant 校验消息国际化 SQL
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
-- TenantSaveReqVO (tenant)
-- =============================================

-- 1. name - 不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenant.back.name.notEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-租户名不能为空', 'system.tenant.back.name.notEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.back.name.notEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-租户名不能为空', 'system.tenant.back.name.notEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'tenant name cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.back.name.notEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-租户名不能为空', 'system.tenant.back.name.notEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '租户名不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. name - 长度超限
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenant.back.name.size';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-租户名长度必须在4到32之间', 'system.tenant.back.name.size', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.back.name.size' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-租户名长度必须在4到32之间', 'system.tenant.back.name.size', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'tenant name length must be between 4 and 32', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.back.name.size' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-租户名长度必须在4到32之间', 'system.tenant.back.name.size', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '租户名长度必须在4到32之间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. code - 不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenant.back.code.notEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-编码不能为空', 'system.tenant.back.code.notEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.back.code.notEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-编码不能为空', 'system.tenant.back.code.notEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'tenant code cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.back.code.notEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-编码不能为空', 'system.tenant.back.code.notEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '编码不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. code - 长度超限
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenant.back.code.length';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-编码长度必须在4到32之间', 'system.tenant.back.code.length', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.back.code.length' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-编码长度必须在4到32之间', 'system.tenant.back.code.length', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'tenant code length must be between 4 and 32', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.back.code.length' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-编码长度必须在4到32之间', 'system.tenant.back.code.length', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '编码长度必须在4到32之间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. contactName - 不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenant.back.contactName.notEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-联系人不能为空', 'system.tenant.back.contactName.notEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.back.contactName.notEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-联系人不能为空', 'system.tenant.back.contactName.notEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'tenant contact name cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.back.contactName.notEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-联系人不能为空', 'system.tenant.back.contactName.notEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '联系人不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 6. industry - 不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenant.back.industry.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-行业不能为空', 'system.tenant.back.industry.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.back.industry.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-行业不能为空', 'system.tenant.back.industry.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'tenant industry cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.back.industry.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-行业不能为空', 'system.tenant.back.industry.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '行业不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 7. type - 不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenant.back.type.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-类型不能为空', 'system.tenant.back.type.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.back.type.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-类型不能为空', 'system.tenant.back.type.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'tenant type cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.back.type.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-类型不能为空', 'system.tenant.back.type.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '类型不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 8. username - 格式不匹配
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenant.back.username.pattern';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-用户账号格式不匹配', 'system.tenant.back.username.pattern', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.back.username.pattern' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-用户账号格式不匹配', 'system.tenant.back.username.pattern', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'tenant username must match pattern ^[a-zA-Z0-9]{4,30}$', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.back.username.pattern' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-用户账号格式不匹配', 'system.tenant.back.username.pattern', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '用户账号由数字、字母组成', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 9. username - 长度超限
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenant.back.username.size';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-用户账号长度必须在4到30之间', 'system.tenant.back.username.size', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.back.username.size' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-用户账号长度必须在4到30之间', 'system.tenant.back.username.size', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'tenant username length must be between 4 and 30', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.back.username.size' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-用户账号长度必须在4到30之间', 'system.tenant.back.username.size', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '用户账号长度为4-30个字符', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 10. password - 长度超限
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenant.back.password.length';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-密码长度必须在4到16之间', 'system.tenant.back.password.length', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.back.password.length' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-密码长度必须在4到16之间', 'system.tenant.back.password.length', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'tenant password length must be between 4 and 16', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.back.password.length' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-密码长度必须在4到16之间', 'system.tenant.back.password.length', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '密码长度为4-16位', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 11. usernameValid - 必须为 true
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenant.back.usernameValid.assertTrue';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-用户账号密码不能为空', 'system.tenant.back.usernameValid.assertTrue', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.back.usernameValid.assertTrue' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-用户账号密码不能为空', 'system.tenant.back.usernameValid.assertTrue', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'tenant username and password cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.back.usernameValid.assertTrue' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-用户账号密码不能为空', 'system.tenant.back.usernameValid.assertTrue', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '用户账号、密码不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- TenantPackageSimpleRespVO / TenantPackageSaveReqVO / TenantPackageGrantReqVO (tenantPackage)
-- =============================================

-- 12. id - 不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackage.back.id.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-套餐编号不能为空', 'system.tenantPackage.back.id.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.back.id.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-套餐编号不能为空', 'system.tenantPackage.back.id.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'tenant package id cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.back.id.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-套餐编号不能为空', 'system.tenantPackage.back.id.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '套餐编号不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 13. name - 不能为空（TenantPackageSimpleRespVO）
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackage.back.name.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-套餐名不能为空', 'system.tenantPackage.back.name.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.back.name.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-套餐名不能为空', 'system.tenantPackage.back.name.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'tenant package name cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.back.name.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-套餐名不能为空', 'system.tenantPackage.back.name.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '套餐名不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 14. name - 不能为空（TenantPackageSaveReqVO）
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackage.back.name.notEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-套餐名不能为空', 'system.tenantPackage.back.name.notEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.back.name.notEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-套餐名不能为空', 'system.tenantPackage.back.name.notEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'tenant package name cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.back.name.notEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-套餐名不能为空', 'system.tenantPackage.back.name.notEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '套餐名不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 15. name - 长度超限
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackage.back.name.size';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-套餐名长度必须在2到32之间', 'system.tenantPackage.back.name.size', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.back.name.size' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-套餐名长度必须在2到32之间', 'system.tenantPackage.back.name.size', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'tenant package name length must be between 2 and 32', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.back.name.size' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-套餐名长度必须在2到32之间', 'system.tenantPackage.back.name.size', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '套餐名长度为2~32个字符', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 16. code - 不能为空（TenantPackageSimpleRespVO）
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackage.back.code.notEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-套餐编码不能为空', 'system.tenantPackage.back.code.notEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.back.code.notEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-套餐编码不能为空', 'system.tenantPackage.back.code.notEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'tenant package code cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.back.code.notEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-套餐编码不能为空', 'system.tenantPackage.back.code.notEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '套餐编码不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 17. code - 长度超限
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackage.back.code.size';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-套餐编码长度必须在2到32之间', 'system.tenantPackage.back.code.size', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.back.code.size' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-套餐编码长度必须在2到32之间', 'system.tenantPackage.back.code.size', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'tenant package code length must be between 2 and 32', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.back.code.size' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-套餐编码长度必须在2到32之间', 'system.tenantPackage.back.code.size', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '套餐编码长度为2~32个字符', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 18. type - 不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackage.back.type.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-套餐类型不能为空', 'system.tenantPackage.back.type.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.back.type.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-套餐类型不能为空', 'system.tenantPackage.back.type.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'tenant package type cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.back.type.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-套餐类型不能为空', 'system.tenantPackage.back.type.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '套餐类型不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 19. logo - 不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackage.back.logo.notEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-LOGO不能为空', 'system.tenantPackage.back.logo.notEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.back.logo.notEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-LOGO不能为空', 'system.tenantPackage.back.logo.notEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'tenant package logo cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.back.logo.notEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-LOGO不能为空', 'system.tenantPackage.back.logo.notEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'LOGO不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 20. price - 不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackage.back.price.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-套餐价格不能为空', 'system.tenantPackage.back.price.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.back.price.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-套餐价格不能为空', 'system.tenantPackage.back.price.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'tenant package price cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.back.price.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-套餐价格不能为空', 'system.tenantPackage.back.price.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '套餐价格不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 21. status - 不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackage.back.status.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-套餐状态不能为空', 'system.tenantPackage.back.status.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.back.status.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-套餐状态不能为空', 'system.tenantPackage.back.status.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'tenant package status cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.back.status.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-套餐状态不能为空', 'system.tenantPackage.back.status.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '套餐状态不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 22. published - 不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackage.back.published.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-是否发布不能为空', 'system.tenantPackage.back.published.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.back.published.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-是否发布不能为空', 'system.tenantPackage.back.published.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'tenant package published cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.back.published.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-是否发布不能为空', 'system.tenantPackage.back.published.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '是否发布不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 23. orderNum - 不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackage.back.orderNum.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-排序不能为空', 'system.tenantPackage.back.orderNum.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.back.orderNum.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-排序不能为空', 'system.tenantPackage.back.orderNum.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'tenant package sort cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.back.orderNum.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-排序不能为空', 'system.tenantPackage.back.orderNum.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '排序不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 24. subscriptionNum - 不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackage.back.subscriptionNum.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-订阅数不能为空', 'system.tenantPackage.back.subscriptionNum.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.back.subscriptionNum.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-订阅数不能为空', 'system.tenantPackage.back.subscriptionNum.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'tenant package subscription num cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.back.subscriptionNum.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-订阅数不能为空', 'system.tenantPackage.back.subscriptionNum.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '订阅数不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 25. subscriptionTotalAmount - 不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackage.back.subscriptionTotalAmount.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-订阅总额不能为空', 'system.tenantPackage.back.subscriptionTotalAmount.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.back.subscriptionTotalAmount.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-订阅总额不能为空', 'system.tenantPackage.back.subscriptionTotalAmount.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'tenant package subscription total amount cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.back.subscriptionTotalAmount.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-订阅总额不能为空', 'system.tenantPackage.back.subscriptionTotalAmount.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '订阅总额不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 26. menuIds - 不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackage.back.menuIds.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-关联的菜单编号不能为空', 'system.tenantPackage.back.menuIds.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.back.menuIds.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-关联的菜单编号不能为空', 'system.tenantPackage.back.menuIds.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'tenant package menu ids cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.back.menuIds.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-关联的菜单编号不能为空', 'system.tenantPackage.back.menuIds.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '关联的菜单编号不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- TenantPackageSubscribeSaveReqVO (tenantPackageSubscribe)
-- =============================================

-- 27. packageName - 不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackageSubscribe.back.packageName.notEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-套餐名不能为空', 'system.tenantPackageSubscribe.back.packageName.notEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.back.packageName.notEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-套餐名不能为空', 'system.tenantPackageSubscribe.back.packageName.notEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'subscribe package name cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.back.packageName.notEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-套餐名不能为空', 'system.tenantPackageSubscribe.back.packageName.notEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '套餐名不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 28. packageName - 长度超限
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackageSubscribe.back.packageName.size';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-套餐名长度必须在2到32之间', 'system.tenantPackageSubscribe.back.packageName.size', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.back.packageName.size' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-套餐名长度必须在2到32之间', 'system.tenantPackageSubscribe.back.packageName.size', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'subscribe package name length must be between 2 and 32', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.back.packageName.size' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-套餐名长度必须在2到32之间', 'system.tenantPackageSubscribe.back.packageName.size', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '套餐名长度为2~32个字符', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 29. packageCode - 不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackageSubscribe.back.packageCode.notEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-套餐编码不能为空', 'system.tenantPackageSubscribe.back.packageCode.notEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.back.packageCode.notEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-套餐编码不能为空', 'system.tenantPackageSubscribe.back.packageCode.notEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'subscribe package code cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.back.packageCode.notEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-套餐编码不能为空', 'system.tenantPackageSubscribe.back.packageCode.notEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '套餐编码不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 30. packageCode - 长度超限
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackageSubscribe.back.packageCode.size';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-套餐编码长度必须在2到32之间', 'system.tenantPackageSubscribe.back.packageCode.size', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.back.packageCode.size' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-套餐编码长度必须在2到32之间', 'system.tenantPackageSubscribe.back.packageCode.size', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'subscribe package code length must be between 2 and 32', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.back.packageCode.size' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-套餐编码长度必须在2到32之间', 'system.tenantPackageSubscribe.back.packageCode.size', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '套餐编码长度为2~32个字符', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 31. tenantName - 不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackageSubscribe.back.tenantName.notEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-租户名不能为空', 'system.tenantPackageSubscribe.back.tenantName.notEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.back.tenantName.notEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-租户名不能为空', 'system.tenantPackageSubscribe.back.tenantName.notEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'subscribe tenant name cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.back.tenantName.notEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-租户名不能为空', 'system.tenantPackageSubscribe.back.tenantName.notEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '租户名不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 32. tenantCode - 不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackageSubscribe.back.tenantCode.notEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-租户编码不能为空', 'system.tenantPackageSubscribe.back.tenantCode.notEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.back.tenantCode.notEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-租户编码不能为空', 'system.tenantPackageSubscribe.back.tenantCode.notEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'subscribe tenant code cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.back.tenantCode.notEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-租户编码不能为空', 'system.tenantPackageSubscribe.back.tenantCode.notEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '租户编码不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 33. price - 不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackageSubscribe.back.price.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-套餐价格不能为空', 'system.tenantPackageSubscribe.back.price.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.back.price.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-套餐价格不能为空', 'system.tenantPackageSubscribe.back.price.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'subscribe price cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.back.price.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-套餐价格不能为空', 'system.tenantPackageSubscribe.back.price.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '套餐价格不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 34. discountPrice - 不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackageSubscribe.back.discountPrice.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-优惠价格不能为空', 'system.tenantPackageSubscribe.back.discountPrice.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.back.discountPrice.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-优惠价格不能为空', 'system.tenantPackageSubscribe.back.discountPrice.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'subscribe discount price cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.back.discountPrice.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-优惠价格不能为空', 'system.tenantPackageSubscribe.back.discountPrice.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '优惠价格不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 35. days - 不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackageSubscribe.back.days.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-天数不能为空', 'system.tenantPackageSubscribe.back.days.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.back.days.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-天数不能为空', 'system.tenantPackageSubscribe.back.days.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'subscribe days cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.back.days.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-天数不能为空', 'system.tenantPackageSubscribe.back.days.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '天数不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 36. totalPrice - 不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackageSubscribe.back.totalPrice.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-总价格不能为空', 'system.tenantPackageSubscribe.back.totalPrice.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.back.totalPrice.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-总价格不能为空', 'system.tenantPackageSubscribe.back.totalPrice.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'subscribe total price cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.back.totalPrice.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-总价格不能为空', 'system.tenantPackageSubscribe.back.totalPrice.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '总价格不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 37. status - 不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackageSubscribe.back.status.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-订阅状态不能为空', 'system.tenantPackageSubscribe.back.status.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.back.status.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-订阅状态不能为空', 'system.tenantPackageSubscribe.back.status.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'subscribe status cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.back.status.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-订阅状态不能为空', 'system.tenantPackageSubscribe.back.status.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '订阅状态不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 38. payStatus - 不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackageSubscribe.back.payStatus.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-支付状态不能为空', 'system.tenantPackageSubscribe.back.payStatus.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.back.payStatus.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-支付状态不能为空', 'system.tenantPackageSubscribe.back.payStatus.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'subscribe pay status cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.back.payStatus.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-支付状态不能为空', 'system.tenantPackageSubscribe.back.payStatus.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '支付状态不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 39. startTime - 不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackageSubscribe.back.startTime.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-开始时间不能为空', 'system.tenantPackageSubscribe.back.startTime.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.back.startTime.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-开始时间不能为空', 'system.tenantPackageSubscribe.back.startTime.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'subscribe start time cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.back.startTime.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-开始时间不能为空', 'system.tenantPackageSubscribe.back.startTime.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '开始时间不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 40. endTime - 不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackageSubscribe.back.endTime.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-结束时间不能为空', 'system.tenantPackageSubscribe.back.endTime.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.back.endTime.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-结束时间不能为空', 'system.tenantPackageSubscribe.back.endTime.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'subscribe end time cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.back.endTime.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-结束时间不能为空', 'system.tenantPackageSubscribe.back.endTime.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '结束时间不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
