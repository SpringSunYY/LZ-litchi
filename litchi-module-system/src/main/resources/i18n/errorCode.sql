-- =============================================
-- system 模块错误码国际化 SQL
-- 生成时间：2026-05-25
-- 规范版本：v1.2
-- =============================================

-- ---------------------------------------------
-- 变量定义（运行时可覆盖）
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
-- AUTH 模块（1-002-000-000）
-- =============================================

-- 1. 登录失败账号密码不正确

DELETE FROM infra_i18n_key WHERE message_key = 'system.auth.back.badCredentials';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录-账号密码错误', 'system.auth.back.badCredentials', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 1. 登录失败账号密码不正确 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.auth.back.badCredentials' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录-账号密码错误', 'system.auth.back.badCredentials', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'login failed, incorrect account or password', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 1. 登录失败账号密码不正确 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.auth.back.badCredentials' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录-账号密码错误', 'system.auth.back.badCredentials', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '登录失败，账号密码不正确', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. 登录失败账号被禁用

DELETE FROM infra_i18n_key WHERE message_key = 'system.auth.back.disabled';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录-账号被禁用', 'system.auth.back.disabled', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. 登录失败账号被禁用 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.auth.back.disabled' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录-账号被禁用', 'system.auth.back.disabled', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'login failed, account is disabled', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. 登录失败账号被禁用 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.auth.back.disabled' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录-账号被禁用', 'system.auth.back.disabled', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '登录失败，账号被禁用', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. 验证码不正确

DELETE FROM infra_i18n_key WHERE message_key = 'system.auth.back.captchaError';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录-验证码错误', 'system.auth.back.captchaError', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. 验证码不正确 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.auth.back.captchaError' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录-验证码错误', 'system.auth.back.captchaError', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'captcha incorrect, reason: {}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. 验证码不正确 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.auth.back.captchaError' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录-验证码错误', 'system.auth.back.captchaError', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '验证码不正确，原因：{}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. 第三方登录未绑定

DELETE FROM infra_i18n_key WHERE message_key = 'system.auth.back.thirdNotBind';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录-第三方未绑定', 'system.auth.back.thirdNotBind', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. 第三方登录未绑定 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.auth.back.thirdNotBind' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录-第三方未绑定', 'system.auth.back.thirdNotBind', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'third-party login not bound, binding required', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. 第三方登录未绑定 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.auth.back.thirdNotBind' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录-第三方未绑定', 'system.auth.back.thirdNotBind', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '未绑定账号，需要进行绑定', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. 手机号不存在

DELETE FROM infra_i18n_key WHERE message_key = 'system.auth.back.mobileNotExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录-手机号未注册', 'system.auth.back.mobileNotExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. 手机号不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.auth.back.mobileNotExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录-手机号未注册', 'system.auth.back.mobileNotExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'mobile number not registered', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. 手机号不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.auth.back.mobileNotExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录-手机号未注册', 'system.auth.back.mobileNotExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '手机号不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 6. 注册验证码不正确

