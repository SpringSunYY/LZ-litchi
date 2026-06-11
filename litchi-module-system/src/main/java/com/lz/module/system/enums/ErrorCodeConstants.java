package com.lz.module.system.enums;

import com.lz.framework.common.exception.ErrorCode;

/**
 * System 错误码枚举类
 * <p>
 * system 系统，使用 1-002-000-000 段
 * <p>
 * 国际化规范：参见 litchi-doc/i18n/ErrorCode-I18n-Spec.md
 */
public interface ErrorCodeConstants {

    // ========== AUTH 模块 1-002-000-000 ==========
    ErrorCode AUTH_LOGIN_BAD_CREDENTIALS = new ErrorCode(1_002_000_000, "system.auth.back.badCredentials", "login failed, incorrect account or password");
    ErrorCode AUTH_LOGIN_USER_DISABLED = new ErrorCode(1_002_000_001, "system.auth.back.disabled", "login failed, account is disabled");
    ErrorCode AUTH_LOGIN_CAPTCHA_CODE_ERROR = new ErrorCode(1_002_000_004, "system.auth.back.captchaError", "captcha incorrect, reason: {}");
    ErrorCode AUTH_THIRD_LOGIN_NOT_BIND = new ErrorCode(1_002_000_005, "system.auth.back.thirdNotBind", "third-party login not bound, binding required");
    ErrorCode AUTH_MOBILE_NOT_EXISTS = new ErrorCode(1_002_000_007, "system.auth.back.mobileNotExists", "mobile number not registered");
    ErrorCode AUTH_REGISTER_CAPTCHA_CODE_ERROR = new ErrorCode(1_002_000_008, "system.auth.back.registerCaptchaError", "registration captcha incorrect, reason: {}");
    ErrorCode AUTH_REGISTER_TENANT_CODE_EXISTS = new ErrorCode(1_002_000_009, "system.auth.back.tenantCodeExists", "tenant code already exists: {}");

    // ========== 菜单模块 1-002-001-000 ==========
    ErrorCode MENU_NAME_DUPLICATE = new ErrorCode(1_002_001_000, "system.menu.back.nameDuplicate", "menu name already exists");
    ErrorCode MENU_PARENT_NOT_EXISTS = new ErrorCode(1_002_001_001, "system.menu.back.parentNotExists", "parent menu not exists");
    ErrorCode MENU_PARENT_ERROR = new ErrorCode(1_002_001_002, "system.menu.back.parentSelfError", "cannot set itself as parent menu");
    ErrorCode MENU_NOT_EXISTS = new ErrorCode(1_002_001_003, "system.menu.back.notExists", "menu not exists");
    ErrorCode MENU_EXISTS_CHILDREN = new ErrorCode(1_002_001_004, "system.menu.back.hasChildren", "menu has children, cannot delete");
    ErrorCode MENU_PARENT_NOT_DIR_OR_MENU = new ErrorCode(1_002_001_005, "system.menu.back.parentTypeError", "parent menu type must be directory or menu");
    ErrorCode MENU_COMPONENT_NAME_DUPLICATE = new ErrorCode(1_002_001_006, "system.menu.back.componentNameDuplicate", "menu component name already exists");

    // ========== 角色模块 1-002-002-000 ==========
    ErrorCode ROLE_NOT_EXISTS = new ErrorCode(1_002_002_000, "system.role.back.notExists", "role not exists");
    ErrorCode ROLE_NAME_DUPLICATE = new ErrorCode(1_002_002_001, "system.role.back.nameDuplicate", "role name [{}] already exists");
    ErrorCode ROLE_CODE_DUPLICATE = new ErrorCode(1_002_002_002, "system.role.back.codeDuplicate", "role code [{}] already exists");
    ErrorCode ROLE_CAN_NOT_UPDATE_SYSTEM_TYPE_ROLE = new ErrorCode(1_002_002_003, "system.role.back.systemProhibitUpdate", "cannot operate on system built-in role");
    ErrorCode ROLE_IS_DISABLE = new ErrorCode(1_002_002_004, "system.role.back.disabled", "role [{}] is disabled");
    ErrorCode ROLE_ADMIN_CODE_ERROR = new ErrorCode(1_002_002_005, "system.role.back.adminCodeError", "role code [{}] cannot be used");

