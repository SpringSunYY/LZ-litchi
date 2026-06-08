-- =============================================
-- erp sale 字段国际化 SQL
-- 生成时间：2026-05-29
-- 规范版本：v6.1
-- =============================================

-- ---------------------------------------------
-- 变量定义（必须全部定义，INSERT 中必须全部使用变量）
-- ---------------------------------------------
SET @IS_SYSTEM = 0;
SET @USE_TYPE_FILED = 3;
SET @MODULE_TYPE = 'erp';
SET @LOCALE_TARGET_BACKEND = 1;
SET @LOCALE_EN = 'en-US';
SET @LOCALE_ZH_CN = 'zh-CN';
SET @CREATOR = '0';
SET @REMARK = 'ai auto generate';
SET @ORDER_NUM = 5;

-- =============================================
-- ErpCustomerDO (customer) - 客户
-- =============================================

-- 1. 客户编号
DELETE FROM infra_i18n_key WHERE message_key = 'erp.customer.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-客户编号', 'erp.customer.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.customer.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-客户编号', 'erp.customer.field.id', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'customer id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.customer.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-客户编号', 'erp.customer.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '客户编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. 客户名称
DELETE FROM infra_i18n_key WHERE message_key = 'erp.customer.field.name';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-客户名称', 'erp.customer.field.name', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.customer.field.name' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-客户名称', 'erp.customer.field.name', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'customer name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.customer.field.name' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-客户名称', 'erp.customer.field.name', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '客户名称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. 联系人
DELETE FROM infra_i18n_key WHERE message_key = 'erp.customer.field.contact';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-联系人', 'erp.customer.field.contact', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.customer.field.contact' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-联系人', 'erp.customer.field.contact', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'contact', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.customer.field.contact' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-联系人', 'erp.customer.field.contact', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '联系人', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. 手机号码
DELETE FROM infra_i18n_key WHERE message_key = 'erp.customer.field.mobile';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-手机号码', 'erp.customer.field.mobile', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.customer.field.mobile' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-手机号码', 'erp.customer.field.mobile', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'mobile', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.customer.field.mobile' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-手机号码', 'erp.customer.field.mobile', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '手机号码', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. 联系电话
DELETE FROM infra_i18n_key WHERE message_key = 'erp.customer.field.telephone';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-联系电话', 'erp.customer.field.telephone', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.customer.field.telephone' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-联系电话', 'erp.customer.field.telephone', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'telephone', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.customer.field.telephone' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-联系电话', 'erp.customer.field.telephone', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '联系电话', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 6. 电子邮箱
DELETE FROM infra_i18n_key WHERE message_key = 'erp.customer.field.email';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-电子邮箱', 'erp.customer.field.email', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.customer.field.email' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-电子邮箱', 'erp.customer.field.email', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'email', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.customer.field.email' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-电子邮箱', 'erp.customer.field.email', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '电子邮箱', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 7. 传真
DELETE FROM infra_i18n_key WHERE message_key = 'erp.customer.field.fax';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-传真', 'erp.customer.field.fax', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.customer.field.fax' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-传真', 'erp.customer.field.fax', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'fax', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.customer.field.fax' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-传真', 'erp.customer.field.fax', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '传真', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 8. 备注
DELETE FROM infra_i18n_key WHERE message_key = 'erp.customer.field.remark';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-备注', 'erp.customer.field.remark', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.customer.field.remark' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-备注', 'erp.customer.field.remark', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'remark', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.customer.field.remark' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-备注', 'erp.customer.field.remark', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '备注', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 9. 开启状态
DELETE FROM infra_i18n_key WHERE message_key = 'erp.customer.field.status';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-开启状态', 'erp.customer.field.status', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.customer.field.status' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-开启状态', 'erp.customer.field.status', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.customer.field.status' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-开启状态', 'erp.customer.field.status', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '开启状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 10. 排序
DELETE FROM infra_i18n_key WHERE message_key = 'erp.customer.field.sort';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-排序', 'erp.customer.field.sort', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.customer.field.sort' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-排序', 'erp.customer.field.sort', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'sort', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.customer.field.sort' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-排序', 'erp.customer.field.sort', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '排序', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 11. 纳税人识别号
DELETE FROM infra_i18n_key WHERE message_key = 'erp.customer.field.taxNo';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-纳税人识别号', 'erp.customer.field.taxNo', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.customer.field.taxNo' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-纳税人识别号', 'erp.customer.field.taxNo', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'tax number', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.customer.field.taxNo' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-纳税人识别号', 'erp.customer.field.taxNo', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '纳税人识别号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 12. 税率
DELETE FROM infra_i18n_key WHERE message_key = 'erp.customer.field.taxPercent';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-税率', 'erp.customer.field.taxPercent', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.customer.field.taxPercent' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-税率', 'erp.customer.field.taxPercent', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'tax percent', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.customer.field.taxPercent' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-税率', 'erp.customer.field.taxPercent', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '税率', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 13. 开户行
DELETE FROM infra_i18n_key WHERE message_key = 'erp.customer.field.bankName';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-开户行', 'erp.customer.field.bankName', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.customer.field.bankName' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-开户行', 'erp.customer.field.bankName', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'bank name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.customer.field.bankName' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-开户行', 'erp.customer.field.bankName', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '开户行', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 14. 开户账号
DELETE FROM infra_i18n_key WHERE message_key = 'erp.customer.field.bankAccount';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-开户账号', 'erp.customer.field.bankAccount', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.customer.field.bankAccount' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-开户账号', 'erp.customer.field.bankAccount', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'bank account', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.customer.field.bankAccount' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-开户账号', 'erp.customer.field.bankAccount', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '开户账号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 15. 开户地址
DELETE FROM infra_i18n_key WHERE message_key = 'erp.customer.field.bankAddress';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-开户地址', 'erp.customer.field.bankAddress', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.customer.field.bankAddress' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-开户地址', 'erp.customer.field.bankAddress', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'bank address', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.customer.field.bankAddress' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-开户地址', 'erp.customer.field.bankAddress', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '开户地址', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 16. 创建时间
DELETE FROM infra_i18n_key WHERE message_key = 'erp.customer.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-创建时间', 'erp.customer.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.customer.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-创建时间', 'erp.customer.field.createTime', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.customer.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-创建时间', 'erp.customer.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '创建时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- ErpSaleOrderDO (saleOrder) - 销售订单
-- =============================================

