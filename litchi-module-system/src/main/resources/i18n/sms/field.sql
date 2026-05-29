-- =============================================
-- system sms 字段国际化 SQL
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
-- SmsChannelRespVO / SmsChannelSimpleRespVO (smsChannel)
-- =============================================

-- 1. id - 编号
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsChannel.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-编号', 'system.smsChannel.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsChannel.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-编号', 'system.smsChannel.field.id', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'sms channel id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsChannel.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-编号', 'system.smsChannel.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. signature - 短信签名
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsChannel.field.signature';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-短信签名', 'system.smsChannel.field.signature', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsChannel.field.signature' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-短信签名', 'system.smsChannel.field.signature', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'sms signature', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsChannel.field.signature' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-短信签名', 'system.smsChannel.field.signature', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '短信签名', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. code - 渠道编码
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsChannel.field.code';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-渠道编码', 'system.smsChannel.field.code', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsChannel.field.code' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-渠道编码', 'system.smsChannel.field.code', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'channel code', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsChannel.field.code' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-渠道编码', 'system.smsChannel.field.code', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '渠道编码', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. status - 启用状态
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsChannel.field.status';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-启用状态', 'system.smsChannel.field.status', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsChannel.field.status' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-启用状态', 'system.smsChannel.field.status', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsChannel.field.status' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-启用状态', 'system.smsChannel.field.status', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '启用状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. remark - 备注
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsChannel.field.remark';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-备注', 'system.smsChannel.field.remark', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsChannel.field.remark' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-备注', 'system.smsChannel.field.remark', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'remark', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsChannel.field.remark' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-备注', 'system.smsChannel.field.remark', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '备注', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 6. apiKey - 短信 API 的账号
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsChannel.field.apiKey';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-短信API的账号', 'system.smsChannel.field.apiKey', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsChannel.field.apiKey' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-短信API的账号', 'system.smsChannel.field.apiKey', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'api key', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsChannel.field.apiKey' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-短信API的账号', 'system.smsChannel.field.apiKey', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '短信 API 的账号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 7. apiSecret - 短信 API 的密钥
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsChannel.field.apiSecret';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-短信API的密钥', 'system.smsChannel.field.apiSecret', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsChannel.field.apiSecret' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-短信API的密钥', 'system.smsChannel.field.apiSecret', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'api secret', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsChannel.field.apiSecret' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-短信API的密钥', 'system.smsChannel.field.apiSecret', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '短信 API 的密钥', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 8. callbackUrl - 短信发送回调 URL
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsChannel.field.callbackUrl';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-短信发送回调URL', 'system.smsChannel.field.callbackUrl', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsChannel.field.callbackUrl' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-短信发送回调URL', 'system.smsChannel.field.callbackUrl', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'callback url', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsChannel.field.callbackUrl' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-短信发送回调URL', 'system.smsChannel.field.callbackUrl', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '短信发送回调 URL', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 9. createTime - 创建时间
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsChannel.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-创建时间', 'system.smsChannel.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsChannel.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-创建时间', 'system.smsChannel.field.createTime', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsChannel.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-创建时间', 'system.smsChannel.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '创建时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- SmsChannelPageReqVO (smsChannel)
-- =============================================

-- 10. status - 任务状态
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsChannel.field.status';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-任务状态', 'system.smsChannel.field.status', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsChannel.field.status' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-任务状态', 'system.smsChannel.field.status', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsChannel.field.status' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-任务状态', 'system.smsChannel.field.status', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '任务状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 11. signature - 短信签名
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsChannel.field.signature';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-短信签名', 'system.smsChannel.field.signature', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsChannel.field.signature' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-短信签名', 'system.smsChannel.field.signature', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'sms signature', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsChannel.field.signature' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-短信签名', 'system.smsChannel.field.signature', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '短信签名', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 12. createTime - 创建时间
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsChannel.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-创建时间', 'system.smsChannel.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsChannel.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-创建时间', 'system.smsChannel.field.createTime', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsChannel.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-创建时间', 'system.smsChannel.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '创建时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- SmsTemplateRespVO (smsTemplate)
-- =============================================

