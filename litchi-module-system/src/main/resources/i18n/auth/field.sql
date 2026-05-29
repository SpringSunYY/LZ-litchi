-- =============================================
-- system auth 字段国际化 SQL
-- 生成时间：2026-05-29
-- 规范版本：v6.1
-- =============================================

-- ---------------------------------------------
-- 变量定义（必须全部定义，INSERT 中必须全部使用变量）
-- ---------------------------------------------
SET @IS_SYSTEM = 0;
SET @USE_TYPE_FORM = 2;
SET @MODULE_TYPE = 'system';
SET @LOCALE_TARGET_BACKEND = 1;
SET @LOCALE_EN = 'en-US';
SET @LOCALE_ZH_CN = 'zh-CN';
SET @CREATOR = '0';
SET @REMARK = 'ai auto generate';
SET @ORDER_NUM = 5;

-- =============================================
-- CaptchaVerificationReqVO (captchaVerification)
-- =============================================

-- 1. captchaVerification - 验证码
DELETE FROM infra_i18n_key WHERE message_key = 'system.captchaVerification.field.captchaVerification';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('验证码-验证码', 'system.captchaVerification.field.captchaVerification', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.captchaVerification.field.captchaVerification' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('验证码-验证码', 'system.captchaVerification.field.captchaVerification', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'captcha verification', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.captchaVerification.field.captchaVerification' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('验证码-验证码', 'system.captchaVerification.field.captchaVerification', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '验证码', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- AuthLoginReqVO (authLogin)
-- =============================================

-- 2. username - 账号
DELETE FROM infra_i18n_key WHERE message_key = 'system.authLogin.field.username';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录-账号', 'system.authLogin.field.username', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.authLogin.field.username' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录-账号', 'system.authLogin.field.username', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'username', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.authLogin.field.username' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录-账号', 'system.authLogin.field.username', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '账号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. password - 密码
DELETE FROM infra_i18n_key WHERE message_key = 'system.authLogin.field.password';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录-密码', 'system.authLogin.field.password', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.authLogin.field.password' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录-密码', 'system.authLogin.field.password', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'password', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.authLogin.field.password' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录-密码', 'system.authLogin.field.password', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '密码', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. socialType - 社交平台的类型
DELETE FROM infra_i18n_key WHERE message_key = 'system.authLogin.field.socialType';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录-社交平台的类型', 'system.authLogin.field.socialType', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.authLogin.field.socialType' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录-社交平台的类型', 'system.authLogin.field.socialType', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'social platform type', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.authLogin.field.socialType' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录-社交平台的类型', 'system.authLogin.field.socialType', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '社交平台的类型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. socialCode - 授权码
DELETE FROM infra_i18n_key WHERE message_key = 'system.authLogin.field.socialCode';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录-授权码', 'system.authLogin.field.socialCode', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.authLogin.field.socialCode' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录-授权码', 'system.authLogin.field.socialCode', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'authorization code', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.authLogin.field.socialCode' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录-授权码', 'system.authLogin.field.socialCode', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '授权码', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 6. socialState - state
DELETE FROM infra_i18n_key WHERE message_key = 'system.authLogin.field.socialState';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录-state', 'system.authLogin.field.socialState', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.authLogin.field.socialState' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录-state', 'system.authLogin.field.socialState', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'state', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.authLogin.field.socialState' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录-state', 'system.authLogin.field.socialState', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'state', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- AuthRegisterReqVO (authRegister)
-- =============================================

-- 7. username - 用户账号
DELETE FROM infra_i18n_key WHERE message_key = 'system.authRegister.field.username';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('注册-用户账号', 'system.authRegister.field.username', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.authRegister.field.username' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('注册-用户账号', 'system.authRegister.field.username', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'username', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.authRegister.field.username' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('注册-用户账号', 'system.authRegister.field.username', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '用户账号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 8. nickname - 用户昵称
DELETE FROM infra_i18n_key WHERE message_key = 'system.authRegister.field.nickname';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('注册-用户昵称', 'system.authRegister.field.nickname', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.authRegister.field.nickname' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('注册-用户昵称', 'system.authRegister.field.nickname', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'nickname', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.authRegister.field.nickname' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('注册-用户昵称', 'system.authRegister.field.nickname', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '用户昵称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 9. password - 密码
DELETE FROM infra_i18n_key WHERE message_key = 'system.authRegister.field.password';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('注册-密码', 'system.authRegister.field.password', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.authRegister.field.password' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('注册-密码', 'system.authRegister.field.password', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'password', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.authRegister.field.password' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('注册-密码', 'system.authRegister.field.password', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '密码', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 10. tenantCode - 租户编号
DELETE FROM infra_i18n_key WHERE message_key = 'system.authRegister.field.tenantCode';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('注册-租户编号', 'system.authRegister.field.tenantCode', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.authRegister.field.tenantCode' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('注册-租户编号', 'system.authRegister.field.tenantCode', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'tenant code', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.authRegister.field.tenantCode' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('注册-租户编号', 'system.authRegister.field.tenantCode', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '租户编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 11. tenantName - 租户名
DELETE FROM infra_i18n_key WHERE message_key = 'system.authRegister.field.tenantName';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('注册-租户名', 'system.authRegister.field.tenantName', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.authRegister.field.tenantName' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('注册-租户名', 'system.authRegister.field.tenantName', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'tenant name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.authRegister.field.tenantName' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('注册-租户名', 'system.authRegister.field.tenantName', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '租户名', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 12. contactName - 联系人
DELETE FROM infra_i18n_key WHERE message_key = 'system.authRegister.field.contactName';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('注册-联系人', 'system.authRegister.field.contactName', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.authRegister.field.contactName' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('注册-联系人', 'system.authRegister.field.contactName', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'contact name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.authRegister.field.contactName' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('注册-联系人', 'system.authRegister.field.contactName', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '联系人', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 13. contactMobile - 联系手机
DELETE FROM infra_i18n_key WHERE message_key = 'system.authRegister.field.contactMobile';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('注册-联系手机', 'system.authRegister.field.contactMobile', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.authRegister.field.contactMobile' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('注册-联系手机', 'system.authRegister.field.contactMobile', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'contact mobile', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.authRegister.field.contactMobile' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('注册-联系手机', 'system.authRegister.field.contactMobile', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '联系手机', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- AuthResetPasswordReqVO (smsCode)
-- =============================================

-- 14. password - 密码
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsCode.field.password';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信验证码-密码', 'system.smsCode.field.password', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsCode.field.password' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信验证码-密码', 'system.smsCode.field.password', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'password', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsCode.field.password' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信验证码-密码', 'system.smsCode.field.password', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '密码', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 15. mobile - 手机号
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsCode.field.mobile';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信验证码-手机号', 'system.smsCode.field.mobile', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsCode.field.mobile' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信验证码-手机号', 'system.smsCode.field.mobile', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'mobile number', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsCode.field.mobile' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信验证码-手机号', 'system.smsCode.field.mobile', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '手机号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 16. code - 手机短信验证码
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsCode.field.code';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信验证码-手机短信验证码', 'system.smsCode.field.code', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsCode.field.code' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信验证码-手机短信验证码', 'system.smsCode.field.code', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'verification code', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsCode.field.code' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信验证码-手机短信验证码', 'system.smsCode.field.code', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '手机短信验证码', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- AuthSmsLoginReqVO (smsCode)
-- =============================================

-- (mobile, code already defined above)

-- =============================================
-- AuthSmsSendReqVO (smsCode)
-- =============================================

-- 17. scene - 短信场景
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsCode.field.scene';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信验证码-短信场景', 'system.smsCode.field.scene', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsCode.field.scene' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信验证码-短信场景', 'system.smsCode.field.scene', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'sms scene', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsCode.field.scene' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信验证码-短信场景', 'system.smsCode.field.scene', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '短信场景', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- AuthSocialLoginReqVO (socialLogin)
-- =============================================

-- 18. type - 社交平台的类型
DELETE FROM infra_i18n_key WHERE message_key = 'system.socialLogin.field.type';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交登录-社交平台的类型', 'system.socialLogin.field.type', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.socialLogin.field.type' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交登录-社交平台的类型', 'system.socialLogin.field.type', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'social platform type', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.socialLogin.field.type' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交登录-社交平台的类型', 'system.socialLogin.field.type', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '社交平台的类型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 19. code - 授权码
DELETE FROM infra_i18n_key WHERE message_key = 'system.socialLogin.field.code';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交登录-授权码', 'system.socialLogin.field.code', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.socialLogin.field.code' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交登录-授权码', 'system.socialLogin.field.code', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'authorization code', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.socialLogin.field.code' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交登录-授权码', 'system.socialLogin.field.code', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '授权码', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 20. state - state
DELETE FROM infra_i18n_key WHERE message_key = 'system.socialLogin.field.state';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交登录-state', 'system.socialLogin.field.state', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.socialLogin.field.state' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交登录-state', 'system.socialLogin.field.state', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'state', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.socialLogin.field.state' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交登录-state', 'system.socialLogin.field.state', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'state', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- AuthLoginRespVO (authLogin)
-- =============================================

-- 21. userId - 用户编号
DELETE FROM infra_i18n_key WHERE message_key = 'system.authLogin.field.userId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录-用户编号', 'system.authLogin.field.userId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.authLogin.field.userId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录-用户编号', 'system.authLogin.field.userId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'user id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.authLogin.field.userId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录-用户编号', 'system.authLogin.field.userId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '用户编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 22. accessToken - 访问令牌
DELETE FROM infra_i18n_key WHERE message_key = 'system.authLogin.field.accessToken';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录-访问令牌', 'system.authLogin.field.accessToken', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.authLogin.field.accessToken' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录-访问令牌', 'system.authLogin.field.accessToken', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'access token', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.authLogin.field.accessToken' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录-访问令牌', 'system.authLogin.field.accessToken', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '访问令牌', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 23. refreshToken - 刷新令牌
DELETE FROM infra_i18n_key WHERE message_key = 'system.authLogin.field.refreshToken';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录-刷新令牌', 'system.authLogin.field.refreshToken', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.authLogin.field.refreshToken' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录-刷新令牌', 'system.authLogin.field.refreshToken', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'refresh token', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.authLogin.field.refreshToken' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录-刷新令牌', 'system.authLogin.field.refreshToken', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '刷新令牌', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 24. expiresTime - 过期时间
DELETE FROM infra_i18n_key WHERE message_key = 'system.authLogin.field.expiresTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录-过期时间', 'system.authLogin.field.expiresTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.authLogin.field.expiresTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录-过期时间', 'system.authLogin.field.expiresTime', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'expiration time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.authLogin.field.expiresTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录-过期时间', 'system.authLogin.field.expiresTime', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '过期时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- AuthPermissionInfoRespVO (permissionInfo)
-- =============================================

-- 25. id - 用户编号
DELETE FROM infra_i18n_key WHERE message_key = 'system.permissionInfo.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('权限信息-用户编号', 'system.permissionInfo.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.permissionInfo.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('权限信息-用户编号', 'system.permissionInfo.field.id', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.permissionInfo.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('权限信息-用户编号', 'system.permissionInfo.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '用户编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 26. nickname - 用户昵称
DELETE FROM infra_i18n_key WHERE message_key = 'system.permissionInfo.field.nickname';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('权限信息-用户昵称', 'system.permissionInfo.field.nickname', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.permissionInfo.field.nickname' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('权限信息-用户昵称', 'system.permissionInfo.field.nickname', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'nickname', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.permissionInfo.field.nickname' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('权限信息-用户昵称', 'system.permissionInfo.field.nickname', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '用户昵称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 27. avatar - 用户头像
DELETE FROM infra_i18n_key WHERE message_key = 'system.permissionInfo.field.avatar';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('权限信息-用户头像', 'system.permissionInfo.field.avatar', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.permissionInfo.field.avatar' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('权限信息-用户头像', 'system.permissionInfo.field.avatar', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'avatar', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.permissionInfo.field.avatar' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('权限信息-用户头像', 'system.permissionInfo.field.avatar', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '用户头像', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 28. deptId - 部门编号
DELETE FROM infra_i18n_key WHERE message_key = 'system.permissionInfo.field.deptId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('权限信息-部门编号', 'system.permissionInfo.field.deptId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.permissionInfo.field.deptId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('权限信息-部门编号', 'system.permissionInfo.field.deptId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'department id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.permissionInfo.field.deptId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('权限信息-部门编号', 'system.permissionInfo.field.deptId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '部门编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 29. username - 用户账号
DELETE FROM infra_i18n_key WHERE message_key = 'system.permissionInfo.field.username';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('权限信息-用户账号', 'system.permissionInfo.field.username', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.permissionInfo.field.username' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('权限信息-用户账号', 'system.permissionInfo.field.username', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'username', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.permissionInfo.field.username' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('权限信息-用户账号', 'system.permissionInfo.field.username', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '用户账号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 30. email - 用户邮箱
DELETE FROM infra_i18n_key WHERE message_key = 'system.permissionInfo.field.email';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('权限信息-用户邮箱', 'system.permissionInfo.field.email', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.permissionInfo.field.email' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('权限信息-用户邮箱', 'system.permissionInfo.field.email', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'email', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.permissionInfo.field.email' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('权限信息-用户邮箱', 'system.permissionInfo.field.email', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '用户邮箱', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- AuthMenuRespVO (menu)
-- =============================================

-- 31. parentId - 父菜单 ID
DELETE FROM infra_i18n_key WHERE message_key = 'system.menu.field.parentId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单-父菜单ID', 'system.menu.field.parentId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.field.parentId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单-父菜单ID', 'system.menu.field.parentId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'parent menu id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.field.parentId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单-父菜单ID', 'system.menu.field.parentId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '父菜单ID', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 32. name - 菜单名称
DELETE FROM infra_i18n_key WHERE message_key = 'system.menu.field.name';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单-菜单名称', 'system.menu.field.name', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.field.name' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单-菜单名称', 'system.menu.field.name', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'menu name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.field.name' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单-菜单名称', 'system.menu.field.name', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '菜单名称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 33. path - 路由地址
DELETE FROM infra_i18n_key WHERE message_key = 'system.menu.field.path';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单-路由地址', 'system.menu.field.path', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.field.path' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单-路由地址', 'system.menu.field.path', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'route path', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.field.path' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单-路由地址', 'system.menu.field.path', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '路由地址', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 34. component - 组件路径
DELETE FROM infra_i18n_key WHERE message_key = 'system.menu.field.component';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单-组件路径', 'system.menu.field.component', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.field.component' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单-组件路径', 'system.menu.field.component', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'component path', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.field.component' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单-组件路径', 'system.menu.field.component', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '组件路径', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 35. componentName - 组件名
DELETE FROM infra_i18n_key WHERE message_key = 'system.menu.field.componentName';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单-组件名', 'system.menu.field.componentName', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.field.componentName' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单-组件名', 'system.menu.field.componentName', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'component name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.field.componentName' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单-组件名', 'system.menu.field.componentName', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '组件名', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 36. icon - 菜单图标
DELETE FROM infra_i18n_key WHERE message_key = 'system.menu.field.icon';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单-菜单图标', 'system.menu.field.icon', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.field.icon' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单-菜单图标', 'system.menu.field.icon', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'menu icon', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.field.icon' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单-菜单图标', 'system.menu.field.icon', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '菜单图标', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 37. visible - 是否可见
DELETE FROM infra_i18n_key WHERE message_key = 'system.menu.field.visible';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单-是否可见', 'system.menu.field.visible', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.field.visible' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单-是否可见', 'system.menu.field.visible', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'visible', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.field.visible' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单-是否可见', 'system.menu.field.visible', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '是否可见', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 38. keepAlive - 是否缓存
DELETE FROM infra_i18n_key WHERE message_key = 'system.menu.field.keepAlive';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单-是否缓存', 'system.menu.field.keepAlive', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.field.keepAlive' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单-是否缓存', 'system.menu.field.keepAlive', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'keep alive', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.field.keepAlive' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单-是否缓存', 'system.menu.field.keepAlive', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '是否缓存', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 39. alwaysShow - 是否总是显示
DELETE FROM infra_i18n_key WHERE message_key = 'system.menu.field.alwaysShow';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单-是否总是显示', 'system.menu.field.alwaysShow', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.field.alwaysShow' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单-是否总是显示', 'system.menu.field.alwaysShow', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'always show', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.field.alwaysShow' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单-是否总是显示', 'system.menu.field.alwaysShow', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '是否总是显示', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 40. i18n - i18n 国际化
DELETE FROM infra_i18n_key WHERE message_key = 'system.menu.field.i18n';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单-i18n国际化', 'system.menu.field.i18n', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.field.i18n' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单-i18n国际化', 'system.menu.field.i18n', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'i18n', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.field.i18n' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单-i18n国际化', 'system.menu.field.i18n', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'i18n国际化', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 41. newWindows - 新窗口
DELETE FROM infra_i18n_key WHERE message_key = 'system.menu.field.newWindows';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单-新窗口', 'system.menu.field.newWindows', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.field.newWindows' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单-新窗口', 'system.menu.field.newWindows', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'new window', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.field.newWindows' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单-新窗口', 'system.menu.field.newWindows', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '新窗口', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 42. layout - 布局
DELETE FROM infra_i18n_key WHERE message_key = 'system.menu.field.layout';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单-布局', 'system.menu.field.layout', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.field.layout' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单-布局', 'system.menu.field.layout', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'layout', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.field.layout' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单-布局', 'system.menu.field.layout', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '布局', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
