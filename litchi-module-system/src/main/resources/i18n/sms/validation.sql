-- =============================================
-- system sms 校验消息国际化 SQL
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
-- SmsChannelSaveReqVO (smsChannel)
-- =============================================

-- 1. signature - 不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsChannel.back.signature.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-短信签名不能为空', 'system.smsChannel.back.signature.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsChannel.back.signature.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-短信签名不能为空', 'system.smsChannel.back.signature.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'sms channel signature cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsChannel.back.signature.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-短信签名不能为空', 'system.smsChannel.back.signature.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '短信签名不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. code - 不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsChannel.back.code.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-渠道编码不能为空', 'system.smsChannel.back.code.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsChannel.back.code.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-渠道编码不能为空', 'system.smsChannel.back.code.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'sms channel code cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsChannel.back.code.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-渠道编码不能为空', 'system.smsChannel.back.code.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '渠道编码不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. status - 不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsChannel.back.status.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-启用状态不能为空', 'system.smsChannel.back.status.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsChannel.back.status.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-启用状态不能为空', 'system.smsChannel.back.status.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'sms channel status cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsChannel.back.status.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-启用状态不能为空', 'system.smsChannel.back.status.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '启用状态不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. apiKey - 不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsChannel.back.apiKey.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-短信API的账号不能为空', 'system.smsChannel.back.apiKey.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsChannel.back.apiKey.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-短信API的账号不能为空', 'system.smsChannel.back.apiKey.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'sms channel api key cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsChannel.back.apiKey.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-短信API的账号不能为空', 'system.smsChannel.back.apiKey.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '短信 API 的账号不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. callbackUrl - URL格式不正确
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsChannel.back.callbackUrl.url';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-回调URL格式不正确', 'system.smsChannel.back.callbackUrl.url', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsChannel.back.callbackUrl.url' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-回调URL格式不正确', 'system.smsChannel.back.callbackUrl.url', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'sms channel callback url must be a valid url', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsChannel.back.callbackUrl.url' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-回调URL格式不正确', 'system.smsChannel.back.callbackUrl.url', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '回调 URL 格式不正确', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- SmsTemplateSaveReqVO (smsTemplate)
-- =============================================

-- 6. type - 不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsTemplate.back.type.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-短信类型不能为空', 'system.smsTemplate.back.type.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsTemplate.back.type.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-短信类型不能为空', 'system.smsTemplate.back.type.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'sms template type cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsTemplate.back.type.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-短信类型不能为空', 'system.smsTemplate.back.type.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '短信类型不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 7. status - 不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsTemplate.back.status.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-开启状态不能为空', 'system.smsTemplate.back.status.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsTemplate.back.status.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-开启状态不能为空', 'system.smsTemplate.back.status.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'sms template status cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsTemplate.back.status.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-开启状态不能为空', 'system.smsTemplate.back.status.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '开启状态不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 8. code - 不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsTemplate.back.code.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-模板编码不能为空', 'system.smsTemplate.back.code.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsTemplate.back.code.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-模板编码不能为空', 'system.smsTemplate.back.code.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'sms template code cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsTemplate.back.code.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-模板编码不能为空', 'system.smsTemplate.back.code.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '模板编码不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 9. name - 不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsTemplate.back.name.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-模板名称不能为空', 'system.smsTemplate.back.name.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsTemplate.back.name.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-模板名称不能为空', 'system.smsTemplate.back.name.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'sms template name cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsTemplate.back.name.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-模板名称不能为空', 'system.smsTemplate.back.name.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '模板名称不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 10. content - 不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsTemplate.back.content.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-模板内容不能为空', 'system.smsTemplate.back.content.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsTemplate.back.content.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-模板内容不能为空', 'system.smsTemplate.back.content.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'sms template content cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsTemplate.back.content.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-模板内容不能为空', 'system.smsTemplate.back.content.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '模板内容不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 11. apiTemplateId - 不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsTemplate.back.apiTemplateId.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-短信API的模板编号不能为空', 'system.smsTemplate.back.apiTemplateId.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsTemplate.back.apiTemplateId.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-短信API的模板编号不能为空', 'system.smsTemplate.back.apiTemplateId.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'sms template api template id cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsTemplate.back.apiTemplateId.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-短信API的模板编号不能为空', 'system.smsTemplate.back.apiTemplateId.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '短信 API 的模板编号不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 12. channelId - 不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsTemplate.back.channelId.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-短信渠道编号不能为空', 'system.smsTemplate.back.channelId.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsTemplate.back.channelId.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-短信渠道编号不能为空', 'system.smsTemplate.back.channelId.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'sms template channel id cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsTemplate.back.channelId.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-短信渠道编号不能为空', 'system.smsTemplate.back.channelId.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '短信渠道编号不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- SmsTemplateSendReqVO (smsTemplate)
-- =============================================

-- 13. templateCode - 不能为空
DELETE FROM infra_i18n_key WHERE message_key = 'system.smsTemplate.back.templateCode.notNull';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-模板编码不能为空', 'system.smsTemplate.back.templateCode.notNull', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsTemplate.back.templateCode.notNull' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-模板编码不能为空', 'system.smsTemplate.back.templateCode.notNull', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'sms template code cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smsTemplate.back.templateCode.notNull' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-模板编码不能为空', 'system.smsTemplate.back.templateCode.notNull', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '模板编码不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