-- 13. id - 编号
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsTemplate.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-编号', 'system.smsTemplate.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsTemplate.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-编号', 'system.smsTemplate.field.id', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'sms template id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsTemplate.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-编号', 'system.smsTemplate.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 14. type - 短信类型
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsTemplate.field.type';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-短信类型', 'system.smsTemplate.field.type', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsTemplate.field.type' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-短信类型', 'system.smsTemplate.field.type', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'sms type', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsTemplate.field.type' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-短信类型', 'system.smsTemplate.field.type', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '短信类型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 15. status - 开启状态
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsTemplate.field.status';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-开启状态', 'system.smsTemplate.field.status', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsTemplate.field.status' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-开启状态', 'system.smsTemplate.field.status', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsTemplate.field.status' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-开启状态', 'system.smsTemplate.field.status', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '开启状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 16. code - 模板编码
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsTemplate.field.code';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-模板编码', 'system.smsTemplate.field.code', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsTemplate.field.code' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-模板编码', 'system.smsTemplate.field.code', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'template code', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsTemplate.field.code' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-模板编码', 'system.smsTemplate.field.code', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '模板编码', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 17. name - 模板名称
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsTemplate.field.name';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-模板名称', 'system.smsTemplate.field.name', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsTemplate.field.name' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-模板名称', 'system.smsTemplate.field.name', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'template name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsTemplate.field.name' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-模板名称', 'system.smsTemplate.field.name', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '模板名称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 18. content - 模板内容
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsTemplate.field.content';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-模板内容', 'system.smsTemplate.field.content', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsTemplate.field.content' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-模板内容', 'system.smsTemplate.field.content', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'template content', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsTemplate.field.content' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-模板内容', 'system.smsTemplate.field.content', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '模板内容', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 19. params - 参数数组
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsTemplate.field.params';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-参数数组', 'system.smsTemplate.field.params', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsTemplate.field.params' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-参数数组', 'system.smsTemplate.field.params', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'template params', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsTemplate.field.params' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-参数数组', 'system.smsTemplate.field.params', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '参数数组', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 20. remark - 备注
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsTemplate.field.remark';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-备注', 'system.smsTemplate.field.remark', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsTemplate.field.remark' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-备注', 'system.smsTemplate.field.remark', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'remark', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsTemplate.field.remark' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-备注', 'system.smsTemplate.field.remark', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '备注', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 21. apiTemplateId - 短信 API 的模板编号
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsTemplate.field.apiTemplateId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-短信API的模板编号', 'system.smsTemplate.field.apiTemplateId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsTemplate.field.apiTemplateId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-短信API的模板编号', 'system.smsTemplate.field.apiTemplateId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'api template id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsTemplate.field.apiTemplateId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-短信API的模板编号', 'system.smsTemplate.field.apiTemplateId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '短信 API 的模板编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 22. channelId - 短信渠道编号
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsTemplate.field.channelId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-短信渠道编号', 'system.smsTemplate.field.channelId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsTemplate.field.channelId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-短信渠道编号', 'system.smsTemplate.field.channelId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'sms channel id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsTemplate.field.channelId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-短信渠道编号', 'system.smsTemplate.field.channelId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '短信渠道编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 23. channelCode - 短信渠道编码
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsTemplate.field.channelCode';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-短信渠道编码', 'system.smsTemplate.field.channelCode', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsTemplate.field.channelCode' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-短信渠道编码', 'system.smsTemplate.field.channelCode', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'sms channel code', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsTemplate.field.channelCode' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-短信渠道编码', 'system.smsTemplate.field.channelCode', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '短信渠道编码', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 24. createTime - 创建时间
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsTemplate.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-创建时间', 'system.smsTemplate.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsTemplate.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-创建时间', 'system.smsTemplate.field.createTime', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsTemplate.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-创建时间', 'system.smsTemplate.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '创建时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- SmsTemplatePageReqVO (smsTemplate)
-- =============================================