-- 17. 编号
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOrder.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-编号', 'erp.saleOrder.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrder.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-编号', 'erp.saleOrder.field.id', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrder.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-编号', 'erp.saleOrder.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 18. 销售订单号
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOrder.field.no';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-销售订单号', 'erp.saleOrder.field.no', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrder.field.no' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-销售订单号', 'erp.saleOrder.field.no', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'sale order no', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrder.field.no' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-销售订单号', 'erp.saleOrder.field.no', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '销售订单号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 19. 销售状态
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOrder.field.status';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-销售状态', 'erp.saleOrder.field.status', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrder.field.status' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-销售状态', 'erp.saleOrder.field.status', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'sale status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrder.field.status' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-销售状态', 'erp.saleOrder.field.status', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '销售状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 20. 客户编号
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOrder.field.customerId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-客户编号', 'erp.saleOrder.field.customerId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrder.field.customerId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-客户编号', 'erp.saleOrder.field.customerId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'customer id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrder.field.customerId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-客户编号', 'erp.saleOrder.field.customerId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '客户编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 21. 客户名称
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOrder.field.customerName';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-客户名称', 'erp.saleOrder.field.customerName', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrder.field.customerName' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-客户名称', 'erp.saleOrder.field.customerName', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'customer name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrder.field.customerName' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-客户名称', 'erp.saleOrder.field.customerName', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '客户名称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 22. 结算账户编号
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOrder.field.accountId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-结算账户编号', 'erp.saleOrder.field.accountId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrder.field.accountId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-结算账户编号', 'erp.saleOrder.field.accountId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'account id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrder.field.accountId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-结算账户编号', 'erp.saleOrder.field.accountId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '结算账户编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 23. 销售员编号
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOrder.field.saleUserId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-销售员编号', 'erp.saleOrder.field.saleUserId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrder.field.saleUserId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-销售员编号', 'erp.saleOrder.field.saleUserId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'sale user id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrder.field.saleUserId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-销售员编号', 'erp.saleOrder.field.saleUserId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '销售员编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 24. 下单时间
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOrder.field.orderTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-下单时间', 'erp.saleOrder.field.orderTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrder.field.orderTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-下单时间', 'erp.saleOrder.field.orderTime', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'order time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrder.field.orderTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-下单时间', 'erp.saleOrder.field.orderTime', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '下单时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 25. 合计数量
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOrder.field.totalCount';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-合计数量', 'erp.saleOrder.field.totalCount', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrder.field.totalCount' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-合计数量', 'erp.saleOrder.field.totalCount', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'total count', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrder.field.totalCount' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-合计数量', 'erp.saleOrder.field.totalCount', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '合计数量', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 26. 最终合计价格
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOrder.field.totalPrice';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-最终合计价格', 'erp.saleOrder.field.totalPrice', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrder.field.totalPrice' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-最终合计价格', 'erp.saleOrder.field.totalPrice', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'total price', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrder.field.totalPrice' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-最终合计价格', 'erp.saleOrder.field.totalPrice', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '最终合计价格', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 27. 合计产品价格
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOrder.field.totalProductPrice';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-合计产品价格', 'erp.saleOrder.field.totalProductPrice', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrder.field.totalProductPrice' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-合计产品价格', 'erp.saleOrder.field.totalProductPrice', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'total product price', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrder.field.totalProductPrice' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-合计产品价格', 'erp.saleOrder.field.totalProductPrice', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '合计产品价格', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 28. 合计税额
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOrder.field.totalTaxPrice';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-合计税额', 'erp.saleOrder.field.totalTaxPrice', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrder.field.totalTaxPrice' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-合计税额', 'erp.saleOrder.field.totalTaxPrice', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'total tax price', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrder.field.totalTaxPrice' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-合计税额', 'erp.saleOrder.field.totalTaxPrice', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '合计税额', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 29. 优惠率
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOrder.field.discountPercent';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-优惠率', 'erp.saleOrder.field.discountPercent', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrder.field.discountPercent' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-优惠率', 'erp.saleOrder.field.discountPercent', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'discount percent', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrder.field.discountPercent' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-优惠率', 'erp.saleOrder.field.discountPercent', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '优惠率', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 30. 优惠金额
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOrder.field.discountPrice';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-优惠金额', 'erp.saleOrder.field.discountPrice', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrder.field.discountPrice' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-优惠金额', 'erp.saleOrder.field.discountPrice', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'discount price', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrder.field.discountPrice' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-优惠金额', 'erp.saleOrder.field.discountPrice', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '优惠金额', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 31. 定金金额
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOrder.field.depositPrice';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-定金金额', 'erp.saleOrder.field.depositPrice', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrder.field.depositPrice' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-定金金额', 'erp.saleOrder.field.depositPrice', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'deposit price', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrder.field.depositPrice' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-定金金额', 'erp.saleOrder.field.depositPrice', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '定金金额', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 32. 附件地址
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOrder.field.fileUrl';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-附件地址', 'erp.saleOrder.field.fileUrl', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrder.field.fileUrl' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-附件地址', 'erp.saleOrder.field.fileUrl', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'file url', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrder.field.fileUrl' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-附件地址', 'erp.saleOrder.field.fileUrl', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '附件地址', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 33. 备注
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOrder.field.remark';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-备注', 'erp.saleOrder.field.remark', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrder.field.remark' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-备注', 'erp.saleOrder.field.remark', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'remark', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrder.field.remark' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-备注', 'erp.saleOrder.field.remark', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '备注', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 34. 创建时间
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOrder.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-创建时间', 'erp.saleOrder.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrder.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-创建时间', 'erp.saleOrder.field.createTime', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrder.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-创建时间', 'erp.saleOrder.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '创建时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 35. 产品信息
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOrder.field.productNames';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-产品信息', 'erp.saleOrder.field.productNames', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrder.field.productNames' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-产品信息', 'erp.saleOrder.field.productNames', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'product names', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrder.field.productNames' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-产品信息', 'erp.saleOrder.field.productNames', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '产品信息', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 36. 销售出库数量
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOrder.field.outCount';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-销售出库数量', 'erp.saleOrder.field.outCount', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrder.field.outCount' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-销售出库数量', 'erp.saleOrder.field.outCount', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'sale out count', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrder.field.outCount' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-销售出库数量', 'erp.saleOrder.field.outCount', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '销售出库数量', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 37. 销售退货数量
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOrder.field.returnCount';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-销售退货数量', 'erp.saleOrder.field.returnCount', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrder.field.returnCount' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-销售退货数量', 'erp.saleOrder.field.returnCount', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'sale return count', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrder.field.returnCount' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-销售退货数量', 'erp.saleOrder.field.returnCount', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '销售退货数量', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- ErpSaleOrderItemDO (saleOrderItem) - 销售订单项
-- =============================================

