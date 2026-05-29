-- =============================================
-- system oauth2 字段国际化 SQL
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
-- OAuth2ClientRespVO / OAuth2ClientPageReqVO (oauth2Client)
-- =============================================

-- 1. id - 编号
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2Client.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-编号', 'system.oauth2Client.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Client.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-编号', 'system.oauth2Client.field.id', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Client.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-编号', 'system.oauth2Client.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. clientId - 客户端编号
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2Client.field.clientId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-客户端编号', 'system.oauth2Client.field.clientId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Client.field.clientId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-客户端编号', 'system.oauth2Client.field.clientId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'client id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Client.field.clientId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-客户端编号', 'system.oauth2Client.field.clientId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '客户端编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. secret - 客户端密钥
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2Client.field.secret';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-客户端密钥', 'system.oauth2Client.field.secret', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Client.field.secret' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-客户端密钥', 'system.oauth2Client.field.secret', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'client secret', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Client.field.secret' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-客户端密钥', 'system.oauth2Client.field.secret', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '客户端密钥', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. name - 应用名
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2Client.field.name';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-应用名', 'system.oauth2Client.field.name', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Client.field.name' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-应用名', 'system.oauth2Client.field.name', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'app name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Client.field.name' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-应用名', 'system.oauth2Client.field.name', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '应用名', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. logo - 应用图标
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2Client.field.logo';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-应用图标', 'system.oauth2Client.field.logo', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Client.field.logo' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-应用图标', 'system.oauth2Client.field.logo', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'app logo', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Client.field.logo' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-应用图标', 'system.oauth2Client.field.logo', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '应用图标', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 6. description - 应用描述
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2Client.field.description';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-应用描述', 'system.oauth2Client.field.description', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Client.field.description' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-应用描述', 'system.oauth2Client.field.description', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'description', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Client.field.description' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-应用描述', 'system.oauth2Client.field.description', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '应用描述', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 7. status - 状态
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2Client.field.status';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-状态', 'system.oauth2Client.field.status', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Client.field.status' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-状态', 'system.oauth2Client.field.status', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Client.field.status' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-状态', 'system.oauth2Client.field.status', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 8. accessTokenValiditySeconds - 访问令牌有效期
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2Client.field.accessTokenValiditySeconds';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-访问令牌有效期', 'system.oauth2Client.field.accessTokenValiditySeconds', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Client.field.accessTokenValiditySeconds' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-访问令牌有效期', 'system.oauth2Client.field.accessTokenValiditySeconds', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'access token validity seconds', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Client.field.accessTokenValiditySeconds' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-访问令牌有效期', 'system.oauth2Client.field.accessTokenValiditySeconds', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '访问令牌有效期', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 9. refreshTokenValiditySeconds - 刷新令牌有效期
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2Client.field.refreshTokenValiditySeconds';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-刷新令牌有效期', 'system.oauth2Client.field.refreshTokenValiditySeconds', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Client.field.refreshTokenValiditySeconds' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-刷新令牌有效期', 'system.oauth2Client.field.refreshTokenValiditySeconds', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'refresh token validity seconds', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Client.field.refreshTokenValiditySeconds' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-刷新令牌有效期', 'system.oauth2Client.field.refreshTokenValiditySeconds', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '刷新令牌有效期', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 10. redirectUris - 可重定向URI地址
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2Client.field.redirectUris';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-可重定向URI地址', 'system.oauth2Client.field.redirectUris', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Client.field.redirectUris' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-可重定向URI地址', 'system.oauth2Client.field.redirectUris', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'redirect uri', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Client.field.redirectUris' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-可重定向URI地址', 'system.oauth2Client.field.redirectUris', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '可重定向 URI 地址', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 11. authorizedGrantTypes - 授权类型
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2Client.field.authorizedGrantTypes';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-授权类型', 'system.oauth2Client.field.authorizedGrantTypes', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Client.field.authorizedGrantTypes' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-授权类型', 'system.oauth2Client.field.authorizedGrantTypes', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'authorized grant types', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Client.field.authorizedGrantTypes' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-授权类型', 'system.oauth2Client.field.authorizedGrantTypes', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '授权类型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 12. scopes - 授权范围
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2Client.field.scopes';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-授权范围', 'system.oauth2Client.field.scopes', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Client.field.scopes' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-授权范围', 'system.oauth2Client.field.scopes', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'scopes', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Client.field.scopes' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-授权范围', 'system.oauth2Client.field.scopes', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '授权范围', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 13. autoApproveScopes - 自动通过的授权范围
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2Client.field.autoApproveScopes';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-自动通过的授权范围', 'system.oauth2Client.field.autoApproveScopes', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Client.field.autoApproveScopes' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-自动通过的授权范围', 'system.oauth2Client.field.autoApproveScopes', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'auto approve scopes', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Client.field.autoApproveScopes' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-自动通过的授权范围', 'system.oauth2Client.field.autoApproveScopes', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '自动通过的授权范围', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 14. authorities - 权限
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2Client.field.authorities';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-权限', 'system.oauth2Client.field.authorities', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Client.field.authorities' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-权限', 'system.oauth2Client.field.authorities', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'authorities', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Client.field.authorities' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-权限', 'system.oauth2Client.field.authorities', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '权限', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 15. resourceIds - 资源
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2Client.field.resourceIds';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-资源', 'system.oauth2Client.field.resourceIds', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Client.field.resourceIds' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-资源', 'system.oauth2Client.field.resourceIds', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'resource ids', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Client.field.resourceIds' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-资源', 'system.oauth2Client.field.resourceIds', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '资源', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 16. additionalInformation - 附加信息
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2Client.field.additionalInformation';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-附加信息', 'system.oauth2Client.field.additionalInformation', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Client.field.additionalInformation' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-附加信息', 'system.oauth2Client.field.additionalInformation', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'additional information', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Client.field.additionalInformation' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-附加信息', 'system.oauth2Client.field.additionalInformation', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '附加信息', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 17. createTime - 创建时间
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2Client.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-创建时间', 'system.oauth2Client.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Client.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-创建时间', 'system.oauth2Client.field.createTime', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2Client.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-创建时间', 'system.oauth2Client.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '创建时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- OAuth2AccessTokenRespVO / OAuth2AccessTokenPageReqVO (oauth2AccessToken)
-- =============================================