-- 25. type - 短信签名
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsTemplate.field.type';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-短信签名', 'system.smsTemplate.field.type', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsTemplate.field.type' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-短信签名', 'system.smsTemplate.field.type', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'sms signature', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsTemplate.field.type' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-短信签名', 'system.smsTemplate.field.type', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '短信签名', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 26. status - 开启状态
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsTemplate.field.status';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-开启状态', 'system.smsTemplate.field.status', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsTemplate.field.status' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-开启状态', 'system.smsTemplate.field.status', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsTemplate.field.status' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-开启状态', 'system.smsTemplate.field.status', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '开启状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 27. code - 模板编码
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsTemplate.field.code';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-模板编码', 'system.smsTemplate.field.code', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsTemplate.field.code' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-模板编码', 'system.smsTemplate.field.code', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'template code', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsTemplate.field.code' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-模板编码', 'system.smsTemplate.field.code', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '模板编码', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 28. content - 模板内容
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsTemplate.field.content';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-模板内容', 'system.smsTemplate.field.content', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsTemplate.field.content' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-模板内容', 'system.smsTemplate.field.content', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'template content', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsTemplate.field.content' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-模板内容', 'system.smsTemplate.field.content', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '模板内容', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 29. apiTemplateId - 短信 API 的模板编号
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsTemplate.field.apiTemplateId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-短信API的模板编号', 'system.smsTemplate.field.apiTemplateId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsTemplate.field.apiTemplateId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-短信API的模板编号', 'system.smsTemplate.field.apiTemplateId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'api template id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsTemplate.field.apiTemplateId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-短信API的模板编号', 'system.smsTemplate.field.apiTemplateId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '短信 API 的模板编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 30. channelId - 短信渠道编号
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsTemplate.field.channelId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-短信渠道编号', 'system.smsTemplate.field.channelId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsTemplate.field.channelId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-短信渠道编号', 'system.smsTemplate.field.channelId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'sms channel id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsTemplate.field.channelId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-短信渠道编号', 'system.smsTemplate.field.channelId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '短信渠道编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 31. createTime - 创建时间
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsTemplate.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-创建时间', 'system.smsTemplate.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsTemplate.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-创建时间', 'system.smsTemplate.field.createTime', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsTemplate.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-创建时间', 'system.smsTemplate.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '创建时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- SmsTemplateSendReqVO (smsTemplate)
-- =============================================

-- 32. mobile - 手机号
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsTemplate.field.mobile';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-手机号', 'system.smsTemplate.field.mobile', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsTemplate.field.mobile' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-手机号', 'system.smsTemplate.field.mobile', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'mobile', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsTemplate.field.mobile' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-手机号', 'system.smsTemplate.field.mobile', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '手机号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 33. templateCode - 模板编码
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsTemplate.field.templateCode';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-模板编码', 'system.smsTemplate.field.templateCode', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsTemplate.field.templateCode' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-模板编码', 'system.smsTemplate.field.templateCode', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'template code', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsTemplate.field.templateCode' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-模板编码', 'system.smsTemplate.field.templateCode', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '模板编码', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 34. templateParams - 模板参数
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsTemplate.field.templateParams';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-模板参数', 'system.smsTemplate.field.templateParams', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsTemplate.field.templateParams' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-模板参数', 'system.smsTemplate.field.templateParams', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'template params', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsTemplate.field.templateParams' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-模板参数', 'system.smsTemplate.field.templateParams', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '模板参数', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- SmsLogRespVO (smsLog)
-- =============================================