-- 38. 订单项编号
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOrderItem.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单项-订单项编号', 'erp.saleOrderItem.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrderItem.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单项-订单项编号', 'erp.saleOrderItem.field.id', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'order item id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrderItem.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单项-订单项编号', 'erp.saleOrderItem.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '订单项编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 39. 销售订单编号
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOrderItem.field.orderId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单项-销售订单编号', 'erp.saleOrderItem.field.orderId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrderItem.field.orderId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单项-销售订单编号', 'erp.saleOrderItem.field.orderId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'order id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrderItem.field.orderId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单项-销售订单编号', 'erp.saleOrderItem.field.orderId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '销售订单编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 40. 产品编号
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOrderItem.field.productId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单项-产品编号', 'erp.saleOrderItem.field.productId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrderItem.field.productId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单项-产品编号', 'erp.saleOrderItem.field.productId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'product id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrderItem.field.productId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单项-产品编号', 'erp.saleOrderItem.field.productId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '产品编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 41. 产品单位
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOrderItem.field.productUnitId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单项-产品单位', 'erp.saleOrderItem.field.productUnitId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrderItem.field.productUnitId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单项-产品单位', 'erp.saleOrderItem.field.productUnitId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'product unit id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrderItem.field.productUnitId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单项-产品单位', 'erp.saleOrderItem.field.productUnitId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '产品单位', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 42. 产品单价
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOrderItem.field.productPrice';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单项-产品单价', 'erp.saleOrderItem.field.productPrice', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrderItem.field.productPrice' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单项-产品单价', 'erp.saleOrderItem.field.productPrice', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'product price', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrderItem.field.productPrice' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单项-产品单价', 'erp.saleOrderItem.field.productPrice', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '产品单价', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 43. 产品数量
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOrderItem.field.count';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单项-产品数量', 'erp.saleOrderItem.field.count', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrderItem.field.count' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单项-产品数量', 'erp.saleOrderItem.field.count', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'count', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrderItem.field.count' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单项-产品数量', 'erp.saleOrderItem.field.count', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '产品数量', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 44. 税率
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOrderItem.field.taxPercent';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单项-税率', 'erp.saleOrderItem.field.taxPercent', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrderItem.field.taxPercent' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单项-税率', 'erp.saleOrderItem.field.taxPercent', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'tax percent', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrderItem.field.taxPercent' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单项-税率', 'erp.saleOrderItem.field.taxPercent', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '税率', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 45. 税额
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOrderItem.field.taxPrice';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单项-税额', 'erp.saleOrderItem.field.taxPrice', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrderItem.field.taxPrice' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单项-税额', 'erp.saleOrderItem.field.taxPrice', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'tax price', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrderItem.field.taxPrice' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单项-税额', 'erp.saleOrderItem.field.taxPrice', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '税额', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 46. 备注
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOrderItem.field.remark';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单项-备注', 'erp.saleOrderItem.field.remark', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrderItem.field.remark' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单项-备注', 'erp.saleOrderItem.field.remark', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'remark', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrderItem.field.remark' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单项-备注', 'erp.saleOrderItem.field.remark', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '备注', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 47. 销售出库数量
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOrderItem.field.outCount';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单项-销售出库数量', 'erp.saleOrderItem.field.outCount', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrderItem.field.outCount' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单项-销售出库数量', 'erp.saleOrderItem.field.outCount', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'sale out count', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrderItem.field.outCount' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单项-销售出库数量', 'erp.saleOrderItem.field.outCount', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '销售出库数量', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 48. 销售退货数量
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOrderItem.field.returnCount';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单项-销售退货数量', 'erp.saleOrderItem.field.returnCount', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrderItem.field.returnCount' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单项-销售退货数量', 'erp.saleOrderItem.field.returnCount', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'sale return count', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrderItem.field.returnCount' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单项-销售退货数量', 'erp.saleOrderItem.field.returnCount', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '销售退货数量', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 49. 产品名称
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOrderItem.field.productName';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单项-产品名称', 'erp.saleOrderItem.field.productName', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrderItem.field.productName' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单项-产品名称', 'erp.saleOrderItem.field.productName', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'product name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrderItem.field.productName' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单项-产品名称', 'erp.saleOrderItem.field.productName', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '产品名称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 50. 产品条码
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOrderItem.field.productBarCode';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单项-产品条码', 'erp.saleOrderItem.field.productBarCode', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrderItem.field.productBarCode' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单项-产品条码', 'erp.saleOrderItem.field.productBarCode', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'product bar code', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrderItem.field.productBarCode' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单项-产品条码', 'erp.saleOrderItem.field.productBarCode', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '产品条码', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 51. 产品单位名称
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOrderItem.field.productUnitName';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单项-产品单位名称', 'erp.saleOrderItem.field.productUnitName', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrderItem.field.productUnitName' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单项-产品单位名称', 'erp.saleOrderItem.field.productUnitName', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'product unit name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrderItem.field.productUnitName' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单项-产品单位名称', 'erp.saleOrderItem.field.productUnitName', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '产品单位名称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 52. 库存数量
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOrderItem.field.stockCount';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单项-库存数量', 'erp.saleOrderItem.field.stockCount', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrderItem.field.stockCount' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单项-库存数量', 'erp.saleOrderItem.field.stockCount', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'stock count', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrderItem.field.stockCount' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单项-库存数量', 'erp.saleOrderItem.field.stockCount', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '库存数量', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- ErpSaleOutDO (saleOut) - 销售出库
-- =============================================