    // ========== 用户模块 1-002-003-000 ==========
    ErrorCode USER_USERNAME_EXISTS = new ErrorCode(1_002_003_000, "system.user.back.usernameExists", "username already exists");
    ErrorCode USER_MOBILE_EXISTS = new ErrorCode(1_002_003_001, "system.user.back.mobileExists", "mobile number already exists");
    ErrorCode USER_EMAIL_EXISTS = new ErrorCode(1_002_003_002, "system.user.back.emailExists", "email already exists");
    ErrorCode USER_NOT_EXISTS = new ErrorCode(1_002_003_003, "system.user.back.notExists", "user not exists");
    ErrorCode USER_IMPORT_LIST_IS_EMPTY = new ErrorCode(1_002_003_004, "system.user.back.importEmpty", "imported user data cannot be empty");
    ErrorCode USER_PASSWORD_FAILED = new ErrorCode(1_002_003_005, "system.user.back.passwordFailed", "user password verification failed");
    ErrorCode USER_IS_DISABLE = new ErrorCode(1_002_003_006, "system.user.back.disabled", "user [{}] is disabled");
    ErrorCode USER_COUNT_MAX = new ErrorCode(1_002_003_008, "system.user.back.quotaExceeded", "failed to create user, tenant max quota ({}) exceeded");
    ErrorCode USER_IMPORT_INIT_PASSWORD = new ErrorCode(1_002_003_009, "system.user.back.initPasswordEmpty", "initial password cannot be empty");
    ErrorCode USER_MOBILE_NOT_EXISTS = new ErrorCode(1_002_003_010, "system.user.back.mobileNotExists", "mobile number not registered");
    ErrorCode USER_REGISTER_DISABLED = new ErrorCode(1_002_003_011, "system.user.back.registerDisabled", "registration function is disabled");

    // ========== 部门模块 1-002-004-000 ==========
    ErrorCode DEPT_NAME_DUPLICATE = new ErrorCode(1_002_004_000, "system.dept.back.nameDuplicate", "department name already exists");
    ErrorCode DEPT_PARENT_NOT_EXITS = new ErrorCode(1_002_004_001, "system.dept.back.parentNotExists", "parent department not exists");
    ErrorCode DEPT_NOT_FOUND = new ErrorCode(1_002_004_002, "system.dept.back.notFound", "department not found");
    ErrorCode DEPT_EXITS_CHILDREN = new ErrorCode(1_002_004_003, "system.dept.back.hasChildren", "department has children, cannot delete");
    ErrorCode DEPT_PARENT_ERROR = new ErrorCode(1_002_004_004, "system.dept.back.parentSelfError", "cannot set itself as parent department");
    ErrorCode DEPT_NOT_ENABLE = new ErrorCode(1_002_004_006, "system.dept.back.notEnabled", "department ({}) is not enabled, cannot select");
    ErrorCode DEPT_PARENT_IS_CHILD = new ErrorCode(1_002_004_007, "system.dept.back.parentChildError", "cannot set child department as parent");

    // ========== 岗位模块 1-002-005-000 ==========
    ErrorCode POST_NOT_FOUND = new ErrorCode(1_002_005_000, "system.post.back.notFound", "post not found");
    ErrorCode POST_NOT_ENABLE = new ErrorCode(1_002_005_001, "system.post.back.notEnabled", "post ({}) is not enabled, cannot select");
    ErrorCode POST_NAME_DUPLICATE = new ErrorCode(1_002_005_002, "system.post.back.nameDuplicate", "post name already exists");
    ErrorCode POST_CODE_DUPLICATE = new ErrorCode(1_002_005_003, "system.post.back.codeDuplicate", "post code already exists");