-- 35. id - 编号
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsLog.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-编号', 'system.smsLog.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsLog.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-编号', 'system.smsLog.field.id', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'sms log id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsLog.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-编号', 'system.smsLog.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 36. channelId - 短信渠道编号
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsLog.field.channelId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-短信渠道编号', 'system.smsLog.field.channelId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsLog.field.channelId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-短信渠道编号', 'system.smsLog.field.channelId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'sms channel id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsLog.field.channelId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-短信渠道编号', 'system.smsLog.field.channelId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '短信渠道编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 37. channelCode - 短信渠道编码
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsLog.field.channelCode';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-短信渠道编码', 'system.smsLog.field.channelCode', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsLog.field.channelCode' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-短信渠道编码', 'system.smsLog.field.channelCode', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'sms channel code', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsLog.field.channelCode' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-短信渠道编码', 'system.smsLog.field.channelCode', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '短信渠道编码', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 38. templateId - 模板编号
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsLog.field.templateId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-模板编号', 'system.smsLog.field.templateId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsLog.field.templateId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-模板编号', 'system.smsLog.field.templateId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'template id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsLog.field.templateId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-模板编号', 'system.smsLog.field.templateId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '模板编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 39. templateCode - 模板编码
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsLog.field.templateCode';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-模板编码', 'system.smsLog.field.templateCode', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsLog.field.templateCode' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-模板编码', 'system.smsLog.field.templateCode', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'template code', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsLog.field.templateCode' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-模板编码', 'system.smsLog.field.templateCode', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '模板编码', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 40. templateType - 短信类型
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsLog.field.templateType';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-短信类型', 'system.smsLog.field.templateType', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsLog.field.templateType' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-短信类型', 'system.smsLog.field.templateType', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'sms type', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsLog.field.templateType' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-短信类型', 'system.smsLog.field.templateType', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '短信类型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 41. templateContent - 短信内容
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsLog.field.templateContent';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-短信内容', 'system.smsLog.field.templateContent', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsLog.field.templateContent' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-短信内容', 'system.smsLog.field.templateContent', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'sms content', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsLog.field.templateContent' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-短信内容', 'system.smsLog.field.templateContent', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '短信内容', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 42. templateParams - 短信参数
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsLog.field.templateParams';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-短信参数', 'system.smsLog.field.templateParams', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsLog.field.templateParams' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-短信参数', 'system.smsLog.field.templateParams', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'sms params', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsLog.field.templateParams' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-短信参数', 'system.smsLog.field.templateParams', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '短信参数', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 43. apiTemplateId - 短信 API 的模板编号
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsLog.field.apiTemplateId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-短信API的模板编号', 'system.smsLog.field.apiTemplateId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsLog.field.apiTemplateId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-短信API的模板编号', 'system.smsLog.field.apiTemplateId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'api template id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsLog.field.apiTemplateId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-短信API的模板编号', 'system.smsLog.field.apiTemplateId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '短信 API 的模板编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 44. mobile - 手机号
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsLog.field.mobile';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-手机号', 'system.smsLog.field.mobile', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsLog.field.mobile' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-手机号', 'system.smsLog.field.mobile', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'mobile', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsLog.field.mobile' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-手机号', 'system.smsLog.field.mobile', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '手机号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 45. userId - 用户编号
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsLog.field.userId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-用户编号', 'system.smsLog.field.userId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsLog.field.userId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-用户编号', 'system.smsLog.field.userId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'user id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsLog.field.userId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-用户编号', 'system.smsLog.field.userId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '用户编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 46. userType - 用户类型
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsLog.field.userType';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-用户类型', 'system.smsLog.field.userType', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsLog.field.userType' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-用户类型', 'system.smsLog.field.userType', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'user type', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsLog.field.userType' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-用户类型', 'system.smsLog.field.userType', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '用户类型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 47. sendStatus - 发送状态
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsLog.field.sendStatus';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-发送状态', 'system.smsLog.field.sendStatus', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsLog.field.sendStatus' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-发送状态', 'system.smsLog.field.sendStatus', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'send status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsLog.field.sendStatus' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-发送状态', 'system.smsLog.field.sendStatus', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '发送状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 48. sendTime - 发送时间
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsLog.field.sendTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-发送时间', 'system.smsLog.field.sendTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsLog.field.sendTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-发送时间', 'system.smsLog.field.sendTime', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'send time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsLog.field.sendTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-发送时间', 'system.smsLog.field.sendTime', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '发送时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 49. apiSendCode - 短信 API 发送结果的编码
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsLog.field.apiSendCode';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-短信API发送结果的编码', 'system.smsLog.field.apiSendCode', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsLog.field.apiSendCode' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-短信API发送结果的编码', 'system.smsLog.field.apiSendCode', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'api send code', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsLog.field.apiSendCode' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-短信API发送结果的编码', 'system.smsLog.field.apiSendCode', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '短信 API 发送结果的编码', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 50. apiSendMsg - 短信 API 发送失败的提示
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsLog.field.apiSendMsg';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-短信API发送失败的提示', 'system.smsLog.field.apiSendMsg', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsLog.field.apiSendMsg' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-短信API发送失败的提示', 'system.smsLog.field.apiSendMsg', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'api send message', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsLog.field.apiSendMsg' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-短信API发送失败的提示', 'system.smsLog.field.apiSendMsg', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '短信 API 发送失败的提示', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 51. apiRequestId - 短信 API 发送返回的唯一请求 ID
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsLog.field.apiRequestId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-短信API发送返回的唯一请求ID', 'system.smsLog.field.apiRequestId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsLog.field.apiRequestId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-短信API发送返回的唯一请求ID', 'system.smsLog.field.apiRequestId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'api request id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsLog.field.apiRequestId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-短信API发送返回的唯一请求ID', 'system.smsLog.field.apiRequestId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '短信 API 发送返回的唯一请求 ID', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 52. apiSerialNo - 短信 API 发送返回的序号
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsLog.field.apiSerialNo';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-短信API发送返回的序号', 'system.smsLog.field.apiSerialNo', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsLog.field.apiSerialNo' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-短信API发送返回的序号', 'system.smsLog.field.apiSerialNo', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'api serial no', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsLog.field.apiSerialNo' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-短信API发送返回的序号', 'system.smsLog.field.apiSerialNo', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '短信 API 发送返回的序号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 53. receiveStatus - 接收状态
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsLog.field.receiveStatus';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-接收状态', 'system.smsLog.field.receiveStatus', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsLog.field.receiveStatus' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-接收状态', 'system.smsLog.field.receiveStatus', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'receive status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsLog.field.receiveStatus' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-接收状态', 'system.smsLog.field.receiveStatus', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '接收状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 54. receiveTime - 接收时间
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsLog.field.receiveTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-接收时间', 'system.smsLog.field.receiveTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsLog.field.receiveTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-接收时间', 'system.smsLog.field.receiveTime', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'receive time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsLog.field.receiveTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-接收时间', 'system.smsLog.field.receiveTime', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '接收时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 55. apiReceiveCode - API 接收结果的编码
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsLog.field.apiReceiveCode';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-API接收结果的编码', 'system.smsLog.field.apiReceiveCode', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsLog.field.apiReceiveCode' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-API接收结果的编码', 'system.smsLog.field.apiReceiveCode', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'api receive code', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsLog.field.apiReceiveCode' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-API接收结果的编码', 'system.smsLog.field.apiReceiveCode', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'API 接收结果的编码', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 56. apiReceiveMsg - API 接收结果的说明
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsLog.field.apiReceiveMsg';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-API接收结果的说明', 'system.smsLog.field.apiReceiveMsg', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsLog.field.apiReceiveMsg' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-API接收结果的说明', 'system.smsLog.field.apiReceiveMsg', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'api receive message', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsLog.field.apiReceiveMsg' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-API接收结果的说明', 'system.smsLog.field.apiReceiveMsg', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'API 接收结果的说明', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 57. createTime - 创建时间
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsLog.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-创建时间', 'system.smsLog.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsLog.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-创建时间', 'system.smsLog.field.createTime', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsLog.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-创建时间', 'system.smsLog.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '创建时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- SmsLogPageReqVO (smsLog)
-- =============================================