-- 53. 编号
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOut.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库-编号', 'erp.saleOut.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOut.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库-编号', 'erp.saleOut.field.id', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOut.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库-编号', 'erp.saleOut.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 54. 出库单编号
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOut.field.no';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库-出库单编号', 'erp.saleOut.field.no', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOut.field.no' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库-出库单编号', 'erp.saleOut.field.no', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'sale out no', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOut.field.no' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库-出库单编号', 'erp.saleOut.field.no', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '出库单编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 55. 出库状态
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOut.field.status';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库-出库状态', 'erp.saleOut.field.status', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOut.field.status' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库-出库状态', 'erp.saleOut.field.status', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'out status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOut.field.status' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库-出库状态', 'erp.saleOut.field.status', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '出库状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 56. 客户编号
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOut.field.customerId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库-客户编号', 'erp.saleOut.field.customerId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOut.field.customerId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库-客户编号', 'erp.saleOut.field.customerId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'customer id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOut.field.customerId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库-客户编号', 'erp.saleOut.field.customerId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '客户编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 57. 客户名称
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOut.field.customerName';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库-客户名称', 'erp.saleOut.field.customerName', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOut.field.customerName' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库-客户名称', 'erp.saleOut.field.customerName', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'customer name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOut.field.customerName' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库-客户名称', 'erp.saleOut.field.customerName', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '客户名称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 58. 结算账户编号
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOut.field.accountId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库-结算账户编号', 'erp.saleOut.field.accountId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOut.field.accountId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库-结算账户编号', 'erp.saleOut.field.accountId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'account id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOut.field.accountId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库-结算账户编号', 'erp.saleOut.field.accountId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '结算账户编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 59. 出库员编号
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOut.field.saleUserId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库-出库员编号', 'erp.saleOut.field.saleUserId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOut.field.saleUserId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库-出库员编号', 'erp.saleOut.field.saleUserId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'sale user id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOut.field.saleUserId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库-出库员编号', 'erp.saleOut.field.saleUserId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '出库员编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 60. 出库时间
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOut.field.outTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库-出库时间', 'erp.saleOut.field.outTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOut.field.outTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库-出库时间', 'erp.saleOut.field.outTime', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'out time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOut.field.outTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库-出库时间', 'erp.saleOut.field.outTime', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '出库时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 61. 销售订单编号
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOut.field.orderId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库-销售订单编号', 'erp.saleOut.field.orderId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOut.field.orderId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库-销售订单编号', 'erp.saleOut.field.orderId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'order id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOut.field.orderId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库-销售订单编号', 'erp.saleOut.field.orderId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '销售订单编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 62. 销售订单号
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOut.field.orderNo';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库-销售订单号', 'erp.saleOut.field.orderNo', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOut.field.orderNo' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库-销售订单号', 'erp.saleOut.field.orderNo', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'order no', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOut.field.orderNo' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库-销售订单号', 'erp.saleOut.field.orderNo', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '销售订单号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 63. 合计数量
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOut.field.totalCount';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库-合计数量', 'erp.saleOut.field.totalCount', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOut.field.totalCount' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库-合计数量', 'erp.saleOut.field.totalCount', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'total count', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOut.field.totalCount' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库-合计数量', 'erp.saleOut.field.totalCount', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '合计数量', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 64. 最终合计价格
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOut.field.totalPrice';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库-最终合计价格', 'erp.saleOut.field.totalPrice', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOut.field.totalPrice' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库-最终合计价格', 'erp.saleOut.field.totalPrice', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'total price', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOut.field.totalPrice' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库-最终合计价格', 'erp.saleOut.field.totalPrice', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '最终合计价格', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 65. 已收款金额
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOut.field.receiptPrice';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库-已收款金额', 'erp.saleOut.field.receiptPrice', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOut.field.receiptPrice' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库-已收款金额', 'erp.saleOut.field.receiptPrice', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'receipt price', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOut.field.receiptPrice' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库-已收款金额', 'erp.saleOut.field.receiptPrice', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '已收款金额', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 66. 合计产品价格
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOut.field.totalProductPrice';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库-合计产品价格', 'erp.saleOut.field.totalProductPrice', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOut.field.totalProductPrice' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库-合计产品价格', 'erp.saleOut.field.totalProductPrice', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'total product price', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOut.field.totalProductPrice' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库-合计产品价格', 'erp.saleOut.field.totalProductPrice', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '合计产品价格', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 67. 合计税额
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOut.field.totalTaxPrice';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库-合计税额', 'erp.saleOut.field.totalTaxPrice', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOut.field.totalTaxPrice' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库-合计税额', 'erp.saleOut.field.totalTaxPrice', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'total tax price', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOut.field.totalTaxPrice' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库-合计税额', 'erp.saleOut.field.totalTaxPrice', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '合计税额', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 68. 优惠率
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOut.field.discountPercent';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库-优惠率', 'erp.saleOut.field.discountPercent', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOut.field.discountPercent' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库-优惠率', 'erp.saleOut.field.discountPercent', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'discount percent', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOut.field.discountPercent' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库-优惠率', 'erp.saleOut.field.discountPercent', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '优惠率', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 69. 优惠金额
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOut.field.discountPrice';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库-优惠金额', 'erp.saleOut.field.discountPrice', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOut.field.discountPrice' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库-优惠金额', 'erp.saleOut.field.discountPrice', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'discount price', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOut.field.discountPrice' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库-优惠金额', 'erp.saleOut.field.discountPrice', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '优惠金额', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 70. 其它金额
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOut.field.otherPrice';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库-其它金额', 'erp.saleOut.field.otherPrice', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOut.field.otherPrice' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库-其它金额', 'erp.saleOut.field.otherPrice', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'other price', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOut.field.otherPrice' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库-其它金额', 'erp.saleOut.field.otherPrice', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '其它金额', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 71. 附件地址
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOut.field.fileUrl';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库-附件地址', 'erp.saleOut.field.fileUrl', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOut.field.fileUrl' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库-附件地址', 'erp.saleOut.field.fileUrl', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'file url', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOut.field.fileUrl' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库-附件地址', 'erp.saleOut.field.fileUrl', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '附件地址', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 72. 备注
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOut.field.remark';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库-备注', 'erp.saleOut.field.remark', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOut.field.remark' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库-备注', 'erp.saleOut.field.remark', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'remark', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOut.field.remark' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库-备注', 'erp.saleOut.field.remark', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '备注', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 73. 创建时间
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOut.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库-创建时间', 'erp.saleOut.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOut.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库-创建时间', 'erp.saleOut.field.createTime', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOut.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库-创建时间', 'erp.saleOut.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '创建时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 74. 产品信息
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOut.field.productNames';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库-产品信息', 'erp.saleOut.field.productNames', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOut.field.productNames' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库-产品信息', 'erp.saleOut.field.productNames', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'product names', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOut.field.productNames' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库-产品信息', 'erp.saleOut.field.productNames', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '产品信息', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- ErpSaleOutItemDO (saleOutItem) - 销售出库项
-- =============================================