-- 18. id - 编号
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2AccessToken.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2访问令牌-编号', 'system.oauth2AccessToken.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2AccessToken.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2访问令牌-编号', 'system.oauth2AccessToken.field.id', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2AccessToken.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2访问令牌-编号', 'system.oauth2AccessToken.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 19. accessToken - 访问令牌
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2AccessToken.field.accessToken';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2访问令牌-访问令牌', 'system.oauth2AccessToken.field.accessToken', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2AccessToken.field.accessToken' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2访问令牌-访问令牌', 'system.oauth2AccessToken.field.accessToken', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'access token', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2AccessToken.field.accessToken' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2访问令牌-访问令牌', 'system.oauth2AccessToken.field.accessToken', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '访问令牌', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 20. refreshToken - 刷新令牌
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2AccessToken.field.refreshToken';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2访问令牌-刷新令牌', 'system.oauth2AccessToken.field.refreshToken', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2AccessToken.field.refreshToken' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2访问令牌-刷新令牌', 'system.oauth2AccessToken.field.refreshToken', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'refresh token', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2AccessToken.field.refreshToken' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2访问令牌-刷新令牌', 'system.oauth2AccessToken.field.refreshToken', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '刷新令牌', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 21. userId - 用户编号
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2AccessToken.field.userId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2访问令牌-用户编号', 'system.oauth2AccessToken.field.userId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2AccessToken.field.userId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2访问令牌-用户编号', 'system.oauth2AccessToken.field.userId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'user id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2AccessToken.field.userId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2访问令牌-用户编号', 'system.oauth2AccessToken.field.userId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '用户编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 22. userType - 用户类型
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2AccessToken.field.userType';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2访问令牌-用户类型', 'system.oauth2AccessToken.field.userType', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2AccessToken.field.userType' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2访问令牌-用户类型', 'system.oauth2AccessToken.field.userType', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'user type', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2AccessToken.field.userType' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2访问令牌-用户类型', 'system.oauth2AccessToken.field.userType', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '用户类型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 23. clientId - 客户端编号
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2AccessToken.field.clientId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2访问令牌-客户端编号', 'system.oauth2AccessToken.field.clientId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2AccessToken.field.clientId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2访问令牌-客户端编号', 'system.oauth2AccessToken.field.clientId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'client id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2AccessToken.field.clientId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2访问令牌-客户端编号', 'system.oauth2AccessToken.field.clientId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '客户端编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 24. createTime - 创建时间
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2AccessToken.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2访问令牌-创建时间', 'system.oauth2AccessToken.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2AccessToken.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2访问令牌-创建时间', 'system.oauth2AccessToken.field.createTime', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2AccessToken.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2访问令牌-创建时间', 'system.oauth2AccessToken.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '创建时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 25. expiresTime - 过期时间
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2AccessToken.field.expiresTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2访问令牌-过期时间', 'system.oauth2AccessToken.field.expiresTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2AccessToken.field.expiresTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2访问令牌-过期时间', 'system.oauth2AccessToken.field.expiresTime', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'expires time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2AccessToken.field.expiresTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2访问令牌-过期时间', 'system.oauth2AccessToken.field.expiresTime', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '过期时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- OAuth2UserInfoRespVO / OAuth2UserUpdateReqVO (oauth2User)
-- =============================================