-- 58. channelId - 短信渠道编号
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsLog.field.channelId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-短信渠道编号', 'system.smsLog.field.channelId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsLog.field.channelId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-短信渠道编号', 'system.smsLog.field.channelId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'sms channel id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsLog.field.channelId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-短信渠道编号', 'system.smsLog.field.channelId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '短信渠道编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 59. templateId - 模板编号
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsLog.field.templateId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-模板编号', 'system.smsLog.field.templateId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsLog.field.templateId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-模板编号', 'system.smsLog.field.templateId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'template id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsLog.field.templateId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-模板编号', 'system.smsLog.field.templateId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '模板编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 60. mobile - 手机号
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsLog.field.mobile';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-手机号', 'system.smsLog.field.mobile', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsLog.field.mobile' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-手机号', 'system.smsLog.field.mobile', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'mobile', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsLog.field.mobile' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-手机号', 'system.smsLog.field.mobile', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '手机号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 61. sendStatus - 发送状态
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsLog.field.sendStatus';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-发送状态', 'system.smsLog.field.sendStatus', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsLog.field.sendStatus' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-发送状态', 'system.smsLog.field.sendStatus', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'send status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsLog.field.sendStatus' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-发送状态', 'system.smsLog.field.sendStatus', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '发送状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 62. sendTime - 发送时间
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsLog.field.sendTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-发送时间', 'system.smsLog.field.sendTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsLog.field.sendTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-发送时间', 'system.smsLog.field.sendTime', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'send time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsLog.field.sendTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-发送时间', 'system.smsLog.field.sendTime', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '发送时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 63. receiveStatus - 接收状态
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsLog.field.receiveStatus';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-接收状态', 'system.smsLog.field.receiveStatus', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsLog.field.receiveStatus' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-接收状态', 'system.smsLog.field.receiveStatus', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'receive status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsLog.field.receiveStatus' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-接收状态', 'system.smsLog.field.receiveStatus', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '接收状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 64. receiveTime - 接收时间
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsLog.field.receiveTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-接收时间', 'system.smsLog.field.receiveTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsLog.field.receiveTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-接收时间', 'system.smsLog.field.receiveTime', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'receive time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsLog.field.receiveTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-接收时间', 'system.smsLog.field.receiveTime', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '接收时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
