-- =============================================
-- system oauth2 校验消息国际化 SQL
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
-- OAuth2ClientSaveReqVO (oauth2Client)
-- =============================================

-- 1. clientId - 不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2Client.back.clientId.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-客户端编号不能为空', 'system.oauth2Client.back.clientId.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Client.back.clientId.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-客户端编号不能为空', 'system.oauth2Client.back.clientId.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'oauth2 client id cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Client.back.clientId.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-客户端编号不能为空', 'system.oauth2Client.back.clientId.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '客户端编号不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. secret - 不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2Client.back.secret.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-客户端密钥不能为空', 'system.oauth2Client.back.secret.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Client.back.secret.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-客户端密钥不能为空', 'system.oauth2Client.back.secret.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'oauth2 client secret cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Client.back.secret.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-客户端密钥不能为空', 'system.oauth2Client.back.secret.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '客户端密钥不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. name - 不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2Client.back.name.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-应用名不能为空', 'system.oauth2Client.back.name.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Client.back.name.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-应用名不能为空', 'system.oauth2Client.back.name.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'oauth2 client name cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Client.back.name.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-应用名不能为空', 'system.oauth2Client.back.name.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '应用名不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. logo - 不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2Client.back.logo.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-应用图标不能为空', 'system.oauth2Client.back.logo.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Client.back.logo.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-应用图标不能为空', 'system.oauth2Client.back.logo.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'oauth2 client logo cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Client.back.logo.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-应用图标不能为空', 'system.oauth2Client.back.logo.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '应用图标不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. logo - URL 格式不正确
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2Client.back.logo.url';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-应用图标URL格式不正确', 'system.oauth2Client.back.logo.url', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Client.back.logo.url' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-应用图标URL格式不正确', 'system.oauth2Client.back.logo.url', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'oauth2 client logo must be a valid url', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Client.back.logo.url' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-应用图标URL格式不正确', 'system.oauth2Client.back.logo.url', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '应用图标的地址不正确', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 6. status - 不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2Client.back.status.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-状态不能为空', 'system.oauth2Client.back.status.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Client.back.status.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-状态不能为空', 'system.oauth2Client.back.status.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'oauth2 client status cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Client.back.status.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-状态不能为空', 'system.oauth2Client.back.status.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '状态不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 7. accessTokenValiditySeconds - 不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2Client.back.accessTokenValiditySeconds.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-访问令牌有效期不能为空', 'system.oauth2Client.back.accessTokenValiditySeconds.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Client.back.accessTokenValiditySeconds.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-访问令牌有效期不能为空', 'system.oauth2Client.back.accessTokenValiditySeconds.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'oauth2 client access token validity seconds cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Client.back.accessTokenValiditySeconds.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-访问令牌有效期不能为空', 'system.oauth2Client.back.accessTokenValiditySeconds.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '访问令牌的有效期不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 8. refreshTokenValiditySeconds - 不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2Client.back.refreshTokenValiditySeconds.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-刷新令牌有效期不能为空', 'system.oauth2Client.back.refreshTokenValiditySeconds.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Client.back.refreshTokenValiditySeconds.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-刷新令牌有效期不能为空', 'system.oauth2Client.back.refreshTokenValiditySeconds.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'oauth2 client refresh token validity seconds cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Client.back.refreshTokenValiditySeconds.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-刷新令牌有效期不能为空', 'system.oauth2Client.back.refreshTokenValiditySeconds.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '刷新令牌的有效期不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 9. redirectUris - 不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2Client.back.redirectUris.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-可重定向URI地址不能为空', 'system.oauth2Client.back.redirectUris.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Client.back.redirectUris.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-可重定向URI地址不能为空', 'system.oauth2Client.back.redirectUris.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'oauth2 client redirect uri cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Client.back.redirectUris.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-可重定向URI地址不能为空', 'system.oauth2Client.back.redirectUris.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '可重定向的 URI 地址不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 10. redirectUris - 不能为空（列表元素）
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2Client.back.redirectUris.notEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-重定向URI不能为空', 'system.oauth2Client.back.redirectUris.notEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Client.back.redirectUris.notEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-重定向URI不能为空', 'system.oauth2Client.back.redirectUris.notEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'oauth2 client redirect uri cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Client.back.redirectUris.notEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-重定向URI不能为空', 'system.oauth2Client.back.redirectUris.notEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '重定向的 URI 不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 11. redirectUris - URL 格式不正确
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2Client.back.redirectUris.url';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-重定向URI格式不正确', 'system.oauth2Client.back.redirectUris.url', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Client.back.redirectUris.url' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-重定向URI格式不正确', 'system.oauth2Client.back.redirectUris.url', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'oauth2 client redirect uri must be a valid url', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Client.back.redirectUris.url' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-重定向URI格式不正确', 'system.oauth2Client.back.redirectUris.url', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '重定向的 URI 格式不正确', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 12. authorizedGrantTypes - 不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2Client.back.authorizedGrantTypes.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-授权类型不能为空', 'system.oauth2Client.back.authorizedGrantTypes.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Client.back.authorizedGrantTypes.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-授权类型不能为空', 'system.oauth2Client.back.authorizedGrantTypes.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'oauth2 client authorized grant types cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Client.back.authorizedGrantTypes.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-授权类型不能为空', 'system.oauth2Client.back.authorizedGrantTypes.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '授权类型不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 13. additionalInformation - 必须为 true
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2Client.back.additionalInformation.assertTrue';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-附加信息JSON格式不正确', 'system.oauth2Client.back.additionalInformation.assertTrue', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Client.back.additionalInformation.assertTrue' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-附加信息JSON格式不正确', 'system.oauth2Client.back.additionalInformation.assertTrue', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'oauth2 client additional information must be a valid json', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Client.back.additionalInformation.assertTrue' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-附加信息JSON格式不正确', 'system.oauth2Client.back.additionalInformation.assertTrue', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '附加信息必须是 JSON 格式', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- OAuth2UserUpdateReqVO (oauth2UserUpdate)
-- =============================================