-- 75. 出库项编号
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOutItem.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库项-出库项编号', 'erp.saleOutItem.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOutItem.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库项-出库项编号', 'erp.saleOutItem.field.id', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'out item id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOutItem.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库项-出库项编号', 'erp.saleOutItem.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '出库项编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 76. 销售订单项编号
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOutItem.field.orderItemId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库项-销售订单项编号', 'erp.saleOutItem.field.orderItemId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOutItem.field.orderItemId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库项-销售订单项编号', 'erp.saleOutItem.field.orderItemId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'order item id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOutItem.field.orderItemId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库项-销售订单项编号', 'erp.saleOutItem.field.orderItemId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '销售订单项编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 77. 仓库编号
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOutItem.field.warehouseId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库项-仓库编号', 'erp.saleOutItem.field.warehouseId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOutItem.field.warehouseId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库项-仓库编号', 'erp.saleOutItem.field.warehouseId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'warehouse id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOutItem.field.warehouseId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库项-仓库编号', 'erp.saleOutItem.field.warehouseId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '仓库编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 78. 产品编号
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOutItem.field.productId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库项-产品编号', 'erp.saleOutItem.field.productId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOutItem.field.productId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库项-产品编号', 'erp.saleOutItem.field.productId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'product id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOutItem.field.productId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库项-产品编号', 'erp.saleOutItem.field.productId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '产品编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 79. 产品单位
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOutItem.field.productUnitId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库项-产品单位', 'erp.saleOutItem.field.productUnitId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOutItem.field.productUnitId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库项-产品单位', 'erp.saleOutItem.field.productUnitId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'product unit id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOutItem.field.productUnitId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库项-产品单位', 'erp.saleOutItem.field.productUnitId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '产品单位', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 80. 产品单价
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOutItem.field.productPrice';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库项-产品单价', 'erp.saleOutItem.field.productPrice', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOutItem.field.productPrice' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库项-产品单价', 'erp.saleOutItem.field.productPrice', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'product price', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOutItem.field.productPrice' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库项-产品单价', 'erp.saleOutItem.field.productPrice', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '产品单价', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 81. 产品数量
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOutItem.field.count';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库项-产品数量', 'erp.saleOutItem.field.count', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOutItem.field.count' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库项-产品数量', 'erp.saleOutItem.field.count', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'count', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOutItem.field.count' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库项-产品数量', 'erp.saleOutItem.field.count', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '产品数量', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 82. 税率
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOutItem.field.taxPercent';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库项-税率', 'erp.saleOutItem.field.taxPercent', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOutItem.field.taxPercent' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库项-税率', 'erp.saleOutItem.field.taxPercent', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'tax percent', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOutItem.field.taxPercent' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库项-税率', 'erp.saleOutItem.field.taxPercent', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '税率', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 83. 税额
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOutItem.field.taxPrice';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库项-税额', 'erp.saleOutItem.field.taxPrice', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOutItem.field.taxPrice' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库项-税额', 'erp.saleOutItem.field.taxPrice', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'tax price', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOutItem.field.taxPrice' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库项-税额', 'erp.saleOutItem.field.taxPrice', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '税额', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 84. 备注
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOutItem.field.remark';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库项-备注', 'erp.saleOutItem.field.remark', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOutItem.field.remark' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库项-备注', 'erp.saleOutItem.field.remark', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'remark', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOutItem.field.remark' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库项-备注', 'erp.saleOutItem.field.remark', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '备注', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 85. 产品名称
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOutItem.field.productName';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库项-产品名称', 'erp.saleOutItem.field.productName', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOutItem.field.productName' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库项-产品名称', 'erp.saleOutItem.field.productName', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'product name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOutItem.field.productName' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库项-产品名称', 'erp.saleOutItem.field.productName', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '产品名称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 86. 产品条码
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOutItem.field.productBarCode';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库项-产品条码', 'erp.saleOutItem.field.productBarCode', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOutItem.field.productBarCode' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库项-产品条码', 'erp.saleOutItem.field.productBarCode', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'product bar code', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOutItem.field.productBarCode' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库项-产品条码', 'erp.saleOutItem.field.productBarCode', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '产品条码', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 87. 产品单位名称
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOutItem.field.productUnitName';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库项-产品单位名称', 'erp.saleOutItem.field.productUnitName', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOutItem.field.productUnitName' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库项-产品单位名称', 'erp.saleOutItem.field.productUnitName', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'product unit name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOutItem.field.productUnitName' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库项-产品单位名称', 'erp.saleOutItem.field.productUnitName', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '产品单位名称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 88. 库存数量
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOutItem.field.stockCount';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库项-库存数量', 'erp.saleOutItem.field.stockCount', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOutItem.field.stockCount' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库项-库存数量', 'erp.saleOutItem.field.stockCount', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'stock count', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOutItem.field.stockCount' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库项-库存数量', 'erp.saleOutItem.field.stockCount', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '库存数量', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- ErpSaleReturnDO (saleReturn) - 销售退货
-- =============================================