    // ========== 字典类型 1-002-006-000 ==========
    ErrorCode DICT_TYPE_NOT_EXISTS = new ErrorCode(1_002_006_001, "system.dictType.back.notExists", "dict type not exists");
    ErrorCode DICT_TYPE_NOT_ENABLE = new ErrorCode(1_002_006_002, "system.dictType.back.notEnabled", "dict type is not enabled, cannot select");
    ErrorCode DICT_TYPE_NAME_DUPLICATE = new ErrorCode(1_002_006_003, "system.dictType.back.nameDuplicate", "dict type name already exists");
    ErrorCode DICT_TYPE_TYPE_DUPLICATE = new ErrorCode(1_002_006_004, "system.dictType.back.typeDuplicate", "dict type value already exists");
    ErrorCode DICT_TYPE_HAS_CHILDREN = new ErrorCode(1_002_006_005, "system.dictType.back.hasChildren", "dict type has dict data, cannot delete");

    // ========== 字典数据 1-002-007-000 ==========
    ErrorCode DICT_DATA_NOT_EXISTS = new ErrorCode(1_002_007_001, "system.dictData.back.notExists", "dict data not exists");
    ErrorCode DICT_DATA_NOT_ENABLE = new ErrorCode(1_002_007_002, "system.dictData.back.notEnabled", "dict data ({}) is not enabled, cannot select");
    ErrorCode DICT_DATA_VALUE_DUPLICATE = new ErrorCode(1_002_007_003, "system.dictData.back.valueDuplicate", "dict data value already exists");

    // ========== 通知公告 1-002-008-000 ==========
    ErrorCode NOTICE_NOT_FOUND = new ErrorCode(1_002_008_001, "system.notice.back.notFound", "notice not found");
    ErrorCode NOTICE_DISABLE = new ErrorCode(1_002_008_002, "system.notice.back.disabled", "notice is disabled");
    ErrorCode NOTICE_NOT_TEMPLATE_EXISTS = new ErrorCode(1_002_008_003, "system.notice.back.templateNotExists", "notice template not exists");

    // ========== 短信渠道 1-002-011-000 ==========
    ErrorCode SMS_CHANNEL_NOT_EXISTS = new ErrorCode(1_002_011_000, "system.smsChannel.back.notExists", "sms channel not exists");
    ErrorCode SMS_CHANNEL_DISABLE = new ErrorCode(1_002_011_001, "system.smsChannel.back.disabled", "sms channel is not enabled, cannot select");
    ErrorCode SMS_CHANNEL_HAS_CHILDREN = new ErrorCode(1_002_011_002, "system.smsChannel.back.hasChildren", "sms channel has sms templates, cannot delete");

    // ========== 短信模板 1-002-012-000 ==========
    ErrorCode SMS_TEMPLATE_NOT_EXISTS = new ErrorCode(1_002_012_000, "system.smsTemplate.back.notExists", "sms template not exists");
    ErrorCode SMS_TEMPLATE_CODE_DUPLICATE = new ErrorCode(1_002_012_001, "system.smsTemplate.back.codeDuplicate", "sms template code [{}] already exists");
    ErrorCode SMS_TEMPLATE_API_ERROR = new ErrorCode(1_002_012_002, "system.smsTemplate.back.apiError", "sms API template call failed, reason: {}");
    ErrorCode SMS_TEMPLATE_API_AUDIT_CHECKING = new ErrorCode(1_002_012_003, "system.smsTemplate.back.auditChecking", "sms API template unavailable, reason: under review");
    ErrorCode SMS_TEMPLATE_API_AUDIT_FAIL = new ErrorCode(1_002_012_004, "system.smsTemplate.back.auditFail", "sms API template unavailable, reason: review rejected, {}");
    ErrorCode SMS_TEMPLATE_API_NOT_FOUND = new ErrorCode(1_002_012_005, "system.smsTemplate.back.apiTemplateNotFound", "sms API template unavailable, reason: template not found");

