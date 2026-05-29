-- =============================================
-- system user 校验消息国际化 SQL
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
-- UserSaveReqVO (user)
-- =============================================

-- 1. username - 不能为空白
DELETE FROM infra_i18n_key WHERE message_key = 'system.user.back.username.notBlank';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-用户账号不能为空白', 'system.user.back.username.notBlank', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.back.username.notBlank' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-用户账号不能为空白', 'system.user.back.username.notBlank', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'username cannot be blank', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.back.username.notBlank' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-用户账号不能为空白', 'system.user.back.username.notBlank', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '用户账号不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. username - 格式不匹配
DELETE FROM infra_i18n_key WHERE message_key = 'system.user.back.username.pattern';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-用户账号格式不匹配', 'system.user.back.username.pattern', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.back.username.pattern' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-用户账号格式不匹配', 'system.user.back.username.pattern', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'username format is invalid', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.back.username.pattern' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-用户账号格式不匹配', 'system.user.back.username.pattern', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '用户账号由 数字、字母 组成', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. username - 长度超限
DELETE FROM infra_i18n_key WHERE message_key = 'system.user.back.username.length';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-用户账号长度为4-30个字符', 'system.user.back.username.length', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.back.username.length' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-用户账号长度为4-30个字符', 'system.user.back.username.length', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'username length must be between 4 and 30 characters', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.back.username.length' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-用户账号长度为4-30个字符', 'system.user.back.username.length', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '用户账号长度为 4-30 个字符', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. nickname - 长度超限
DELETE FROM infra_i18n_key WHERE message_key = 'system.user.back.nickname.length';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-用户昵称长度不能超过30个字符', 'system.user.back.nickname.length', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.back.nickname.length' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-用户昵称长度不能超过30个字符', 'system.user.back.nickname.length', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'nickname length cannot exceed 30 characters', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.back.nickname.length' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-用户昵称长度不能超过30个字符', 'system.user.back.nickname.length', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '用户昵称长度不能超过30个字符', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. email - 邮箱格式不正确
DELETE FROM infra_i18n_key WHERE message_key = 'system.user.back.email.email';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-邮箱格式不正确', 'system.user.back.email.email', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.back.email.email' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-邮箱格式不正确', 'system.user.back.email.email', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'email must be a valid email address', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.back.email.email' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-邮箱格式不正确', 'system.user.back.email.email', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '邮箱格式不正确', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 6. email - 长度超限
DELETE FROM infra_i18n_key WHERE message_key = 'system.user.back.email.length';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-邮箱长度不能超过50个字符', 'system.user.back.email.length', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.back.email.length' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-邮箱长度不能超过50个字符', 'system.user.back.email.length', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'email length cannot exceed 50 characters', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.back.email.length' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-邮箱长度不能超过50个字符', 'system.user.back.email.length', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '邮箱长度不能超过 50 个字符', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 7. password - 长度超限
DELETE FROM infra_i18n_key WHERE message_key = 'system.user.back.password.length';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-密码长度为4-16位', 'system.user.back.password.length', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.back.password.length' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-密码长度为4-16位', 'system.user.back.password.length', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'password length must be between 4 and 16 characters', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.back.password.length' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-密码长度为4-16位', 'system.user.back.password.length', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '密码长度为 4-16 位', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 8. password - 不能为空白（AssertTrue）
DELETE FROM infra_i18n_key WHERE message_key = 'system.user.back.password.notBlank';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-密码不能为空白', 'system.user.back.password.notBlank', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.back.password.notBlank' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-密码不能为空白', 'system.user.back.password.notBlank', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'password cannot be blank', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.back.password.notBlank' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-密码不能为空白', 'system.user.back.password.notBlank', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '密码不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- UserUpdateStatusReqVO (user)
-- =============================================

-- 9. id - 不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'system.user.back.id.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-用户编号不能为空', 'system.user.back.id.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.back.id.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-用户编号不能为空', 'system.user.back.id.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'user id cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.back.id.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-用户编号不能为空', 'system.user.back.id.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '用户编号不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 10. status - 不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'system.user.back.status.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-状态不能为空', 'system.user.back.status.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.back.status.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-状态不能为空', 'system.user.back.status.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'status cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.back.status.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-状态不能为空', 'system.user.back.status.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '状态不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- UserUpdatePasswordReqVO (user)
-- =============================================

-- 11. password - 不能为空白
DELETE FROM infra_i18n_key WHERE message_key = 'system.user.back.password.notBlank';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-密码不能为空白', 'system.user.back.password.notBlank', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.back.password.notBlank' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-密码不能为空白', 'system.user.back.password.notBlank', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'password cannot be blank', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.back.password.notBlank' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-密码不能为空白', 'system.user.back.password.notBlank', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '密码不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- UserProfileUpdatePasswordReqVO (userProfile)
-- =============================================