-- 26. id - 用户编号
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2User.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2用户-用户编号', 'system.oauth2User.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2User.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2用户-用户编号', 'system.oauth2User.field.id', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'user id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2User.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2用户-用户编号', 'system.oauth2User.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '用户编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 27. username - 用户账号
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2User.field.username';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2用户-用户账号', 'system.oauth2User.field.username', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2User.field.username' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2用户-用户账号', 'system.oauth2User.field.username', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'username', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2User.field.username' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2用户-用户账号', 'system.oauth2User.field.username', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '用户账号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 28. nickname - 用户昵称
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2User.field.nickname';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2用户-用户昵称', 'system.oauth2User.field.nickname', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2User.field.nickname' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2用户-用户昵称', 'system.oauth2User.field.nickname', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'nickname', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2User.field.nickname' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2用户-用户昵称', 'system.oauth2User.field.nickname', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '用户昵称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 29. email - 用户邮箱
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2User.field.email';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2用户-用户邮箱', 'system.oauth2User.field.email', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2User.field.email' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2用户-用户邮箱', 'system.oauth2User.field.email', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'email', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2User.field.email' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2用户-用户邮箱', 'system.oauth2User.field.email', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '用户邮箱', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 30. mobile - 手机号码
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2User.field.mobile';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2用户-手机号码', 'system.oauth2User.field.mobile', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2User.field.mobile' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2用户-手机号码', 'system.oauth2User.field.mobile', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'mobile', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2User.field.mobile' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2用户-手机号码', 'system.oauth2User.field.mobile', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '手机号码', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 31. sex - 用户性别
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2User.field.sex';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2用户-用户性别', 'system.oauth2User.field.sex', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2User.field.sex' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2用户-用户性别', 'system.oauth2User.field.sex', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'sex', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2User.field.sex' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2用户-用户性别', 'system.oauth2User.field.sex', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '用户性别', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 32. avatar - 用户头像
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2User.field.avatar';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2用户-用户头像', 'system.oauth2User.field.avatar', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2User.field.avatar' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2用户-用户头像', 'system.oauth2User.field.avatar', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'avatar', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2User.field.avatar' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2用户-用户头像', 'system.oauth2User.field.avatar', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '用户头像', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 33. dept.id - 部门编号
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2User.field.deptId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2用户-部门编号', 'system.oauth2User.field.deptId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2User.field.deptId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2用户-部门编号', 'system.oauth2User.field.deptId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'department id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2User.field.deptId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2用户-部门编号', 'system.oauth2User.field.deptId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '部门编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 34. dept.name - 部门名称
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2User.field.deptName';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2用户-部门名称', 'system.oauth2User.field.deptName', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2User.field.deptName' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2用户-部门名称', 'system.oauth2User.field.deptName', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'department name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2User.field.deptName' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2用户-部门名称', 'system.oauth2User.field.deptName', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '部门名称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 35. post.id - 岗位编号
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2User.field.postId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2用户-岗位编号', 'system.oauth2User.field.postId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2User.field.postId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2用户-岗位编号', 'system.oauth2User.field.postId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'post id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2User.field.postId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2用户-岗位编号', 'system.oauth2User.field.postId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '岗位编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 36. post.name - 岗位名称
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2User.field.postName';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2用户-岗位名称', 'system.oauth2User.field.postName', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2User.field.postName' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2用户-岗位名称', 'system.oauth2User.field.postName', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'post name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2User.field.postName' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2用户-岗位名称', 'system.oauth2User.field.postName', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '岗位名称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- OAuth2OpenAccessTokenRespVO (oauth2OpenAccessToken)
-- =============================================