    // ========== 短信发送 1-002-013-000 ==========
    ErrorCode SMS_SEND_MOBILE_NOT_EXISTS = new ErrorCode(1_002_013_000, "system.smsSend.back.mobileNotExists", "mobile number not exists");
    ErrorCode SMS_SEND_MOBILE_TEMPLATE_PARAM_MISS = new ErrorCode(1_002_013_001, "system.smsSend.back.paramMissing", "template param ({}) missing");
    ErrorCode SMS_SEND_TEMPLATE_NOT_EXISTS = new ErrorCode(1_002_013_002, "system.smsSend.back.templateNotExists", "sms template not exists");

    // ========== 短信验证码 1-002-014-000 ==========
    ErrorCode SMS_CODE_NOT_FOUND = new ErrorCode(1_002_014_000, "system.smsCode.back.notFound", "sms code not found");
    ErrorCode SMS_CODE_EXPIRED = new ErrorCode(1_002_014_001, "system.smsCode.back.expired", "sms code has expired");
    ErrorCode SMS_CODE_USED = new ErrorCode(1_002_014_002, "system.smsCode.back.used", "sms code has been used");
    ErrorCode SMS_CODE_EXCEED_SEND_MAXIMUM_QUANTITY_PER_DAY = new ErrorCode(1_002_014_004, "system.smsCode.back.quotaExceeded", "daily sms send limit exceeded");
    ErrorCode SMS_CODE_SEND_TOO_FAST = new ErrorCode(1_002_014_005, "system.smsCode.back.rateLimit", "sms send too frequently");

    // ========== 租户信息 1-002-015-000 ==========
    ErrorCode TENANT_NOT_EXISTS = new ErrorCode(1_002_015_000, "system.tenant.back.notExists", "tenant not exists");
    ErrorCode TENANT_DISABLE = new ErrorCode(1_002_015_001, "system.tenant.back.disabled", "tenant [{}] is disabled");
    ErrorCode TENANT_EXPIRE = new ErrorCode(1_002_015_002, "system.tenant.back.expired", "tenant [{}] has expired");
    ErrorCode TENANT_CAN_NOT_UPDATE_SYSTEM = new ErrorCode(1_002_015_003, "system.tenant.back.systemProhibitUpdate", "system tenant cannot be modified or deleted");
    ErrorCode TENANT_NAME_DUPLICATE = new ErrorCode(1_002_015_004, "system.tenant.back.nameDuplicate", "tenant name [{}] already exists");
    ErrorCode TENANT_WEBSITE_DUPLICATE = new ErrorCode(1_002_015_005, "system.tenant.back.websiteDuplicate", "tenant website [{}] already exists");
    ErrorCode TENANT_NOT_EXISTS_MENU = new ErrorCode(1_002_015_006, "system.tenant.back.menuEmpty", "tenant menu binding failed, menu permissions are empty");
    ErrorCode TENANT_PROHIBIT_UPDATE_CODE = new ErrorCode(1_002_015_007, "system.tenant.back.codeProhibitUpdate", "tenant code cannot be modified");

    // ========== 租户套餐 1-002-016-000 ==========
    ErrorCode TENANT_PACKAGE_NOT_EXISTS = new ErrorCode(1_002_016_000, "system.tenantPackage.back.notExists", "tenant package not exists");
    ErrorCode TENANT_PACKAGE_USED = new ErrorCode(1_002_016_001, "system.tenantPackage.back.packageInUse", "tenant is using this package, please reassign before deleting");
    ErrorCode TENANT_PACKAGE_DISABLE = new ErrorCode(1_002_016_002, "system.tenantPackage.back.disabled", "tenant package [{}] is disabled");
    ErrorCode TENANT_PACKAGE_NAME_DUPLICATE = new ErrorCode(1_002_016_003, "system.tenantPackage.back.nameDuplicate", "tenant package name already exists");
    ErrorCode TENANT_PACKAGE_CODE_DUPLICATE = new ErrorCode(1_002_016_004, "system.tenantPackage.back.codeDuplicate", "tenant package code already exists");