DELETE FROM infra_i18n_key WHERE message_key = 'system.auth.back.registerCaptchaError';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('注册-验证码错误', 'system.auth.back.registerCaptchaError', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 6. 注册验证码不正确 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.auth.back.registerCaptchaError' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('注册-验证码错误', 'system.auth.back.registerCaptchaError', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'registration captcha incorrect, reason: {}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 6. 注册验证码不正确 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.auth.back.registerCaptchaError' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('注册-验证码错误', 'system.auth.back.registerCaptchaError', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '验证码不正确，原因：{}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 7. 租户编码已存在

DELETE FROM infra_i18n_key WHERE message_key = 'system.auth.back.tenantCodeExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('注册-租户编码已存在', 'system.auth.back.tenantCodeExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 7. 租户编码已存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.auth.back.tenantCodeExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('注册-租户编码已存在', 'system.auth.back.tenantCodeExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'tenant code already exists: {}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 7. 租户编码已存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.auth.back.tenantCodeExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('注册-租户编码已存在', 'system.auth.back.tenantCodeExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '租户编码已经存在：{}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- 菜单模块（1-002-001-000）
-- =============================================

-- 8. 菜单名称已存在

DELETE FROM infra_i18n_key WHERE message_key = 'system.menu.back.nameDuplicate';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单-名称已存在', 'system.menu.back.nameDuplicate', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 8. 菜单名称已存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.back.nameDuplicate' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单-名称已存在', 'system.menu.back.nameDuplicate', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'menu name already exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 8. 菜单名称已存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.back.nameDuplicate' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单-名称已存在', 'system.menu.back.nameDuplicate', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '已经存在该名字的菜单', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 9. 父菜单不存在

DELETE FROM infra_i18n_key WHERE message_key = 'system.menu.back.parentNotExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单-父级不存在', 'system.menu.back.parentNotExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 9. 父菜单不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.back.parentNotExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单-父级不存在', 'system.menu.back.parentNotExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'parent menu not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 9. 父菜单不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.back.parentNotExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单-父级不存在', 'system.menu.back.parentNotExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '父菜单不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 10. 不能设置自己为父菜单

DELETE FROM infra_i18n_key WHERE message_key = 'system.menu.back.parentSelfError';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单-不能设置自己为父级', 'system.menu.back.parentSelfError', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 10. 不能设置自己为父菜单 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.back.parentSelfError' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单-不能设置自己为父级', 'system.menu.back.parentSelfError', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'cannot set itself as parent menu', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 10. 不能设置自己为父菜单 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.back.parentSelfError' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单-不能设置自己为父级', 'system.menu.back.parentSelfError', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '不能设置自己为父菜单', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 11. 菜单不存在

DELETE FROM infra_i18n_key WHERE message_key = 'system.menu.back.notExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单-不存在', 'system.menu.back.notExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 11. 菜单不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.back.notExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单-不存在', 'system.menu.back.notExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'menu not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 11. 菜单不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.back.notExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单-不存在', 'system.menu.back.notExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '菜单不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 12. 菜单存在子菜单无法删除

DELETE FROM infra_i18n_key WHERE message_key = 'system.menu.back.hasChildren';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单-存在子级', 'system.menu.back.hasChildren', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 12. 菜单存在子菜单无法删除 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.back.hasChildren' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单-存在子级', 'system.menu.back.hasChildren', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'menu has children, cannot delete', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 12. 菜单存在子菜单无法删除 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.back.hasChildren' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单-存在子级', 'system.menu.back.hasChildren', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '存在子菜单，无法删除', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 13. 父菜单类型必须是目录或菜单

DELETE FROM infra_i18n_key WHERE message_key = 'system.menu.back.parentTypeError';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单-父级类型错误', 'system.menu.back.parentTypeError', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 13. 父菜单类型必须是目录或菜单 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.back.parentTypeError' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单-父级类型错误', 'system.menu.back.parentTypeError', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'parent menu type must be directory or menu', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 13. 父菜单类型必须是目录或菜单 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.back.parentTypeError' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单-父级类型错误', 'system.menu.back.parentTypeError', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '父菜单的类型必须是目录或者菜单', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 14. 菜单组件名已存在

DELETE FROM infra_i18n_key WHERE message_key = 'system.menu.back.componentNameDuplicate';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单-组件名已存在', 'system.menu.back.componentNameDuplicate', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 14. 菜单组件名已存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.back.componentNameDuplicate' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单-组件名已存在', 'system.menu.back.componentNameDuplicate', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'menu component name already exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 14. 菜单组件名已存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.back.componentNameDuplicate' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单-组件名已存在', 'system.menu.back.componentNameDuplicate', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '已经存在该组件名的菜单', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- 角色模块（1-002-002-000）
-- =============================================

-- 15. 角色不存在

DELETE FROM infra_i18n_key WHERE message_key = 'system.role.back.notExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色-不存在', 'system.role.back.notExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 15. 角色不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.role.back.notExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色-不存在', 'system.role.back.notExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'role not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 15. 角色不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.role.back.notExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色-不存在', 'system.role.back.notExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '角色不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 16. 角色名称已存在

DELETE FROM infra_i18n_key WHERE message_key = 'system.role.back.nameDuplicate';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色-名称已存在', 'system.role.back.nameDuplicate', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 16. 角色名称已存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.role.back.nameDuplicate' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色-名称已存在', 'system.role.back.nameDuplicate', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'role name [{}] already exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 16. 角色名称已存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.role.back.nameDuplicate' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色-名称已存在', 'system.role.back.nameDuplicate', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '已经存在名为【{}】的角色', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 17. 角色标识已存在

DELETE FROM infra_i18n_key WHERE message_key = 'system.role.back.codeDuplicate';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色-标识已存在', 'system.role.back.codeDuplicate', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 17. 角色标识已存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.role.back.codeDuplicate' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色-标识已存在', 'system.role.back.codeDuplicate', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'role code [{}] already exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 17. 角色标识已存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.role.back.codeDuplicate' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色-标识已存在', 'system.role.back.codeDuplicate', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '已经存在标识为【{}】的角色', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 18. 不能操作系统内置角色

DELETE FROM infra_i18n_key WHERE message_key = 'system.role.back.systemProhibitUpdate';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色-系统内置禁止操作', 'system.role.back.systemProhibitUpdate', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 18. 不能操作系统内置角色 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.role.back.systemProhibitUpdate' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色-系统内置禁止操作', 'system.role.back.systemProhibitUpdate', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'cannot operate on system built-in role', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 18. 不能操作系统内置角色 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.role.back.systemProhibitUpdate' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色-系统内置禁止操作', 'system.role.back.systemProhibitUpdate', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '不能操作类型为系统内置的角色', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 19. 角色已禁用

DELETE FROM infra_i18n_key WHERE message_key = 'system.role.back.disabled';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色-已禁用', 'system.role.back.disabled', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 19. 角色已禁用 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.role.back.disabled' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色-已禁用', 'system.role.back.disabled', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'role [{}] is disabled', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 19. 角色已禁用 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.role.back.disabled' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色-已禁用', 'system.role.back.disabled', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '名字为【{}】的角色已被禁用', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 20. 角色标识不能使用

DELETE FROM infra_i18n_key WHERE message_key = 'system.role.back.adminCodeError';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色-标识错误', 'system.role.back.adminCodeError', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 20. 角色标识不能使用 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.role.back.adminCodeError' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色-标识错误', 'system.role.back.adminCodeError', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'role code [{}] cannot be used', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 20. 角色标识不能使用 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.role.back.adminCodeError' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色-标识错误', 'system.role.back.adminCodeError', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '标识【{}】不能使用', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- 用户模块（1-002-003-000）
-- =============================================

-- 21. 用户账号已存在

DELETE FROM infra_i18n_key WHERE message_key = 'system.user.back.usernameExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-账号已存在', 'system.user.back.usernameExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 21. 用户账号已存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.back.usernameExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-账号已存在', 'system.user.back.usernameExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'username already exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 21. 用户账号已存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.back.usernameExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-账号已存在', 'system.user.back.usernameExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '用户账号已经存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 22. 手机号已存在

DELETE FROM infra_i18n_key WHERE message_key = 'system.user.back.mobileExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-手机号已存在', 'system.user.back.mobileExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 22. 手机号已存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.back.mobileExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-手机号已存在', 'system.user.back.mobileExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'mobile number already exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 22. 手机号已存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.back.mobileExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-手机号已存在', 'system.user.back.mobileExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '手机号已经存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 23. 邮箱已存在

DELETE FROM infra_i18n_key WHERE message_key = 'system.user.back.emailExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-邮箱已存在', 'system.user.back.emailExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 23. 邮箱已存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.back.emailExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-邮箱已存在', 'system.user.back.emailExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'email already exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 23. 邮箱已存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.back.emailExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-邮箱已存在', 'system.user.back.emailExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '邮箱已经存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 24. 用户不存在

DELETE FROM infra_i18n_key WHERE message_key = 'system.user.back.notExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-不存在', 'system.user.back.notExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 24. 用户不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.back.notExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-不存在', 'system.user.back.notExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'user not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 24. 用户不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.back.notExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-不存在', 'system.user.back.notExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '用户不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 25. 导入用户数据不能为空

DELETE FROM infra_i18n_key WHERE message_key = 'system.user.back.importEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-导入数据为空', 'system.user.back.importEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 25. 导入用户数据不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.back.importEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-导入数据为空', 'system.user.back.importEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'imported user data cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 25. 导入用户数据不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.back.importEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-导入数据为空', 'system.user.back.importEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '导入用户数据不能为空！', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 26. 用户密码校验失败

DELETE FROM infra_i18n_key WHERE message_key = 'system.user.back.passwordFailed';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-密码校验失败', 'system.user.back.passwordFailed', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 26. 用户密码校验失败 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.back.passwordFailed' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-密码校验失败', 'system.user.back.passwordFailed', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'user password verification failed', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 26. 用户密码校验失败 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.back.passwordFailed' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-密码校验失败', 'system.user.back.passwordFailed', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '用户密码校验失败', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 27. 用户已禁用

DELETE FROM infra_i18n_key WHERE message_key = 'system.user.back.disabled';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-已禁用', 'system.user.back.disabled', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 27. 用户已禁用 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.back.disabled' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-已禁用', 'system.user.back.disabled', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'user [{}] is disabled', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 27. 用户已禁用 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.back.disabled' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-已禁用', 'system.user.back.disabled', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '名字为【{}】的用户已被禁用', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 28. 超过租户最大配额

DELETE FROM infra_i18n_key WHERE message_key = 'system.user.back.quotaExceeded';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-超过租户配额', 'system.user.back.quotaExceeded', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 28. 超过租户最大配额 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.back.quotaExceeded' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-超过租户配额', 'system.user.back.quotaExceeded', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'failed to create user, tenant max quota ({}) exceeded', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 28. 超过租户最大配额 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.back.quotaExceeded' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-超过租户配额', 'system.user.back.quotaExceeded', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '创建用户失败，原因：超过租户最大租户配额({})！', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 29. 初始密码不能为空

DELETE FROM infra_i18n_key WHERE message_key = 'system.user.back.initPasswordEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-初始密码为空', 'system.user.back.initPasswordEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 29. 初始密码不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.back.initPasswordEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-初始密码为空', 'system.user.back.initPasswordEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'initial password cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 29. 初始密码不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.back.initPasswordEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-初始密码为空', 'system.user.back.initPasswordEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '初始密码不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 30. 该手机号尚未注册

DELETE FROM infra_i18n_key WHERE message_key = 'system.user.back.mobileNotExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-手机号未注册', 'system.user.back.mobileNotExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 30. 该手机号尚未注册 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.back.mobileNotExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-手机号未注册', 'system.user.back.mobileNotExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'mobile number not registered', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 30. 该手机号尚未注册 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.back.mobileNotExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-手机号未注册', 'system.user.back.mobileNotExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '该手机号尚未注册', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 31. 注册功能已关闭

DELETE FROM infra_i18n_key WHERE message_key = 'system.user.back.registerDisabled';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-注册已关闭', 'system.user.back.registerDisabled', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 31. 注册功能已关闭 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.back.registerDisabled' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-注册已关闭', 'system.user.back.registerDisabled', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'registration function is disabled', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 31. 注册功能已关闭 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.back.registerDisabled' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-注册已关闭', 'system.user.back.registerDisabled', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '注册功能已关闭', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- 部门模块（1-002-004-000）
-- =============================================

-- 32. 部门名称已存在

DELETE FROM infra_i18n_key WHERE message_key = 'system.dept.back.nameDuplicate';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门-名称已存在', 'system.dept.back.nameDuplicate', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 32. 部门名称已存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.dept.back.nameDuplicate' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门-名称已存在', 'system.dept.back.nameDuplicate', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'department name already exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 32. 部门名称已存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.dept.back.nameDuplicate' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门-名称已存在', 'system.dept.back.nameDuplicate', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '已经存在该名字的部门', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 33. 父级部门不存在

DELETE FROM infra_i18n_key WHERE message_key = 'system.dept.back.parentNotExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门-父级不存在', 'system.dept.back.parentNotExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 33. 父级部门不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.dept.back.parentNotExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门-父级不存在', 'system.dept.back.parentNotExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'parent department not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 33. 父级部门不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.dept.back.parentNotExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门-父级不存在', 'system.dept.back.parentNotExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '父级部门不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 34. 当前部门不存在

DELETE FROM infra_i18n_key WHERE message_key = 'system.dept.back.notFound';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门-不存在', 'system.dept.back.notFound', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 34. 当前部门不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.dept.back.notFound' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门-不存在', 'system.dept.back.notFound', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'department not found', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 34. 当前部门不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.dept.back.notFound' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门-不存在', 'system.dept.back.notFound', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '当前部门不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 35. 存在子部门无法删除

DELETE FROM infra_i18n_key WHERE message_key = 'system.dept.back.hasChildren';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门-存在子级', 'system.dept.back.hasChildren', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 35. 存在子部门无法删除 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.dept.back.hasChildren' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门-存在子级', 'system.dept.back.hasChildren', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'department has children, cannot delete', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 35. 存在子部门无法删除 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.dept.back.hasChildren' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门-存在子级', 'system.dept.back.hasChildren', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '存在子部门，无法删除', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 36. 不能设置自己为父部门

DELETE FROM infra_i18n_key WHERE message_key = 'system.dept.back.parentSelfError';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门-不能设置自己为父级', 'system.dept.back.parentSelfError', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 36. 不能设置自己为父部门 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.dept.back.parentSelfError' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门-不能设置自己为父级', 'system.dept.back.parentSelfError', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'cannot set itself as parent department', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 36. 不能设置自己为父部门 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.dept.back.parentSelfError' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门-不能设置自己为父级', 'system.dept.back.parentSelfError', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '不能设置自己为父部门', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 37. 部门不处于开启状态不允许选择

DELETE FROM infra_i18n_key WHERE message_key = 'system.dept.back.notEnabled';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门-未启用', 'system.dept.back.notEnabled', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 37. 部门不处于开启状态不允许选择 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.dept.back.notEnabled' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门-未启用', 'system.dept.back.notEnabled', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'department ({}) is not enabled, cannot select', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 37. 部门不处于开启状态不允许选择 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.dept.back.notEnabled' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门-未启用', 'system.dept.back.notEnabled', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '部门({})不处于开启状态，不允许选择', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 38. 不能设置子部门为父部门

DELETE FROM infra_i18n_key WHERE message_key = 'system.dept.back.parentChildError';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门-不能设置子级为父级', 'system.dept.back.parentChildError', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 38. 不能设置子部门为父部门 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.dept.back.parentChildError' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门-不能设置子级为父级', 'system.dept.back.parentChildError', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'cannot set child department as parent', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 38. 不能设置子部门为父部门 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.dept.back.parentChildError' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门-不能设置子级为父级', 'system.dept.back.parentChildError', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '不能设置自己的子部门为父部门', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- 岗位模块（1-002-005-000）
-- =============================================

-- 39. 当前岗位不存在

DELETE FROM infra_i18n_key WHERE message_key = 'system.post.back.notFound';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('岗位-不存在', 'system.post.back.notFound', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 39. 当前岗位不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.post.back.notFound' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('岗位-不存在', 'system.post.back.notFound', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'post not found', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 39. 当前岗位不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.post.back.notFound' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('岗位-不存在', 'system.post.back.notFound', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '当前岗位不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 40. 岗位不处于开启状态不允许选择

DELETE FROM infra_i18n_key WHERE message_key = 'system.post.back.notEnabled';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('岗位-未启用', 'system.post.back.notEnabled', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 40. 岗位不处于开启状态不允许选择 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.post.back.notEnabled' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('岗位-未启用', 'system.post.back.notEnabled', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'post ({}) is not enabled, cannot select', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 40. 岗位不处于开启状态不允许选择 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.post.back.notEnabled' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('岗位-未启用', 'system.post.back.notEnabled', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '岗位({}) 不处于开启状态，不允许选择', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 41. 岗位名称已存在

DELETE FROM infra_i18n_key WHERE message_key = 'system.post.back.nameDuplicate';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('岗位-名称已存在', 'system.post.back.nameDuplicate', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 41. 岗位名称已存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.post.back.nameDuplicate' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('岗位-名称已存在', 'system.post.back.nameDuplicate', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'post name already exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 41. 岗位名称已存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.post.back.nameDuplicate' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('岗位-名称已存在', 'system.post.back.nameDuplicate', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '已经存在该名字的岗位', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 42. 岗位标识已存在

DELETE FROM infra_i18n_key WHERE message_key = 'system.post.back.codeDuplicate';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('岗位-标识已存在', 'system.post.back.codeDuplicate', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 42. 岗位标识已存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.post.back.codeDuplicate' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('岗位-标识已存在', 'system.post.back.codeDuplicate', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'post code already exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 42. 岗位标识已存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.post.back.codeDuplicate' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('岗位-标识已存在', 'system.post.back.codeDuplicate', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '已经存在该标识的岗位', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- 字典类型（1-002-006-000）
-- =============================================

-- 43. 当前字典类型不存在

DELETE FROM infra_i18n_key WHERE message_key = 'system.dictType.back.notExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典类型-不存在', 'system.dictType.back.notExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 43. 当前字典类型不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.dictType.back.notExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典类型-不存在', 'system.dictType.back.notExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'dict type not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 43. 当前字典类型不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.dictType.back.notExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典类型-不存在', 'system.dictType.back.notExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '当前字典类型不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 44. 字典类型不处于开启状态不允许选择

DELETE FROM infra_i18n_key WHERE message_key = 'system.dictType.back.notEnabled';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典类型-未启用', 'system.dictType.back.notEnabled', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 44. 字典类型不处于开启状态不允许选择 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.dictType.back.notEnabled' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典类型-未启用', 'system.dictType.back.notEnabled', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'dict type is not enabled, cannot select', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 44. 字典类型不处于开启状态不允许选择 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.dictType.back.notEnabled' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典类型-未启用', 'system.dictType.back.notEnabled', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '字典类型不处于开启状态，不允许选择', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 45. 字典类型名称已存在

DELETE FROM infra_i18n_key WHERE message_key = 'system.dictType.back.nameDuplicate';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典类型-名称已存在', 'system.dictType.back.nameDuplicate', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 45. 字典类型名称已存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.dictType.back.nameDuplicate' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典类型-名称已存在', 'system.dictType.back.nameDuplicate', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'dict type name already exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 45. 字典类型名称已存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.dictType.back.nameDuplicate' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典类型-名称已存在', 'system.dictType.back.nameDuplicate', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '已经存在该名字的字典类型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 46. 字典类型值已存在

DELETE FROM infra_i18n_key WHERE message_key = 'system.dictType.back.typeDuplicate';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典类型-值已存在', 'system.dictType.back.typeDuplicate', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 46. 字典类型值已存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.dictType.back.typeDuplicate' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典类型-值已存在', 'system.dictType.back.typeDuplicate', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'dict type value already exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 46. 字典类型值已存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.dictType.back.typeDuplicate' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典类型-值已存在', 'system.dictType.back.typeDuplicate', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '已经存在该类型的字典类型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 47. 字典类型还有字典数据无法删除

DELETE FROM infra_i18n_key WHERE message_key = 'system.dictType.back.hasChildren';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典类型-存在字典数据', 'system.dictType.back.hasChildren', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 47. 字典类型还有字典数据无法删除 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.dictType.back.hasChildren' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典类型-存在字典数据', 'system.dictType.back.hasChildren', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'dict type has dict data, cannot delete', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 47. 字典类型还有字典数据无法删除 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.dictType.back.hasChildren' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典类型-存在字典数据', 'system.dictType.back.hasChildren', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '无法删除，该字典类型还有字典数据', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- 字典数据（1-002-007-000）
-- =============================================

-- 48. 当前字典数据不存在

DELETE FROM infra_i18n_key WHERE message_key = 'system.dictData.back.notExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典数据-不存在', 'system.dictData.back.notExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 48. 当前字典数据不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.dictData.back.notExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典数据-不存在', 'system.dictData.back.notExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'dict data not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 48. 当前字典数据不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.dictData.back.notExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典数据-不存在', 'system.dictData.back.notExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '当前字典数据不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 49. 字典数据不处于开启状态不允许选择

DELETE FROM infra_i18n_key WHERE message_key = 'system.dictData.back.notEnabled';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典数据-未启用', 'system.dictData.back.notEnabled', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 49. 字典数据不处于开启状态不允许选择 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.dictData.back.notEnabled' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典数据-未启用', 'system.dictData.back.notEnabled', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'dict data ({}) is not enabled, cannot select', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 49. 字典数据不处于开启状态不允许选择 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.dictData.back.notEnabled' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典数据-未启用', 'system.dictData.back.notEnabled', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '字典数据({})不处于开启状态，不允许选择', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 50. 字典数据值已存在

DELETE FROM infra_i18n_key WHERE message_key = 'system.dictData.back.valueDuplicate';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典数据-值已存在', 'system.dictData.back.valueDuplicate', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 50. 字典数据值已存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.dictData.back.valueDuplicate' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典数据-值已存在', 'system.dictData.back.valueDuplicate', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'dict data value already exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 50. 字典数据值已存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.dictData.back.valueDuplicate' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典数据-值已存在', 'system.dictData.back.valueDuplicate', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '已经存在该值的字典数据', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- 通知公告（1-002-008-000）
-- =============================================

-- 51. 当前通知公告不存在

DELETE FROM infra_i18n_key WHERE message_key = 'system.notice.back.notFound';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('通知公告-不存在', 'system.notice.back.notFound', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 51. 当前通知公告不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notice.back.notFound' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('通知公告-不存在', 'system.notice.back.notFound', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'notice not found', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 51. 当前通知公告不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notice.back.notFound' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('通知公告-不存在', 'system.notice.back.notFound', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '当前通知公告不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 52. 公告已关闭

DELETE FROM infra_i18n_key WHERE message_key = 'system.notice.back.disabled';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('通知公告-已关闭', 'system.notice.back.disabled', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 52. 公告已关闭 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notice.back.disabled' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('通知公告-已关闭', 'system.notice.back.disabled', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'notice is disabled', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 52. 公告已关闭 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notice.back.disabled' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('通知公告-已关闭', 'system.notice.back.disabled', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '公告已关闭', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 53. 通知公告模板不存在

DELETE FROM infra_i18n_key WHERE message_key = 'system.notice.back.templateNotExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('通知公告-模板不存在', 'system.notice.back.templateNotExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 53. 通知公告模板不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notice.back.templateNotExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('通知公告-模板不存在', 'system.notice.back.templateNotExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'notice template not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 53. 通知公告模板不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notice.back.templateNotExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('通知公告-模板不存在', 'system.notice.back.templateNotExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '通知公告的模板不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- 短信渠道（1-002-011-000）
-- =============================================

-- 54. 短信渠道不存在

DELETE FROM infra_i18n_key WHERE message_key = 'system.smsChannel.back.notExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-不存在', 'system.smsChannel.back.notExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 54. 短信渠道不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsChannel.back.notExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-不存在', 'system.smsChannel.back.notExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'sms channel not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 54. 短信渠道不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsChannel.back.notExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-不存在', 'system.smsChannel.back.notExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '短信渠道不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 55. 短信渠道不处于开启状态不允许选择

DELETE FROM infra_i18n_key WHERE message_key = 'system.smsChannel.back.disabled';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-已禁用', 'system.smsChannel.back.disabled', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 55. 短信渠道不处于开启状态不允许选择 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsChannel.back.disabled' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-已禁用', 'system.smsChannel.back.disabled', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'sms channel is not enabled, cannot select', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 55. 短信渠道不处于开启状态不允许选择 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsChannel.back.disabled' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-已禁用', 'system.smsChannel.back.disabled', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '短信渠道不处于开启状态，不允许选择', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 56. 短信渠道还有短信模板无法删除

DELETE FROM infra_i18n_key WHERE message_key = 'system.smsChannel.back.hasChildren';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-存在模板', 'system.smsChannel.back.hasChildren', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 56. 短信渠道还有短信模板无法删除 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsChannel.back.hasChildren' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-存在模板', 'system.smsChannel.back.hasChildren', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'sms channel has sms templates, cannot delete', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 56. 短信渠道还有短信模板无法删除 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsChannel.back.hasChildren' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-存在模板', 'system.smsChannel.back.hasChildren', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '无法删除，该短信渠道还有短信模板', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- 短信模板（1-002-012-000）
-- =============================================

-- 57. 短信模板不存在

DELETE FROM infra_i18n_key WHERE message_key = 'system.smsTemplate.back.notExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-不存在', 'system.smsTemplate.back.notExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 57. 短信模板不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsTemplate.back.notExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-不存在', 'system.smsTemplate.back.notExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'sms template not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 57. 短信模板不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsTemplate.back.notExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-不存在', 'system.smsTemplate.back.notExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '短信模板不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 58. 短信模板编码已存在

DELETE FROM infra_i18n_key WHERE message_key = 'system.smsTemplate.back.codeDuplicate';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-编码已存在', 'system.smsTemplate.back.codeDuplicate', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 58. 短信模板编码已存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsTemplate.back.codeDuplicate' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-编码已存在', 'system.smsTemplate.back.codeDuplicate', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'sms template code [{}] already exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 58. 短信模板编码已存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsTemplate.back.codeDuplicate' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-编码已存在', 'system.smsTemplate.back.codeDuplicate', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '已经存在编码为【{}】的短信模板', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 59. 短信 API 模板调用失败

DELETE FROM infra_i18n_key WHERE message_key = 'system.smsTemplate.back.apiError';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-API调用失败', 'system.smsTemplate.back.apiError', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 59. 短信 API 模板调用失败 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsTemplate.back.apiError' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-API调用失败', 'system.smsTemplate.back.apiError', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'sms API template call failed, reason: {}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 59. 短信 API 模板调用失败 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsTemplate.back.apiError' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-API调用失败', 'system.smsTemplate.back.apiError', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '短信 API 模板调用失败，原因是：{}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 60. 短信 API 模版审批中

DELETE FROM infra_i18n_key WHERE message_key = 'system.smsTemplate.back.auditChecking';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-审批中', 'system.smsTemplate.back.auditChecking', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 60. 短信 API 模版审批中 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsTemplate.back.auditChecking' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-审批中', 'system.smsTemplate.back.auditChecking', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'sms API template unavailable, reason: under review', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 60. 短信 API 模版审批中 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsTemplate.back.auditChecking' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-审批中', 'system.smsTemplate.back.auditChecking', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '短信 API 模版无法使用，原因：审批中', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 61. 短信 API 模版审批不通过

DELETE FROM infra_i18n_key WHERE message_key = 'system.smsTemplate.back.auditFail';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-审批不通过', 'system.smsTemplate.back.auditFail', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 61. 短信 API 模版审批不通过 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsTemplate.back.auditFail' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-审批不通过', 'system.smsTemplate.back.auditFail', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'sms API template unavailable, reason: review rejected, {}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 61. 短信 API 模版审批不通过 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsTemplate.back.auditFail' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-审批不通过', 'system.smsTemplate.back.auditFail', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '短信 API 模版无法使用，原因：审批不通过，{}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 62. 短信 API 模版不存在

DELETE FROM infra_i18n_key WHERE message_key = 'system.smsTemplate.back.apiTemplateNotFound';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-API模版不存在', 'system.smsTemplate.back.apiTemplateNotFound', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 62. 短信 API 模版不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsTemplate.back.apiTemplateNotFound' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-API模版不存在', 'system.smsTemplate.back.apiTemplateNotFound', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'sms API template unavailable, reason: template not found', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 62. 短信 API 模版不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsTemplate.back.apiTemplateNotFound' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-API模版不存在', 'system.smsTemplate.back.apiTemplateNotFound', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '短信 API 模版无法使用，原因：模版不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- 短信发送（1-002-013-000）
-- =============================================

-- 63. 手机号不存在

DELETE FROM infra_i18n_key WHERE message_key = 'system.smsSend.back.mobileNotExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信发送-手机号不存在', 'system.smsSend.back.mobileNotExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 63. 手机号不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsSend.back.mobileNotExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信发送-手机号不存在', 'system.smsSend.back.mobileNotExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'mobile number not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 63. 手机号不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsSend.back.mobileNotExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信发送-手机号不存在', 'system.smsSend.back.mobileNotExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '手机号不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 64. 模板参数缺失

DELETE FROM infra_i18n_key WHERE message_key = 'system.smsSend.back.paramMissing';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信发送-参数缺失', 'system.smsSend.back.paramMissing', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 64. 模板参数缺失 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsSend.back.paramMissing' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信发送-参数缺失', 'system.smsSend.back.paramMissing', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'template param ({}) missing', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 64. 模板参数缺失 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsSend.back.paramMissing' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信发送-参数缺失', 'system.smsSend.back.paramMissing', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '模板参数({})缺失', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 65. 短信模板不存在

DELETE FROM infra_i18n_key WHERE message_key = 'system.smsSend.back.templateNotExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信发送-模板不存在', 'system.smsSend.back.templateNotExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 65. 短信模板不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsSend.back.templateNotExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信发送-模板不存在', 'system.smsSend.back.templateNotExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'sms template not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 65. 短信模板不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsSend.back.templateNotExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信发送-模板不存在', 'system.smsSend.back.templateNotExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '短信模板不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- 短信验证码（1-002-014-000）
-- =============================================

-- 66. 验证码不存在

DELETE FROM infra_i18n_key WHERE message_key = 'system.smsCode.back.notFound';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信验证码-不存在', 'system.smsCode.back.notFound', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 66. 验证码不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsCode.back.notFound' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信验证码-不存在', 'system.smsCode.back.notFound', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'sms code not found', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 66. 验证码不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsCode.back.notFound' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信验证码-不存在', 'system.smsCode.back.notFound', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '验证码不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 67. 验证码已过期

DELETE FROM infra_i18n_key WHERE message_key = 'system.smsCode.back.expired';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信验证码-已过期', 'system.smsCode.back.expired', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 67. 验证码已过期 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsCode.back.expired' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信验证码-已过期', 'system.smsCode.back.expired', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'sms code has expired', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 67. 验证码已过期 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsCode.back.expired' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信验证码-已过期', 'system.smsCode.back.expired', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '验证码已过期', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 68. 验证码已使用

DELETE FROM infra_i18n_key WHERE message_key = 'system.smsCode.back.used';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信验证码-已使用', 'system.smsCode.back.used', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 68. 验证码已使用 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsCode.back.used' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信验证码-已使用', 'system.smsCode.back.used', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'sms code has been used', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 68. 验证码已使用 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsCode.back.used' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信验证码-已使用', 'system.smsCode.back.used', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '验证码已使用', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 69. 超过每日短信发送数量

DELETE FROM infra_i18n_key WHERE message_key = 'system.smsCode.back.quotaExceeded';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信验证码-超出配额', 'system.smsCode.back.quotaExceeded', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 69. 超过每日短信发送数量 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsCode.back.quotaExceeded' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信验证码-超出配额', 'system.smsCode.back.quotaExceeded', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'daily sms send limit exceeded', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 69. 超过每日短信发送数量 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsCode.back.quotaExceeded' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信验证码-超出配额', 'system.smsCode.back.quotaExceeded', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '超过每日短信发送数量', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 70. 短信发送过于频繁

DELETE FROM infra_i18n_key WHERE message_key = 'system.smsCode.back.rateLimit';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信验证码-发送频繁', 'system.smsCode.back.rateLimit', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 70. 短信发送过于频繁 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsCode.back.rateLimit' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信验证码-发送频繁', 'system.smsCode.back.rateLimit', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'sms send too frequently', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 70. 短信发送过于频繁 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsCode.back.rateLimit' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信验证码-发送频繁', 'system.smsCode.back.rateLimit', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '短信发送过于频繁', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- 租户信息（1-002-015-000）
-- =============================================

-- 71. 租户不存在

DELETE FROM infra_i18n_key WHERE message_key = 'system.tenant.back.notExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-不存在', 'system.tenant.back.notExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 71. 租户不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.back.notExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-不存在', 'system.tenant.back.notExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'tenant not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 71. 租户不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.back.notExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-不存在', 'system.tenant.back.notExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '租户不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 72. 租户已禁用

DELETE FROM infra_i18n_key WHERE message_key = 'system.tenant.back.disabled';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-已禁用', 'system.tenant.back.disabled', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 72. 租户已禁用 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.back.disabled' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-已禁用', 'system.tenant.back.disabled', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'tenant [{}] is disabled', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 72. 租户已禁用 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.back.disabled' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-已禁用', 'system.tenant.back.disabled', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '名字为【{}】的租户已被禁用', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 73. 租户已过期

DELETE FROM infra_i18n_key WHERE message_key = 'system.tenant.back.expired';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-已过期', 'system.tenant.back.expired', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 73. 租户已过期 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.back.expired' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-已过期', 'system.tenant.back.expired', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'tenant [{}] has expired', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 73. 租户已过期 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.back.expired' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-已过期', 'system.tenant.back.expired', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '名字为【{}】的租户已过期', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 74. 系统租户不能修改删除

DELETE FROM infra_i18n_key WHERE message_key = 'system.tenant.back.systemProhibitUpdate';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-系统禁止操作', 'system.tenant.back.systemProhibitUpdate', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 74. 系统租户不能修改删除 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.back.systemProhibitUpdate' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-系统禁止操作', 'system.tenant.back.systemProhibitUpdate', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'system tenant cannot be modified or deleted', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 74. 系统租户不能修改删除 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.back.systemProhibitUpdate' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-系统禁止操作', 'system.tenant.back.systemProhibitUpdate', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '系统租户不能进行修改、删除等操作！', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 75. 租户名称已存在

DELETE FROM infra_i18n_key WHERE message_key = 'system.tenant.back.nameDuplicate';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-名称已存在', 'system.tenant.back.nameDuplicate', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 75. 租户名称已存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.back.nameDuplicate' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-名称已存在', 'system.tenant.back.nameDuplicate', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'tenant name [{}] already exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 75. 租户名称已存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.back.nameDuplicate' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-名称已存在', 'system.tenant.back.nameDuplicate', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '名字为【{}】的租户已存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 76. 租户域名已存在

DELETE FROM infra_i18n_key WHERE message_key = 'system.tenant.back.websiteDuplicate';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-域名已存在', 'system.tenant.back.websiteDuplicate', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 76. 租户域名已存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.back.websiteDuplicate' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-域名已存在', 'system.tenant.back.websiteDuplicate', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'tenant website [{}] already exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 76. 租户域名已存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.back.websiteDuplicate' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-域名已存在', 'system.tenant.back.websiteDuplicate', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '域名为【{}】的租户已存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 77. 租户没有成功绑定菜单

DELETE FROM infra_i18n_key WHERE message_key = 'system.tenant.back.menuEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-菜单权限为空', 'system.tenant.back.menuEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 77. 租户没有成功绑定菜单 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.back.menuEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-菜单权限为空', 'system.tenant.back.menuEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'tenant menu binding failed, menu permissions are empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 77. 租户没有成功绑定菜单 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.back.menuEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-菜单权限为空', 'system.tenant.back.menuEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '租户没有成功绑定菜单，菜单权限为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 78. 租户编码不能修改

DELETE FROM infra_i18n_key WHERE message_key = 'system.tenant.back.codeProhibitUpdate';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-编码禁止修改', 'system.tenant.back.codeProhibitUpdate', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 78. 租户编码不能修改 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.back.codeProhibitUpdate' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-编码禁止修改', 'system.tenant.back.codeProhibitUpdate', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'tenant code cannot be modified', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 78. 租户编码不能修改 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.back.codeProhibitUpdate' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-编码禁止修改', 'system.tenant.back.codeProhibitUpdate', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '租户编码不能修改', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- 租户套餐（1-002-016-000）
-- =============================================

-- 79. 租户套餐不存在

DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackage.back.notExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-不存在', 'system.tenantPackage.back.notExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 79. 租户套餐不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.back.notExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-不存在', 'system.tenantPackage.back.notExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'tenant package not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 79. 租户套餐不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.back.notExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-不存在', 'system.tenantPackage.back.notExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '租户套餐不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 80. 租户正在使用该套餐

DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackage.back.packageInUse';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-使用中', 'system.tenantPackage.back.packageInUse', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 80. 租户正在使用该套餐 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.back.packageInUse' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-使用中', 'system.tenantPackage.back.packageInUse', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'tenant is using this package, please reassign before deleting', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 80. 租户正在使用该套餐 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.back.packageInUse' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-使用中', 'system.tenantPackage.back.packageInUse', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '租户正在使用该套餐，请给租户重新设置套餐后再尝试删除', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 81. 租户套餐已禁用

DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackage.back.disabled';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-已禁用', 'system.tenantPackage.back.disabled', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 81. 租户套餐已禁用 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.back.disabled' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-已禁用', 'system.tenantPackage.back.disabled', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'tenant package [{}] is disabled', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 81. 租户套餐已禁用 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.back.disabled' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-已禁用', 'system.tenantPackage.back.disabled', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '名字为【{}】的租户套餐已被禁用', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 82. 租户套餐名称已存在

DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackage.back.nameDuplicate';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-名称已存在', 'system.tenantPackage.back.nameDuplicate', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 82. 租户套餐名称已存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.back.nameDuplicate' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-名称已存在', 'system.tenantPackage.back.nameDuplicate', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'tenant package name already exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 82. 租户套餐名称已存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.back.nameDuplicate' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-名称已存在', 'system.tenantPackage.back.nameDuplicate', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '已经存在该名字的租户套餐', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 83. 租户套餐编码已存在

DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackage.back.codeDuplicate';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-编码已存在', 'system.tenantPackage.back.codeDuplicate', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 83. 租户套餐编码已存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.back.codeDuplicate' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-编码已存在', 'system.tenantPackage.back.codeDuplicate', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'tenant package code already exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 83. 租户套餐编码已存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.back.codeDuplicate' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-编码已存在', 'system.tenantPackage.back.codeDuplicate', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '已经存在该编码的租户套餐', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- 订阅套餐（1-002-017-000）
-- =============================================

-- 84. 租户套餐订阅不存在

DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackageSubscribe.back.notExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('订阅套餐-不存在', 'system.tenantPackageSubscribe.back.notExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 84. 租户套餐订阅不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.back.notExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('订阅套餐-不存在', 'system.tenantPackageSubscribe.back.notExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'tenant package subscription not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 84. 租户套餐订阅不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.back.notExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('订阅套餐-不存在', 'system.tenantPackageSubscribe.back.notExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '租户套餐订阅不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 85. 租户或租户套餐不可改变

DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackageSubscribe.back.prohibitChange';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('订阅套餐-禁止修改', 'system.tenantPackageSubscribe.back.prohibitChange', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 85. 租户或租户套餐不可改变 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.back.prohibitChange' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('订阅套餐-禁止修改', 'system.tenantPackageSubscribe.back.prohibitChange', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'tenant or tenant package cannot be changed', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 85. 租户或租户套餐不可改变 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.back.prohibitChange' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('订阅套餐-禁止修改', 'system.tenantPackageSubscribe.back.prohibitChange', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '租户或者租户套餐不可改变', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- 社交用户（1-002-018-000）
-- =============================================

-- 86. 社交授权失败

DELETE FROM infra_i18n_key WHERE message_key = 'system.socialUser.back.authFailure';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交用户-授权失败', 'system.socialUser.back.authFailure', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 86. 社交授权失败 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.socialUser.back.authFailure' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交用户-授权失败', 'system.socialUser.back.authFailure', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'social authorization failed, reason: {}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 86. 社交授权失败 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.socialUser.back.authFailure' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交用户-授权失败', 'system.socialUser.back.authFailure', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '社交授权失败，原因是：{}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 87. 社交授权失败找不到用户

DELETE FROM infra_i18n_key WHERE message_key = 'system.socialUser.back.notFound';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交用户-找不到用户', 'system.socialUser.back.notFound', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 87. 社交授权失败找不到用户 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.socialUser.back.notFound' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交用户-找不到用户', 'system.socialUser.back.notFound', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'social authorization failed, user not found', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 87. 社交授权失败找不到用户 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.socialUser.back.notFound' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交用户-找不到用户', 'system.socialUser.back.notFound', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '社交授权失败，找不到对应的用户', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 88. 获得手机号失败

DELETE FROM infra_i18n_key WHERE message_key = 'system.socialClient.back.getPhoneFailed';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交微信-获取手机号失败', 'system.socialClient.back.getPhoneFailed', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 88. 获得手机号失败 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.socialClient.back.getPhoneFailed' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交微信-获取手机号失败', 'system.socialClient.back.getPhoneFailed', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'failed to get phone number', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 88. 获得手机号失败 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.socialClient.back.getPhoneFailed' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交微信-获取手机号失败', 'system.socialClient.back.getPhoneFailed', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '获得手机号失败', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 89. 获得小程序码失败

DELETE FROM infra_i18n_key WHERE message_key = 'system.socialClient.back.getQrCodeFailed';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交微信-获取二维码失败', 'system.socialClient.back.getQrCodeFailed', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 89. 获得小程序码失败 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.socialClient.back.getQrCodeFailed' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交微信-获取二维码失败', 'system.socialClient.back.getQrCodeFailed', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'failed to get mini-program QR code', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 89. 获得小程序码失败 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.socialClient.back.getQrCodeFailed' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交微信-获取二维码失败', 'system.socialClient.back.getQrCodeFailed', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '获得小程序码失败', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 90. 获得小程序订阅消息模板失败

DELETE FROM infra_i18n_key WHERE message_key = 'system.socialClient.back.getSubscribeTemplateFailed';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交微信-获取订阅模板失败', 'system.socialClient.back.getSubscribeTemplateFailed', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 90. 获得小程序订阅消息模板失败 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.socialClient.back.getSubscribeTemplateFailed' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交微信-获取订阅模板失败', 'system.socialClient.back.getSubscribeTemplateFailed', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'failed to get mini-program subscribe message template', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 90. 获得小程序订阅消息模板失败 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.socialClient.back.getSubscribeTemplateFailed' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交微信-获取订阅模板失败', 'system.socialClient.back.getSubscribeTemplateFailed', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '获得小程序订阅消息模版失败', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 91. 发送小程序订阅消息失败

DELETE FROM infra_i18n_key WHERE message_key = 'system.socialClient.back.sendSubscribeMessageFailed';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交微信-发送订阅消息失败', 'system.socialClient.back.sendSubscribeMessageFailed', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 91. 发送小程序订阅消息失败 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.socialClient.back.sendSubscribeMessageFailed' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交微信-发送订阅消息失败', 'system.socialClient.back.sendSubscribeMessageFailed', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'failed to send mini-program subscribe message', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 91. 发送小程序订阅消息失败 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.socialClient.back.sendSubscribeMessageFailed' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交微信-发送订阅消息失败', 'system.socialClient.back.sendSubscribeMessageFailed', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '发送小程序订阅消息失败', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 92. 上传微信小程序发货信息失败

DELETE FROM infra_i18n_key WHERE message_key = 'system.socialClient.back.uploadShippingFailed';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交微信-上传发货信息失败', 'system.socialClient.back.uploadShippingFailed', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 92. 上传微信小程序发货信息失败 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.socialClient.back.uploadShippingFailed' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交微信-上传发货信息失败', 'system.socialClient.back.uploadShippingFailed', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'failed to upload WeChat mini-program shipping info', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 92. 上传微信小程序发货信息失败 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.socialClient.back.uploadShippingFailed' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交微信-上传发货信息失败', 'system.socialClient.back.uploadShippingFailed', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '上传微信小程序发货信息失败', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 93. 上传微信小程序订单收货信息失败

DELETE FROM infra_i18n_key WHERE message_key = 'system.socialClient.back.confirmReceiveFailed';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交微信-确认收货失败', 'system.socialClient.back.confirmReceiveFailed', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 93. 上传微信小程序订单收货信息失败 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.socialClient.back.confirmReceiveFailed' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交微信-确认收货失败', 'system.socialClient.back.confirmReceiveFailed', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'failed to confirm WeChat mini-program order receive', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 93. 上传微信小程序订单收货信息失败 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.socialClient.back.confirmReceiveFailed' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交微信-确认收货失败', 'system.socialClient.back.confirmReceiveFailed', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '上传微信小程序订单收货信息失败', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 94. 社交客户端不存在

DELETE FROM infra_i18n_key WHERE message_key = 'system.socialClient.back.notExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交客户端-不存在', 'system.socialClient.back.notExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 94. 社交客户端不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.socialClient.back.notExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交客户端-不存在', 'system.socialClient.back.notExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'social client not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 94. 社交客户端不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.socialClient.back.notExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交客户端-不存在', 'system.socialClient.back.notExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '社交客户端不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 95. 社交客户端已存在配置

DELETE FROM infra_i18n_key WHERE message_key = 'system.socialClient.back.configExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交客户端-配置已存在', 'system.socialClient.back.configExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 95. 社交客户端已存在配置 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.socialClient.back.configExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交客户端-配置已存在', 'system.socialClient.back.configExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'social client config already exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 95. 社交客户端已存在配置 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.socialClient.back.configExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交客户端-配置已存在', 'system.socialClient.back.configExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '社交客户端已存在配置', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- OAuth2 客户端（1-002-020-000）
-- =============================================

-- 96. OAuth2 客户端不存在

DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2Client.back.notExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2客户端-不存在', 'system.oauth2Client.back.notExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 96. OAuth2 客户端不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Client.back.notExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2客户端-不存在', 'system.oauth2Client.back.notExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'OAuth2 client not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 96. OAuth2 客户端不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Client.back.notExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2客户端-不存在', 'system.oauth2Client.back.notExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'OAuth2 客户端不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 97. OAuth2 客户端编号已存在

DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2Client.back.clientIdExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2客户端-clientId已存在', 'system.oauth2Client.back.clientIdExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 97. OAuth2 客户端编号已存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Client.back.clientIdExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2客户端-clientId已存在', 'system.oauth2Client.back.clientIdExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'OAuth2 client id already exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 97. OAuth2 客户端编号已存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Client.back.clientIdExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2客户端-clientId已存在', 'system.oauth2Client.back.clientIdExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'OAuth2 客户端编号已存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 98. OAuth2 客户端已禁用

DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2Client.back.disabled';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2客户端-已禁用', 'system.oauth2Client.back.disabled', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 98. OAuth2 客户端已禁用 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Client.back.disabled' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2客户端-已禁用', 'system.oauth2Client.back.disabled', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'OAuth2 client is disabled', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 98. OAuth2 客户端已禁用 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Client.back.disabled' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2客户端-已禁用', 'system.oauth2Client.back.disabled', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'OAuth2 客户端已禁用', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 99. 不支持该授权类型

DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2Client.back.grantTypeNotAllowed';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2客户端-授权类型不支持', 'system.oauth2Client.back.grantTypeNotAllowed', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 99. 不支持该授权类型 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Client.back.grantTypeNotAllowed' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2客户端-授权类型不支持', 'system.oauth2Client.back.grantTypeNotAllowed', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'authorized grant type not supported', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 99. 不支持该授权类型 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Client.back.grantTypeNotAllowed' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2客户端-授权类型不支持', 'system.oauth2Client.back.grantTypeNotAllowed', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '不支持该授权类型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 100. 授权范围过大

DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2Client.back.scopeOver';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2客户端-授权范围过大', 'system.oauth2Client.back.scopeOver', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 100. 授权范围过大 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Client.back.scopeOver' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2客户端-授权范围过大', 'system.oauth2Client.back.scopeOver', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'authorization scope is too broad', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 100. 授权范围过大 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Client.back.scopeOver' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2客户端-授权范围过大', 'system.oauth2Client.back.scopeOver', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '授权范围过大', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 101. 无效 redirect_uri

DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2Client.back.redirectUriInvalid';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2客户端-redirectUri无效', 'system.oauth2Client.back.redirectUriInvalid', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 101. 无效 redirect_uri - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Client.back.redirectUriInvalid' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2客户端-redirectUri无效', 'system.oauth2Client.back.redirectUriInvalid', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'invalid redirect_uri: {}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 101. 无效 redirect_uri - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Client.back.redirectUriInvalid' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2客户端-redirectUri无效', 'system.oauth2Client.back.redirectUriInvalid', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '无效 redirect_uri: {}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 102. 无效 client_secret

DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2Client.back.clientSecretInvalid';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2客户端-clientSecret无效', 'system.oauth2Client.back.clientSecretInvalid', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 102. 无效 client_secret - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Client.back.clientSecretInvalid' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2客户端-clientSecret无效', 'system.oauth2Client.back.clientSecretInvalid', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'invalid client_secret: {}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 102. 无效 client_secret - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Client.back.clientSecretInvalid' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2客户端-clientSecret无效', 'system.oauth2Client.back.clientSecretInvalid', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '无效 client_secret: {}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- OAuth2 授权（1-002-021-000）
-- =============================================

-- 103. client_id 不匹配

DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2Grant.back.clientIdMismatch';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2授权-clientId不匹配', 'system.oauth2Grant.back.clientIdMismatch', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 103. client_id 不匹配 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Grant.back.clientIdMismatch' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2授权-clientId不匹配', 'system.oauth2Grant.back.clientIdMismatch', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'client_id mismatch', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 103. client_id 不匹配 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Grant.back.clientIdMismatch' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2授权-clientId不匹配', 'system.oauth2Grant.back.clientIdMismatch', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'client_id 不匹配', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 104. redirect_uri 不匹配

DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2Grant.back.redirectUriMismatch';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2授权-redirectUri不匹配', 'system.oauth2Grant.back.redirectUriMismatch', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 104. redirect_uri 不匹配 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Grant.back.redirectUriMismatch' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2授权-redirectUri不匹配', 'system.oauth2Grant.back.redirectUriMismatch', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'redirect_uri mismatch', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 104. redirect_uri 不匹配 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Grant.back.redirectUriMismatch' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2授权-redirectUri不匹配', 'system.oauth2Grant.back.redirectUriMismatch', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'redirect_uri 不匹配', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 105. state 不匹配

DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2Grant.back.stateMismatch';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2授权-state不匹配', 'system.oauth2Grant.back.stateMismatch', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 105. state 不匹配 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Grant.back.stateMismatch' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2授权-state不匹配', 'system.oauth2Grant.back.stateMismatch', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'state mismatch', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 105. state 不匹配 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Grant.back.stateMismatch' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2授权-state不匹配', 'system.oauth2Grant.back.stateMismatch', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'state 不匹配', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- OAuth2 Code（1-002-022-000）
-- =============================================

-- 106. code 不存在

DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2Code.back.notExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2Code-不存在', 'system.oauth2Code.back.notExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 106. code 不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Code.back.notExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2Code-不存在', 'system.oauth2Code.back.notExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'code not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 106. code 不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Code.back.notExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2Code-不存在', 'system.oauth2Code.back.notExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'code 不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 107. code 已过期

DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2Code.back.expired';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2Code-已过期', 'system.oauth2Code.back.expired', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 107. code 已过期 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Code.back.expired' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2Code-已过期', 'system.oauth2Code.back.expired', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'code has expired', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 107. code 已过期 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Code.back.expired' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2Code-已过期', 'system.oauth2Code.back.expired', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'code 已过期', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- 邮箱账号（1-002-023-000）
-- =============================================

-- 108. 邮箱账号不存在

DELETE FROM infra_i18n_key WHERE message_key = 'system.mailAccount.back.notExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮箱账号-不存在', 'system.mailAccount.back.notExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 108. 邮箱账号不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.mailAccount.back.notExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮箱账号-不存在', 'system.mailAccount.back.notExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'mail account not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 108. 邮箱账号不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.mailAccount.back.notExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮箱账号-不存在', 'system.mailAccount.back.notExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '邮箱账号不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 109. 邮箱账号还有邮件模板无法删除

DELETE FROM infra_i18n_key WHERE message_key = 'system.mailAccount.back.hasChildren';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮箱账号-存在模板', 'system.mailAccount.back.hasChildren', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 109. 邮箱账号还有邮件模板无法删除 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.mailAccount.back.hasChildren' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮箱账号-存在模板', 'system.mailAccount.back.hasChildren', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'mail account has mail templates, cannot delete', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 109. 邮箱账号还有邮件模板无法删除 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.mailAccount.back.hasChildren' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮箱账号-存在模板', 'system.mailAccount.back.hasChildren', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '无法删除，该邮箱账号还有邮件模板', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- 邮件模版（1-002-024-000）
-- =============================================

-- 110. 邮件模版不存在

DELETE FROM infra_i18n_key WHERE message_key = 'system.mailTemplate.back.notExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模版-不存在', 'system.mailTemplate.back.notExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 110. 邮件模版不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.mailTemplate.back.notExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模版-不存在', 'system.mailTemplate.back.notExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'mail template not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 110. 邮件模版不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.mailTemplate.back.notExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模版-不存在', 'system.mailTemplate.back.notExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '邮件模版不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 111. 邮件模版 code 已存在

DELETE FROM infra_i18n_key WHERE message_key = 'system.mailTemplate.back.codeExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模版-code已存在', 'system.mailTemplate.back.codeExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 111. 邮件模版 code 已存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.mailTemplate.back.codeExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模版-code已存在', 'system.mailTemplate.back.codeExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'mail template code ({}) already exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 111. 邮件模版 code 已存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.mailTemplate.back.codeExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模版-code已存在', 'system.mailTemplate.back.codeExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '邮件模版 code({}) 已存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- 邮件发送（1-002-025-000）
-- =============================================

-- 112. 模板参数缺失

DELETE FROM infra_i18n_key WHERE message_key = 'system.mailSend.back.paramMissing';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件发送-参数缺失', 'system.mailSend.back.paramMissing', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 112. 模板参数缺失 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.mailSend.back.paramMissing' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件发送-参数缺失', 'system.mailSend.back.paramMissing', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'template param ({}) missing', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 112. 模板参数缺失 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.mailSend.back.paramMissing' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件发送-参数缺失', 'system.mailSend.back.paramMissing', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '模板参数({})缺失', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 113. 邮箱不存在

DELETE FROM infra_i18n_key WHERE message_key = 'system.mailSend.back.mailNotExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件发送-邮箱不存在', 'system.mailSend.back.mailNotExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 113. 邮箱不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.mailSend.back.mailNotExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件发送-邮箱不存在', 'system.mailSend.back.mailNotExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'mail not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 113. 邮箱不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.mailSend.back.mailNotExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件发送-邮箱不存在', 'system.mailSend.back.mailNotExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '邮箱不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- 站内信模版（1-002-026-000）
-- =============================================

-- 114. 站内信模版不存在

DELETE FROM infra_i18n_key WHERE message_key = 'system.notifyTemplate.back.notExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模版-不存在', 'system.notifyTemplate.back.notExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 114. 站内信模版不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notifyTemplate.back.notExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模版-不存在', 'system.notifyTemplate.back.notExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'notify template not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 114. 站内信模版不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notifyTemplate.back.notExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模版-不存在', 'system.notifyTemplate.back.notExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '站内信模版不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 115. 站内信模版编码已存在

DELETE FROM infra_i18n_key WHERE message_key = 'system.notifyTemplate.back.codeDuplicate';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模版-编码已存在', 'system.notifyTemplate.back.codeDuplicate', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 115. 站内信模版编码已存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notifyTemplate.back.codeDuplicate' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模版-编码已存在', 'system.notifyTemplate.back.codeDuplicate', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'notify template code [{}] already exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 115. 站内信模版编码已存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notifyTemplate.back.codeDuplicate' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模版-编码已存在', 'system.notifyTemplate.back.codeDuplicate', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '已经存在编码为【{}】的站内信模板', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- 站内信发送（1-002-028-000）
-- =============================================

-- 116. 模板参数缺失

DELETE FROM infra_i18n_key WHERE message_key = 'system.notifySend.back.paramMissing';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信发送-参数缺失', 'system.notifySend.back.paramMissing', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 116. 模板参数缺失 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notifySend.back.paramMissing' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信发送-参数缺失', 'system.notifySend.back.paramMissing', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'template param ({}) missing', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 116. 模板参数缺失 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notifySend.back.paramMissing' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信发送-参数缺失', 'system.notifySend.back.paramMissing', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '模板参数({})缺失', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- 地区信息（1-002-029-000）
-- =============================================

-- 117. 地区信息不存在

DELETE FROM infra_i18n_key WHERE message_key = 'system.area.back.notExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息-不存在', 'system.area.back.notExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 117. 地区信息不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.area.back.notExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息-不存在', 'system.area.back.notExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'area not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 117. 地区信息不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.area.back.notExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息-不存在', 'system.area.back.notExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '地区信息不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 118. 存在子地区信息无法删除

DELETE FROM infra_i18n_key WHERE message_key = 'system.area.back.hasChildren';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息-存在子级', 'system.area.back.hasChildren', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 118. 存在子地区信息无法删除 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.area.back.hasChildren' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息-存在子级', 'system.area.back.hasChildren', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'area has children, cannot delete', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 118. 存在子地区信息无法删除 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.area.back.hasChildren' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息-存在子级', 'system.area.back.hasChildren', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '存在子地区信息，无法删除', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 119. 父级地区信息不存在

DELETE FROM infra_i18n_key WHERE message_key = 'system.area.back.parentNotExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息-父级不存在', 'system.area.back.parentNotExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 119. 父级地区信息不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.area.back.parentNotExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息-父级不存在', 'system.area.back.parentNotExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'parent area not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 119. 父级地区信息不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.area.back.parentNotExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息-父级不存在', 'system.area.back.parentNotExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '父级地区信息不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 120. 不能设置自己为父地区信息

DELETE FROM infra_i18n_key WHERE message_key = 'system.area.back.parentSelfError';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息-不能设置自己为父级', 'system.area.back.parentSelfError', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 120. 不能设置自己为父地区信息 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.area.back.parentSelfError' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息-不能设置自己为父级', 'system.area.back.parentSelfError', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'cannot set itself as parent area', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 120. 不能设置自己为父地区信息 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.area.back.parentSelfError' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息-不能设置自己为父级', 'system.area.back.parentSelfError', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '不能设置自己为父地区信息', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 121. 地区名称已存在

DELETE FROM infra_i18n_key WHERE message_key = 'system.area.back.nameDuplicate';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息-名称已存在', 'system.area.back.nameDuplicate', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 121. 地区名称已存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.area.back.nameDuplicate' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息-名称已存在', 'system.area.back.nameDuplicate', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'area name already exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 121. 地区名称已存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.area.back.nameDuplicate' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息-名称已存在', 'system.area.back.nameDuplicate', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '已经存在该地区名称的地区信息', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 122. 不能设置子地区为父地区

DELETE FROM infra_i18n_key WHERE message_key = 'system.area.back.parentChildError';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息-不能设置子级为父级', 'system.area.back.parentChildError', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 122. 不能设置子地区为父地区 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.area.back.parentChildError' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息-不能设置子级为父级', 'system.area.back.parentChildError', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'cannot set child area as parent', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 122. 不能设置子地区为父地区 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.area.back.parentChildError' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息-不能设置子级为父级', 'system.area.back.parentChildError', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '不能设置自己的子Area为父Area', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