-- 37. accessToken - 访问令牌
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2OpenAccessToken.field.accessToken';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2开放接口访问令牌-访问令牌', 'system.oauth2OpenAccessToken.field.accessToken', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2OpenAccessToken.field.accessToken' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2开放接口访问令牌-访问令牌', 'system.oauth2OpenAccessToken.field.accessToken', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'access token', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2OpenAccessToken.field.accessToken' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2开放接口访问令牌-访问令牌', 'system.oauth2OpenAccessToken.field.accessToken', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '访问令牌', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 38. refreshToken - 刷新令牌
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2OpenAccessToken.field.refreshToken';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2开放接口访问令牌-刷新令牌', 'system.oauth2OpenAccessToken.field.refreshToken', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2OpenAccessToken.field.refreshToken' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2开放接口访问令牌-刷新令牌', 'system.oauth2OpenAccessToken.field.refreshToken', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'refresh token', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2OpenAccessToken.field.refreshToken' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2开放接口访问令牌-刷新令牌', 'system.oauth2OpenAccessToken.field.refreshToken', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '刷新令牌', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 39. tokenType - 令牌类型
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2OpenAccessToken.field.tokenType';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2开放接口访问令牌-令牌类型', 'system.oauth2OpenAccessToken.field.tokenType', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2OpenAccessToken.field.tokenType' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2开放接口访问令牌-令牌类型', 'system.oauth2OpenAccessToken.field.tokenType', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'token type', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2OpenAccessToken.field.tokenType' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2开放接口访问令牌-令牌类型', 'system.oauth2OpenAccessToken.field.tokenType', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '令牌类型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 40. expiresIn - 过期时间
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2OpenAccessToken.field.expiresIn';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2开放接口访问令牌-过期时间', 'system.oauth2OpenAccessToken.field.expiresIn', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2OpenAccessToken.field.expiresIn' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2开放接口访问令牌-过期时间', 'system.oauth2OpenAccessToken.field.expiresIn', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'expires in', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2OpenAccessToken.field.expiresIn' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2开放接口访问令牌-过期时间', 'system.oauth2OpenAccessToken.field.expiresIn', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '过期时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 41. scope - 授权范围
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2OpenAccessToken.field.scope';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2开放接口访问令牌-授权范围', 'system.oauth2OpenAccessToken.field.scope', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2OpenAccessToken.field.scope' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2开放接口访问令牌-授权范围', 'system.oauth2OpenAccessToken.field.scope', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'scope', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2OpenAccessToken.field.scope' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2开放接口访问令牌-授权范围', 'system.oauth2OpenAccessToken.field.scope', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '授权范围', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- OAuth2OpenCheckTokenRespVO (oauth2OpenCheckToken)
-- =============================================