    // ========== 订阅套餐 1-002-017-000 ==========
    ErrorCode TENANT_PACKAGE_SUBSCRIBE_NOT_EXISTS = new ErrorCode(1_002_017_000, "system.tenantPackageSubscribe.back.notExists", "tenant package subscription not exists");
    ErrorCode TENANT_PACKAGE_SUBSCRIBE_PROHIBIT_TENANT_OR_PACKAGE_CHANGE = new ErrorCode(1_002_017_001, "system.tenantPackageSubscribe.back.prohibitChange", "tenant or tenant package cannot be changed");

    // ========== 社交用户 1-002-018-000 ==========
    ErrorCode SOCIAL_USER_AUTH_FAILURE = new ErrorCode(1_002_018_000, "system.socialUser.back.authFailure", "social authorization failed, reason: {}");
    ErrorCode SOCIAL_USER_NOT_FOUND = new ErrorCode(1_002_018_001, "system.socialUser.back.notFound", "social authorization failed, user not found");
    ErrorCode SOCIAL_CLIENT_WEIXIN_MINI_APP_PHONE_CODE_ERROR = new ErrorCode(1_002_018_200, "system.socialClient.back.getPhoneFailed", "failed to get phone number");
    ErrorCode SOCIAL_CLIENT_WEIXIN_MINI_APP_QRCODE_ERROR = new ErrorCode(1_002_018_201, "system.socialClient.back.getQrCodeFailed", "failed to get mini-program QR code");
    ErrorCode SOCIAL_CLIENT_WEIXIN_MINI_APP_SUBSCRIBE_TEMPLATE_ERROR = new ErrorCode(1_002_018_202, "system.socialClient.back.getSubscribeTemplateFailed", "failed to get mini-program subscribe message template");
    ErrorCode SOCIAL_CLIENT_WEIXIN_MINI_APP_SUBSCRIBE_MESSAGE_ERROR = new ErrorCode(1_002_018_203, "system.socialClient.back.sendSubscribeMessageFailed", "failed to send mini-program subscribe message");
    ErrorCode SOCIAL_CLIENT_WEIXIN_MINI_APP_ORDER_UPLOAD_SHIPPING_INFO_ERROR = new ErrorCode(1_002_018_204, "system.socialClient.back.uploadShippingFailed", "failed to upload WeChat mini-program shipping info");
    ErrorCode SOCIAL_CLIENT_WEIXIN_MINI_APP_ORDER_NOTIFY_CONFIRM_RECEIVE_ERROR = new ErrorCode(1_002_018_205, "system.socialClient.back.confirmReceiveFailed", "failed to confirm WeChat mini-program order receive");
    ErrorCode SOCIAL_CLIENT_NOT_EXISTS = new ErrorCode(1_002_018_210, "system.socialClient.back.notExists", "social client not exists");
    ErrorCode SOCIAL_CLIENT_UNIQUE = new ErrorCode(1_002_018_211, "system.socialClient.back.configExists", "social client config already exists");