-- 89. 编号
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleReturn.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货-编号', 'erp.saleReturn.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturn.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货-编号', 'erp.saleReturn.field.id', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturn.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货-编号', 'erp.saleReturn.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 90. 退货单编号
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleReturn.field.no';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货-退货单编号', 'erp.saleReturn.field.no', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturn.field.no' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货-退货单编号', 'erp.saleReturn.field.no', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'sale return no', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturn.field.no' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货-退货单编号', 'erp.saleReturn.field.no', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '退货单编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 91. 退货状态
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleReturn.field.status';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货-退货状态', 'erp.saleReturn.field.status', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturn.field.status' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货-退货状态', 'erp.saleReturn.field.status', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'return status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturn.field.status' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货-退货状态', 'erp.saleReturn.field.status', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '退货状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 92. 客户编号
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleReturn.field.customerId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货-客户编号', 'erp.saleReturn.field.customerId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturn.field.customerId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货-客户编号', 'erp.saleReturn.field.customerId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'customer id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturn.field.customerId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货-客户编号', 'erp.saleReturn.field.customerId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '客户编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 93. 客户名称
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleReturn.field.customerName';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货-客户名称', 'erp.saleReturn.field.customerName', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturn.field.customerName' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货-客户名称', 'erp.saleReturn.field.customerName', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'customer name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturn.field.customerName' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货-客户名称', 'erp.saleReturn.field.customerName', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '客户名称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 94. 结算账户编号
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleReturn.field.accountId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货-结算账户编号', 'erp.saleReturn.field.accountId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturn.field.accountId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货-结算账户编号', 'erp.saleReturn.field.accountId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'account id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturn.field.accountId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货-结算账户编号', 'erp.saleReturn.field.accountId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '结算账户编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 95. 退货员编号
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleReturn.field.saleUserId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货-退货员编号', 'erp.saleReturn.field.saleUserId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturn.field.saleUserId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货-退货员编号', 'erp.saleReturn.field.saleUserId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'sale user id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturn.field.saleUserId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货-退货员编号', 'erp.saleReturn.field.saleUserId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '退货员编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 96. 退货时间
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleReturn.field.returnTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货-退货时间', 'erp.saleReturn.field.returnTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturn.field.returnTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货-退货时间', 'erp.saleReturn.field.returnTime', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'return time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturn.field.returnTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货-退货时间', 'erp.saleReturn.field.returnTime', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '退货时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 97. 销售订单编号
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleReturn.field.orderId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货-销售订单编号', 'erp.saleReturn.field.orderId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturn.field.orderId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货-销售订单编号', 'erp.saleReturn.field.orderId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'order id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturn.field.orderId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货-销售订单编号', 'erp.saleReturn.field.orderId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '销售订单编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 98. 销售订单号
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleReturn.field.orderNo';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货-销售订单号', 'erp.saleReturn.field.orderNo', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturn.field.orderNo' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货-销售订单号', 'erp.saleReturn.field.orderNo', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'order no', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturn.field.orderNo' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货-销售订单号', 'erp.saleReturn.field.orderNo', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '销售订单号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 99. 合计数量
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleReturn.field.totalCount';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货-合计数量', 'erp.saleReturn.field.totalCount', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturn.field.totalCount' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货-合计数量', 'erp.saleReturn.field.totalCount', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'total count', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturn.field.totalCount' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货-合计数量', 'erp.saleReturn.field.totalCount', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '合计数量', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 100. 最终合计价格
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleReturn.field.totalPrice';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货-最终合计价格', 'erp.saleReturn.field.totalPrice', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturn.field.totalPrice' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货-最终合计价格', 'erp.saleReturn.field.totalPrice', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'total price', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturn.field.totalPrice' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货-最终合计价格', 'erp.saleReturn.field.totalPrice', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '最终合计价格', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 101. 已退款金额
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleReturn.field.refundPrice';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货-已退款金额', 'erp.saleReturn.field.refundPrice', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturn.field.refundPrice' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货-已退款金额', 'erp.saleReturn.field.refundPrice', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'refund price', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturn.field.refundPrice' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货-已退款金额', 'erp.saleReturn.field.refundPrice', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '已退款金额', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 102. 合计产品价格
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleReturn.field.totalProductPrice';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货-合计产品价格', 'erp.saleReturn.field.totalProductPrice', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturn.field.totalProductPrice' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货-合计产品价格', 'erp.saleReturn.field.totalProductPrice', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'total product price', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturn.field.totalProductPrice' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货-合计产品价格', 'erp.saleReturn.field.totalProductPrice', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '合计产品价格', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 103. 合计税额
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleReturn.field.totalTaxPrice';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货-合计税额', 'erp.saleReturn.field.totalTaxPrice', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturn.field.totalTaxPrice' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货-合计税额', 'erp.saleReturn.field.totalTaxPrice', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'total tax price', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturn.field.totalTaxPrice' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货-合计税额', 'erp.saleReturn.field.totalTaxPrice', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '合计税额', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 104. 优惠率
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleReturn.field.discountPercent';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货-优惠率', 'erp.saleReturn.field.discountPercent', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturn.field.discountPercent' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货-优惠率', 'erp.saleReturn.field.discountPercent', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'discount percent', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturn.field.discountPercent' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货-优惠率', 'erp.saleReturn.field.discountPercent', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '优惠率', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 105. 优惠金额
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleReturn.field.discountPrice';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货-优惠金额', 'erp.saleReturn.field.discountPrice', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturn.field.discountPrice' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货-优惠金额', 'erp.saleReturn.field.discountPrice', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'discount price', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturn.field.discountPrice' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货-优惠金额', 'erp.saleReturn.field.discountPrice', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '优惠金额', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 106. 其它金额
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleReturn.field.otherPrice';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货-其它金额', 'erp.saleReturn.field.otherPrice', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturn.field.otherPrice' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货-其它金额', 'erp.saleReturn.field.otherPrice', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'other price', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturn.field.otherPrice' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货-其它金额', 'erp.saleReturn.field.otherPrice', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '其它金额', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 107. 附件地址
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleReturn.field.fileUrl';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货-附件地址', 'erp.saleReturn.field.fileUrl', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturn.field.fileUrl' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货-附件地址', 'erp.saleReturn.field.fileUrl', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'file url', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturn.field.fileUrl' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货-附件地址', 'erp.saleReturn.field.fileUrl', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '附件地址', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 108. 备注
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleReturn.field.remark';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货-备注', 'erp.saleReturn.field.remark', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturn.field.remark' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货-备注', 'erp.saleReturn.field.remark', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'remark', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturn.field.remark' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货-备注', 'erp.saleReturn.field.remark', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '备注', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 109. 创建时间
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleReturn.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货-创建时间', 'erp.saleReturn.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturn.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货-创建时间', 'erp.saleReturn.field.createTime', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturn.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货-创建时间', 'erp.saleReturn.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '创建时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 110. 产品信息
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleReturn.field.productNames';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货-产品信息', 'erp.saleReturn.field.productNames', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturn.field.productNames' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货-产品信息', 'erp.saleReturn.field.productNames', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'product names', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturn.field.productNames' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货-产品信息', 'erp.saleReturn.field.productNames', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '产品信息', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- ErpSaleReturnItemDO (saleReturnItem) - 销售退货项
-- =============================================