-- 42. userId - 用户编号
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2OpenCheckToken.field.userId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2开放接口校验令牌-用户编号', 'system.oauth2OpenCheckToken.field.userId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2OpenCheckToken.field.userId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2开放接口校验令牌-用户编号', 'system.oauth2OpenCheckToken.field.userId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'user id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2OpenCheckToken.field.userId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2开放接口校验令牌-用户编号', 'system.oauth2OpenCheckToken.field.userId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '用户编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 43. userType - 用户类型
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2OpenCheckToken.field.userType';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2开放接口校验令牌-用户类型', 'system.oauth2OpenCheckToken.field.userType', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2OpenCheckToken.field.userType' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2开放接口校验令牌-用户类型', 'system.oauth2OpenCheckToken.field.userType', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'user type', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2OpenCheckToken.field.userType' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2开放接口校验令牌-用户类型', 'system.oauth2OpenCheckToken.field.userType', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '用户类型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 44. tenantId - 租户编号
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2OpenCheckToken.field.tenantId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2开放接口校验令牌-租户编号', 'system.oauth2OpenCheckToken.field.tenantId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2OpenCheckToken.field.tenantId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2开放接口校验令牌-租户编号', 'system.oauth2OpenCheckToken.field.tenantId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'tenant id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2OpenCheckToken.field.tenantId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2开放接口校验令牌-租户编号', 'system.oauth2OpenCheckToken.field.tenantId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '租户编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 45. clientId - 客户端编号
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2OpenCheckToken.field.clientId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2开放接口校验令牌-客户端编号', 'system.oauth2OpenCheckToken.field.clientId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2OpenCheckToken.field.clientId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2开放接口校验令牌-客户端编号', 'system.oauth2OpenCheckToken.field.clientId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'client id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2OpenCheckToken.field.clientId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2开放接口校验令牌-客户端编号', 'system.oauth2OpenCheckToken.field.clientId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '客户端编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 46. scopes - 授权范围
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2OpenCheckToken.field.scopes';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2开放接口校验令牌-授权范围', 'system.oauth2OpenCheckToken.field.scopes', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2OpenCheckToken.field.scopes' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2开放接口校验令牌-授权范围', 'system.oauth2OpenCheckToken.field.scopes', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'scopes', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2OpenCheckToken.field.scopes' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2开放接口校验令牌-授权范围', 'system.oauth2OpenCheckToken.field.scopes', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '授权范围', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 47. accessToken - 访问令牌
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2OpenCheckToken.field.accessToken';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2开放接口校验令牌-访问令牌', 'system.oauth2OpenCheckToken.field.accessToken', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2OpenCheckToken.field.accessToken' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2开放接口校验令牌-访问令牌', 'system.oauth2OpenCheckToken.field.accessToken', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'access token', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2OpenCheckToken.field.accessToken' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2开放接口校验令牌-访问令牌', 'system.oauth2OpenCheckToken.field.accessToken', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '访问令牌', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 48. exp - 过期时间
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2OpenCheckToken.field.exp';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2开放接口校验令牌-过期时间', 'system.oauth2OpenCheckToken.field.exp', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2OpenCheckToken.field.exp' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2开放接口校验令牌-过期时间', 'system.oauth2OpenCheckToken.field.exp', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'expiration time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2OpenCheckToken.field.exp' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2开放接口校验令牌-过期时间', 'system.oauth2OpenCheckToken.field.exp', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '过期时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- OAuth2OpenAuthorizeInfoRespVO (oauth2OpenAuthorizeInfo)
-- =============================================

-- 49. client.name - 应用名
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2OpenAuthorizeInfo.field.clientName';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2开放接口授权页信息-应用名', 'system.oauth2OpenAuthorizeInfo.field.clientName', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2OpenAuthorizeInfo.field.clientName' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2开放接口授权页信息-应用名', 'system.oauth2OpenAuthorizeInfo.field.clientName', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'app name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2OpenAuthorizeInfo.field.clientName' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2开放接口授权页信息-应用名', 'system.oauth2OpenAuthorizeInfo.field.clientName', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '应用名', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 50. client.logo - 应用图标
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2OpenAuthorizeInfo.field.clientLogo';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2开放接口授权页信息-应用图标', 'system.oauth2OpenAuthorizeInfo.field.clientLogo', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2OpenAuthorizeInfo.field.clientLogo' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2开放接口授权页信息-应用图标', 'system.oauth2OpenAuthorizeInfo.field.clientLogo', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'app logo', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2OpenAuthorizeInfo.field.clientLogo' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2开放接口授权页信息-应用图标', 'system.oauth2OpenAuthorizeInfo.field.clientLogo', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '应用图标', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 51. scopes - scope 的选中信息
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2OpenAuthorizeInfo.field.scopes';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2开放接口授权页信息-Scope选中信息', 'system.oauth2OpenAuthorizeInfo.field.scopes', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2OpenAuthorizeInfo.field.scopes' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2开放接口授权页信息-Scope选中信息', 'system.oauth2OpenAuthorizeInfo.field.scopes', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'scope selection', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2OpenAuthorizeInfo.field.scopes' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2开放接口授权页信息-Scope选中信息', 'system.oauth2OpenAuthorizeInfo.field.scopes', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'Scope 的选中信息', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