    // ========== OAuth2 客户端 1-002-020-000 ==========
    ErrorCode OAUTH2_CLIENT_NOT_EXISTS = new ErrorCode(1_002_020_000, "system.oauth2Client.back.notExists", "OAuth2 client not exists");
    ErrorCode OAUTH2_CLIENT_EXISTS = new ErrorCode(1_002_020_001, "system.oauth2Client.back.clientIdExists", "OAuth2 client id already exists");
    ErrorCode OAUTH2_CLIENT_DISABLE = new ErrorCode(1_002_020_002, "system.oauth2Client.back.disabled", "OAuth2 client is disabled");
    ErrorCode OAUTH2_CLIENT_AUTHORIZED_GRANT_TYPE_NOT_EXISTS = new ErrorCode(1_002_020_003, "system.oauth2Client.back.grantTypeNotAllowed", "authorized grant type not supported");
    ErrorCode OAUTH2_CLIENT_SCOPE_OVER = new ErrorCode(1_002_020_004, "system.oauth2Client.back.scopeOver", "authorization scope is too broad");
    ErrorCode OAUTH2_CLIENT_REDIRECT_URI_NOT_MATCH = new ErrorCode(1_002_020_005, "system.oauth2Client.back.redirectUriInvalid", "invalid redirect_uri: {}");
    ErrorCode OAUTH2_CLIENT_CLIENT_SECRET_ERROR = new ErrorCode(1_002_020_006, "system.oauth2Client.back.clientSecretInvalid", "invalid client_secret: {}");

    // ========== OAuth2 授权 1-002-021-000 ==========
    ErrorCode OAUTH2_GRANT_CLIENT_ID_MISMATCH = new ErrorCode(1_002_021_000, "system.oauth2Grant.back.clientIdMismatch", "client_id mismatch");
    ErrorCode OAUTH2_GRANT_REDIRECT_URI_MISMATCH = new ErrorCode(1_002_021_001, "system.oauth2Grant.back.redirectUriMismatch", "redirect_uri mismatch");
    ErrorCode OAUTH2_GRANT_STATE_MISMATCH = new ErrorCode(1_002_021_002, "system.oauth2Grant.back.stateMismatch", "state mismatch");

    // ========== OAuth2 Code 1-002-022-000 ==========
    ErrorCode OAUTH2_CODE_NOT_EXISTS = new ErrorCode(1_002_022_000, "system.oauth2Code.back.notExists", "code not exists");
    ErrorCode OAUTH2_CODE_EXPIRE = new ErrorCode(1_002_022_001, "system.oauth2Code.back.expired", "code has expired");

    // ========== 邮箱账号 1-002-023-000 ==========
    ErrorCode MAIL_ACCOUNT_NOT_EXISTS = new ErrorCode(1_002_023_000, "system.mailAccount.back.notExists", "mail account not exists");
    ErrorCode MAIL_ACCOUNT_RELATE_TEMPLATE_EXISTS = new ErrorCode(1_002_023_001, "system.mailAccount.back.hasChildren", "mail account has mail templates, cannot delete");

    // ========== 邮件模版 1-002-024-000 ==========
    ErrorCode MAIL_TEMPLATE_NOT_EXISTS = new ErrorCode(1_002_024_000, "system.mailTemplate.back.notExists", "mail template not exists");
    ErrorCode MAIL_TEMPLATE_CODE_EXISTS = new ErrorCode(1_002_024_001, "system.mailTemplate.back.codeExists", "mail template code ({}) already exists");

    // ========== 邮件发送 1-002-025-000 ==========
    ErrorCode MAIL_SEND_TEMPLATE_PARAM_MISS = new ErrorCode(1_002_025_000, "system.mailSend.back.paramMissing", "template param ({}) missing");
    ErrorCode MAIL_SEND_MAIL_NOT_EXISTS = new ErrorCode(1_002_025_001, "system.mailSend.back.mailNotExists", "mail not exists");

    // ========== 站内信模版 1-002-026-000 ==========
    ErrorCode NOTIFY_TEMPLATE_NOT_EXISTS = new ErrorCode(1_002_026_000, "system.notifyTemplate.back.notExists", "notify template not exists");
    ErrorCode NOTIFY_TEMPLATE_CODE_DUPLICATE = new ErrorCode(1_002_026_001, "system.notifyTemplate.back.codeDuplicate", "notify template code [{}] already exists");

    // ========== 站内信发送 1-002-028-000 ==========
    ErrorCode NOTIFY_SEND_TEMPLATE_PARAM_MISS = new ErrorCode(1_002_028_000, "system.notifySend.back.paramMissing", "template param ({}) missing");
}