-- 111. 退货项编号
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleReturnItem.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货项-退货项编号', 'erp.saleReturnItem.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturnItem.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货项-退货项编号', 'erp.saleReturnItem.field.id', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'return item id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturnItem.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货项-退货项编号', 'erp.saleReturnItem.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '退货项编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 112. 销售订单项编号
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleReturnItem.field.orderItemId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货项-销售订单项编号', 'erp.saleReturnItem.field.orderItemId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturnItem.field.orderItemId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货项-销售订单项编号', 'erp.saleReturnItem.field.orderItemId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'order item id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturnItem.field.orderItemId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货项-销售订单项编号', 'erp.saleReturnItem.field.orderItemId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '销售订单项编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 113. 仓库编号
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleReturnItem.field.warehouseId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货项-仓库编号', 'erp.saleReturnItem.field.warehouseId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturnItem.field.warehouseId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货项-仓库编号', 'erp.saleReturnItem.field.warehouseId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'warehouse id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturnItem.field.warehouseId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货项-仓库编号', 'erp.saleReturnItem.field.warehouseId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '仓库编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 114. 产品编号
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleReturnItem.field.productId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货项-产品编号', 'erp.saleReturnItem.field.productId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturnItem.field.productId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货项-产品编号', 'erp.saleReturnItem.field.productId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'product id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturnItem.field.productId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货项-产品编号', 'erp.saleReturnItem.field.productId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '产品编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 115. 产品单位
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleReturnItem.field.productUnitId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货项-产品单位', 'erp.saleReturnItem.field.productUnitId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturnItem.field.productUnitId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货项-产品单位', 'erp.saleReturnItem.field.productUnitId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'product unit id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturnItem.field.productUnitId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货项-产品单位', 'erp.saleReturnItem.field.productUnitId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '产品单位', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 116. 产品单价
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleReturnItem.field.productPrice';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货项-产品单价', 'erp.saleReturnItem.field.productPrice', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturnItem.field.productPrice' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货项-产品单价', 'erp.saleReturnItem.field.productPrice', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'product price', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturnItem.field.productPrice' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货项-产品单价', 'erp.saleReturnItem.field.productPrice', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '产品单价', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 117. 产品数量
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleReturnItem.field.count';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货项-产品数量', 'erp.saleReturnItem.field.count', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturnItem.field.count' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货项-产品数量', 'erp.saleReturnItem.field.count', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'count', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturnItem.field.count' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货项-产品数量', 'erp.saleReturnItem.field.count', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '产品数量', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 118. 税率
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleReturnItem.field.taxPercent';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货项-税率', 'erp.saleReturnItem.field.taxPercent', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturnItem.field.taxPercent' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货项-税率', 'erp.saleReturnItem.field.taxPercent', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'tax percent', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturnItem.field.taxPercent' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货项-税率', 'erp.saleReturnItem.field.taxPercent', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '税率', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 119. 税额
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleReturnItem.field.taxPrice';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货项-税额', 'erp.saleReturnItem.field.taxPrice', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturnItem.field.taxPrice' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货项-税额', 'erp.saleReturnItem.field.taxPrice', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'tax price', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturnItem.field.taxPrice' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货项-税额', 'erp.saleReturnItem.field.taxPrice', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '税额', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 120. 备注
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleReturnItem.field.remark';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货项-备注', 'erp.saleReturnItem.field.remark', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturnItem.field.remark' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货项-备注', 'erp.saleReturnItem.field.remark', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'remark', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturnItem.field.remark' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货项-备注', 'erp.saleReturnItem.field.remark', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '备注', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 121. 产品名称
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleReturnItem.field.productName';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货项-产品名称', 'erp.saleReturnItem.field.productName', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturnItem.field.productName' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货项-产品名称', 'erp.saleReturnItem.field.productName', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'product name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturnItem.field.productName' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货项-产品名称', 'erp.saleReturnItem.field.productName', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '产品名称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 122. 产品条码
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleReturnItem.field.productBarCode';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货项-产品条码', 'erp.saleReturnItem.field.productBarCode', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturnItem.field.productBarCode' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货项-产品条码', 'erp.saleReturnItem.field.productBarCode', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'product bar code', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturnItem.field.productBarCode' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货项-产品条码', 'erp.saleReturnItem.field.productBarCode', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '产品条码', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 123. 产品单位名称
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleReturnItem.field.productUnitName';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货项-产品单位名称', 'erp.saleReturnItem.field.productUnitName', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturnItem.field.productUnitName' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货项-产品单位名称', 'erp.saleReturnItem.field.productUnitName', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'product unit name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturnItem.field.productUnitName' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货项-产品单位名称', 'erp.saleReturnItem.field.productUnitName', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '产品单位名称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 124. 库存数量
DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleReturnItem.field.stockCount';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货项-库存数量', 'erp.saleReturnItem.field.stockCount', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturnItem.field.stockCount' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货项-库存数量', 'erp.saleReturnItem.field.stockCount', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'stock count', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturnItem.field.stockCount' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货项-库存数量', 'erp.saleReturnItem.field.stockCount', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '库存数量', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