-- 12. oldPassword - 不能为空白
DELETE FROM infra_i18n_key WHERE message_key = 'system.userProfile.back.oldPassword.notBlank';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户个人中心-旧密码不能为空白', 'system.userProfile.back.oldPassword.notBlank', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.userProfile.back.oldPassword.notBlank' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户个人中心-旧密码不能为空白', 'system.userProfile.back.oldPassword.notBlank', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'old password cannot be blank', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.userProfile.back.oldPassword.notBlank' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户个人中心-旧密码不能为空白', 'system.userProfile.back.oldPassword.notBlank', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '旧密码不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 13. oldPassword - 长度超限
DELETE FROM infra_i18n_key WHERE message_key = 'system.userProfile.back.oldPassword.length';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户个人中心-旧密码长度为4-16位', 'system.userProfile.back.oldPassword.length', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.userProfile.back.oldPassword.length' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户个人中心-旧密码长度为4-16位', 'system.userProfile.back.oldPassword.length', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'old password length must be between 4 and 16 characters', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.userProfile.back.oldPassword.length' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户个人中心-旧密码长度为4-16位', 'system.userProfile.back.oldPassword.length', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '密码长度为 4-16 位', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 14. newPassword - 不能为空白
DELETE FROM infra_i18n_key WHERE message_key = 'system.userProfile.back.newPassword.notBlank';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户个人中心-新密码不能为空白', 'system.userProfile.back.newPassword.notBlank', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.userProfile.back.newPassword.notBlank' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户个人中心-新密码不能为空白', 'system.userProfile.back.newPassword.notBlank', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'new password cannot be blank', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.userProfile.back.newPassword.notBlank' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户个人中心-新密码不能为空白', 'system.userProfile.back.newPassword.notBlank', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '新密码不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 15. newPassword - 长度超限
DELETE FROM infra_i18n_key WHERE message_key = 'system.userProfile.back.newPassword.length';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户个人中心-新密码长度为4-16位', 'system.userProfile.back.newPassword.length', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.userProfile.back.newPassword.length' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户个人中心-新密码长度为4-16位', 'system.userProfile.back.newPassword.length', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'new password length must be between 4 and 16 characters', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.userProfile.back.newPassword.length' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户个人中心-新密码长度为4-16位', 'system.userProfile.back.newPassword.length', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '密码长度为 4-16 位', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- UserProfileUpdateReqVO (userProfile)
-- =============================================

-- 16. nickname - 长度超限
DELETE FROM infra_i18n_key WHERE message_key = 'system.userProfile.back.nickname.length';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户个人中心-用户昵称长度不能超过30个字符', 'system.userProfile.back.nickname.length', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.userProfile.back.nickname.length' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户个人中心-用户昵称长度不能超过30个字符', 'system.userProfile.back.nickname.length', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'nickname length cannot exceed 30 characters', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.userProfile.back.nickname.length' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户个人中心-用户昵称长度不能超过30个字符', 'system.userProfile.back.nickname.length', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '用户昵称长度不能超过 30 个字符', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 17. email - 邮箱格式不正确
DELETE FROM infra_i18n_key WHERE message_key = 'system.userProfile.back.email.email';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户个人中心-邮箱格式不正确', 'system.userProfile.back.email.email', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.userProfile.back.email.email' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户个人中心-邮箱格式不正确', 'system.userProfile.back.email.email', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'email must be a valid email address', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.userProfile.back.email.email' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户个人中心-邮箱格式不正确', 'system.userProfile.back.email.email', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '邮箱格式不正确', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 18. email - 长度超限
DELETE FROM infra_i18n_key WHERE message_key = 'system.userProfile.back.email.length';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户个人中心-邮箱长度不能超过50个字符', 'system.userProfile.back.email.length', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.userProfile.back.email.length' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户个人中心-邮箱长度不能超过50个字符', 'system.userProfile.back.email.length', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'email length cannot exceed 50 characters', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.userProfile.back.email.length' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户个人中心-邮箱长度不能超过50个字符', 'system.userProfile.back.email.length', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '邮箱长度不能超过 50 个字符', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 19. mobile - 长度超限
DELETE FROM infra_i18n_key WHERE message_key = 'system.userProfile.back.mobile.length';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户个人中心-手机号长度必须11位', 'system.userProfile.back.mobile.length', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.userProfile.back.mobile.length' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户个人中心-手机号长度必须11位', 'system.userProfile.back.mobile.length', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'mobile number length must be 11 characters', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.userProfile.back.mobile.length' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户个人中心-手机号长度必须11位', 'system.userProfile.back.mobile.length', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '手机号长度必须 11 位', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