-- 14. nickname - 长度超限
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2UserUpdate.back.nickname.size';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2用户更新-用户昵称长度不能超过30个字符', 'system.oauth2UserUpdate.back.nickname.size', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2UserUpdate.back.nickname.size' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2用户更新-用户昵称长度不能超过30个字符', 'system.oauth2UserUpdate.back.nickname.size', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'oauth2 user update nickname length cannot exceed 30 characters', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2UserUpdate.back.nickname.size' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2用户更新-用户昵称长度不能超过30个字符', 'system.oauth2UserUpdate.back.nickname.size', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '用户昵称长度不能超过 30 个字符', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 15. email - 邮箱格式不正确
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2UserUpdate.back.email.email';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2用户更新-用户邮箱格式不正确', 'system.oauth2UserUpdate.back.email.email', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2UserUpdate.back.email.email' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2用户更新-用户邮箱格式不正确', 'system.oauth2UserUpdate.back.email.email', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'oauth2 user update email must be a valid email', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2UserUpdate.back.email.email' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2用户更新-用户邮箱格式不正确', 'system.oauth2UserUpdate.back.email.email', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '邮箱格式不正确', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 16. email - 长度超限
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2UserUpdate.back.email.length';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2用户更新-用户邮箱长度不能超过50个字符', 'system.oauth2UserUpdate.back.email.length', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2UserUpdate.back.email.length' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2用户更新-用户邮箱长度不能超过50个字符', 'system.oauth2UserUpdate.back.email.length', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'oauth2 user update email length cannot exceed 50 characters', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2UserUpdate.back.email.length' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2用户更新-用户邮箱长度不能超过50个字符', 'system.oauth2UserUpdate.back.email.length', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '邮箱长度不能超过 50 个字符', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 17. mobile - 长度超限
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2UserUpdate.back.mobile.length';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2用户更新-手机号长度必须为11位', 'system.oauth2UserUpdate.back.mobile.length', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2UserUpdate.back.mobile.length' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2用户更新-手机号长度必须为11位', 'system.oauth2UserUpdate.back.mobile.length', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'oauth2 user update mobile length must be 11 characters', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2UserUpdate.back.mobile.length' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2用户更新-手机号长度必须为11位', 'system.oauth2UserUpdate.back.mobile.length', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '手机号长度必须 11 位', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
