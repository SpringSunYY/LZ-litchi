-- =============================================
-- erp purchase 字段国际化 SQL
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
-- ErpSupplierDO (supplier) - 供应商
-- =============================================

-- 1. 供应商编号
DELETE FROM infra_i18n_key WHERE message_key = 'erp.supplier.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('供应商-供应商编号', 'erp.supplier.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.supplier.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('供应商-供应商编号', 'erp.supplier.field.id', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'supplier id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.supplier.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('供应商-供应商编号', 'erp.supplier.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '供应商编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. 供应商名称
DELETE FROM infra_i18n_key WHERE message_key = 'erp.supplier.field.name';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('供应商-供应商名称', 'erp.supplier.field.name', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.supplier.field.name' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('供应商-供应商名称', 'erp.supplier.field.name', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'supplier name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.supplier.field.name' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('供应商-供应商名称', 'erp.supplier.field.name', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '供应商名称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. 联系人
DELETE FROM infra_i18n_key WHERE message_key = 'erp.supplier.field.contact';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('供应商-联系人', 'erp.supplier.field.contact', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.supplier.field.contact' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('供应商-联系人', 'erp.supplier.field.contact', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'contact', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.supplier.field.contact' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('供应商-联系人', 'erp.supplier.field.contact', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '联系人', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. 手机号码
DELETE FROM infra_i18n_key WHERE message_key = 'erp.supplier.field.mobile';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('供应商-手机号码', 'erp.supplier.field.mobile', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.supplier.field.mobile' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('供应商-手机号码', 'erp.supplier.field.mobile', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'mobile', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.supplier.field.mobile' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('供应商-手机号码', 'erp.supplier.field.mobile', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '手机号码', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. 联系电话
DELETE FROM infra_i18n_key WHERE message_key = 'erp.supplier.field.telephone';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('供应商-联系电话', 'erp.supplier.field.telephone', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.supplier.field.telephone' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('供应商-联系电话', 'erp.supplier.field.telephone', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'telephone', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.supplier.field.telephone' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('供应商-联系电话', 'erp.supplier.field.telephone', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '联系电话', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 6. 电子邮箱
DELETE FROM infra_i18n_key WHERE message_key = 'erp.supplier.field.email';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('供应商-电子邮箱', 'erp.supplier.field.email', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.supplier.field.email' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('供应商-电子邮箱', 'erp.supplier.field.email', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'email', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.supplier.field.email' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('供应商-电子邮箱', 'erp.supplier.field.email', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '电子邮箱', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 7. 传真
DELETE FROM infra_i18n_key WHERE message_key = 'erp.supplier.field.fax';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('供应商-传真', 'erp.supplier.field.fax', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.supplier.field.fax' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('供应商-传真', 'erp.supplier.field.fax', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'fax', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.supplier.field.fax' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('供应商-传真', 'erp.supplier.field.fax', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '传真', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 8. 备注
DELETE FROM infra_i18n_key WHERE message_key = 'erp.supplier.field.remark';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('供应商-备注', 'erp.supplier.field.remark', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.supplier.field.remark' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('供应商-备注', 'erp.supplier.field.remark', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'remark', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.supplier.field.remark' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('供应商-备注', 'erp.supplier.field.remark', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '备注', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 9. 开启状态
DELETE FROM infra_i18n_key WHERE message_key = 'erp.supplier.field.status';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('供应商-开启状态', 'erp.supplier.field.status', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.supplier.field.status' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('供应商-开启状态', 'erp.supplier.field.status', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.supplier.field.status' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('供应商-开启状态', 'erp.supplier.field.status', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '开启状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 10. 排序
DELETE FROM infra_i18n_key WHERE message_key = 'erp.supplier.field.sort';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('供应商-排序', 'erp.supplier.field.sort', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.supplier.field.sort' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('供应商-排序', 'erp.supplier.field.sort', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'sort', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.supplier.field.sort' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('供应商-排序', 'erp.supplier.field.sort', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '排序', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 11. 纳税人识别号
DELETE FROM infra_i18n_key WHERE message_key = 'erp.supplier.field.taxNo';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('供应商-纳税人识别号', 'erp.supplier.field.taxNo', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.supplier.field.taxNo' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('供应商-纳税人识别号', 'erp.supplier.field.taxNo', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'tax number', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.supplier.field.taxNo' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('供应商-纳税人识别号', 'erp.supplier.field.taxNo', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '纳税人识别号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 12. 税率
DELETE FROM infra_i18n_key WHERE message_key = 'erp.supplier.field.taxPercent';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('供应商-税率', 'erp.supplier.field.taxPercent', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.supplier.field.taxPercent' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('供应商-税率', 'erp.supplier.field.taxPercent', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'tax rate', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.supplier.field.taxPercent' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('供应商-税率', 'erp.supplier.field.taxPercent', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '税率', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 13. 开户行
DELETE FROM infra_i18n_key WHERE message_key = 'erp.supplier.field.bankName';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('供应商-开户行', 'erp.supplier.field.bankName', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.supplier.field.bankName' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('供应商-开户行', 'erp.supplier.field.bankName', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'bank name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.supplier.field.bankName' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('供应商-开户行', 'erp.supplier.field.bankName', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '开户行', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 14. 开户账号
DELETE FROM infra_i18n_key WHERE message_key = 'erp.supplier.field.bankAccount';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('供应商-开户账号', 'erp.supplier.field.bankAccount', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.supplier.field.bankAccount' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('供应商-开户账号', 'erp.supplier.field.bankAccount', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'bank account', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.supplier.field.bankAccount' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('供应商-开户账号', 'erp.supplier.field.bankAccount', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '开户账号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 15. 开户地址
DELETE FROM infra_i18n_key WHERE message_key = 'erp.supplier.field.bankAddress';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('供应商-开户地址', 'erp.supplier.field.bankAddress', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.supplier.field.bankAddress' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('供应商-开户地址', 'erp.supplier.field.bankAddress', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'bank address', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.supplier.field.bankAddress' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('供应商-开户地址', 'erp.supplier.field.bankAddress', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '开户地址', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 16. 创建时间
DELETE FROM infra_i18n_key WHERE message_key = 'erp.supplier.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('供应商-创建时间', 'erp.supplier.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.supplier.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('供应商-创建时间', 'erp.supplier.field.createTime', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.supplier.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('供应商-创建时间', 'erp.supplier.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '创建时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- ErpPurchaseOrderDO (purchaseOrder) - 采购订单
-- =============================================

-- 16. 采购订单编号
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseOrder.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-采购订单编号', 'erp.purchaseOrder.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrder.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-采购订单编号', 'erp.purchaseOrder.field.id', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'purchase order id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrder.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-采购订单编号', 'erp.purchaseOrder.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '采购订单编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 17. 采购订单号
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseOrder.field.no';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-采购订单号', 'erp.purchaseOrder.field.no', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrder.field.no' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-采购订单号', 'erp.purchaseOrder.field.no', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'purchase order no', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrder.field.no' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-采购订单号', 'erp.purchaseOrder.field.no', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '采购订单号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 18. 采购状态
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseOrder.field.status';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-采购状态', 'erp.purchaseOrder.field.status', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrder.field.status' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-采购状态', 'erp.purchaseOrder.field.status', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'purchase status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrder.field.status' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-采购状态', 'erp.purchaseOrder.field.status', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '采购状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 19. 供应商编号
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseOrder.field.supplierId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-供应商编号', 'erp.purchaseOrder.field.supplierId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrder.field.supplierId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-供应商编号', 'erp.purchaseOrder.field.supplierId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'supplier id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrder.field.supplierId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-供应商编号', 'erp.purchaseOrder.field.supplierId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '供应商编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 19a. 供应商名称
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseOrder.field.supplierName';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-供应商名称', 'erp.purchaseOrder.field.supplierName', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrder.field.supplierName' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-供应商名称', 'erp.purchaseOrder.field.supplierName', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'supplier name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrder.field.supplierName' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-供应商名称', 'erp.purchaseOrder.field.supplierName', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '供应商名称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 20. 结算账户编号
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseOrder.field.accountId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-结算账户编号', 'erp.purchaseOrder.field.accountId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrder.field.accountId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-结算账户编号', 'erp.purchaseOrder.field.accountId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'account id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrder.field.accountId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-结算账户编号', 'erp.purchaseOrder.field.accountId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '结算账户编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 21. 下单时间
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseOrder.field.orderTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-下单时间', 'erp.purchaseOrder.field.orderTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrder.field.orderTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-下单时间', 'erp.purchaseOrder.field.orderTime', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'order time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrder.field.orderTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-下单时间', 'erp.purchaseOrder.field.orderTime', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '下单时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 22. 合计数量
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseOrder.field.totalCount';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-合计数量', 'erp.purchaseOrder.field.totalCount', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrder.field.totalCount' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-合计数量', 'erp.purchaseOrder.field.totalCount', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'total count', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrder.field.totalCount' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-合计数量', 'erp.purchaseOrder.field.totalCount', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '合计数量', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 23. 最终合计价格
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseOrder.field.totalPrice';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-最终合计价格', 'erp.purchaseOrder.field.totalPrice', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrder.field.totalPrice' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-最终合计价格', 'erp.purchaseOrder.field.totalPrice', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'total price', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrder.field.totalPrice' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-最终合计价格', 'erp.purchaseOrder.field.totalPrice', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '最终合计价格', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 24. 合计产品价格
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseOrder.field.totalProductPrice';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-合计产品价格', 'erp.purchaseOrder.field.totalProductPrice', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrder.field.totalProductPrice' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-合计产品价格', 'erp.purchaseOrder.field.totalProductPrice', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'total product price', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrder.field.totalProductPrice' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-合计产品价格', 'erp.purchaseOrder.field.totalProductPrice', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '合计产品价格', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 25. 合计税额
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseOrder.field.totalTaxPrice';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-合计税额', 'erp.purchaseOrder.field.totalTaxPrice', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrder.field.totalTaxPrice' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-合计税额', 'erp.purchaseOrder.field.totalTaxPrice', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'total tax price', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrder.field.totalTaxPrice' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-合计税额', 'erp.purchaseOrder.field.totalTaxPrice', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '合计税额', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 26. 优惠率
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseOrder.field.discountPercent';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-优惠率', 'erp.purchaseOrder.field.discountPercent', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrder.field.discountPercent' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-优惠率', 'erp.purchaseOrder.field.discountPercent', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'discount percent', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrder.field.discountPercent' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-优惠率', 'erp.purchaseOrder.field.discountPercent', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '优惠率', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 27. 优惠金额
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseOrder.field.discountPrice';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-优惠金额', 'erp.purchaseOrder.field.discountPrice', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrder.field.discountPrice' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-优惠金额', 'erp.purchaseOrder.field.discountPrice', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'discount price', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrder.field.discountPrice' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-优惠金额', 'erp.purchaseOrder.field.discountPrice', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '优惠金额', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 28. 定金金额
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseOrder.field.depositPrice';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-定金金额', 'erp.purchaseOrder.field.depositPrice', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrder.field.depositPrice' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-定金金额', 'erp.purchaseOrder.field.depositPrice', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'deposit price', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrder.field.depositPrice' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-定金金额', 'erp.purchaseOrder.field.depositPrice', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '定金金额', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 29. 附件地址
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseOrder.field.fileUrl';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-附件地址', 'erp.purchaseOrder.field.fileUrl', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrder.field.fileUrl' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-附件地址', 'erp.purchaseOrder.field.fileUrl', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'file url', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrder.field.fileUrl' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-附件地址', 'erp.purchaseOrder.field.fileUrl', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '附件地址', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 30. 备注
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseOrder.field.remark';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-备注', 'erp.purchaseOrder.field.remark', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrder.field.remark' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-备注', 'erp.purchaseOrder.field.remark', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'remark', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrder.field.remark' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-备注', 'erp.purchaseOrder.field.remark', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '备注', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 31. 采购入库数量
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseOrder.field.inCount';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-采购入库数量', 'erp.purchaseOrder.field.inCount', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrder.field.inCount' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-采购入库数量', 'erp.purchaseOrder.field.inCount', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'in count', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrder.field.inCount' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-采购入库数量', 'erp.purchaseOrder.field.inCount', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '采购入库数量', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 32. 采购退货数量
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseOrder.field.returnCount';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-采购退货数量', 'erp.purchaseOrder.field.returnCount', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrder.field.returnCount' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-采购退货数量', 'erp.purchaseOrder.field.returnCount', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'return count', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrder.field.returnCount' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-采购退货数量', 'erp.purchaseOrder.field.returnCount', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '采购退货数量', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- ErpPurchaseOrderItemDO (purchaseOrderItem) - 采购订单项
-- =============================================

-- 33. 订单项编号
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseOrderItem.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单项-订单项编号', 'erp.purchaseOrderItem.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrderItem.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单项-订单项编号', 'erp.purchaseOrderItem.field.id', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'order item id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrderItem.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单项-订单项编号', 'erp.purchaseOrderItem.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '订单项编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 34. 采购订单编号
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseOrderItem.field.orderId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单项-采购订单编号', 'erp.purchaseOrderItem.field.orderId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrderItem.field.orderId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单项-采购订单编号', 'erp.purchaseOrderItem.field.orderId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'purchase order id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrderItem.field.orderId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单项-采购订单编号', 'erp.purchaseOrderItem.field.orderId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '采购订单编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 35. 产品编号
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseOrderItem.field.productId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单项-产品编号', 'erp.purchaseOrderItem.field.productId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrderItem.field.productId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单项-产品编号', 'erp.purchaseOrderItem.field.productId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'product id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrderItem.field.productId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单项-产品编号', 'erp.purchaseOrderItem.field.productId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '产品编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 36. 产品单位编号
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseOrderItem.field.productUnitId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单项-产品单位编号', 'erp.purchaseOrderItem.field.productUnitId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrderItem.field.productUnitId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单项-产品单位编号', 'erp.purchaseOrderItem.field.productUnitId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'product unit id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrderItem.field.productUnitId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单项-产品单位编号', 'erp.purchaseOrderItem.field.productUnitId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '产品单位编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 37. 产品单价
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseOrderItem.field.productPrice';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单项-产品单价', 'erp.purchaseOrderItem.field.productPrice', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrderItem.field.productPrice' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单项-产品单价', 'erp.purchaseOrderItem.field.productPrice', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'product price', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrderItem.field.productPrice' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单项-产品单价', 'erp.purchaseOrderItem.field.productPrice', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '产品单价', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 38. 产品数量
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseOrderItem.field.count';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单项-产品数量', 'erp.purchaseOrderItem.field.count', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrderItem.field.count' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单项-产品数量', 'erp.purchaseOrderItem.field.count', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'count', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrderItem.field.count' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单项-产品数量', 'erp.purchaseOrderItem.field.count', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '产品数量', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 39. 总价
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseOrderItem.field.totalPrice';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单项-总价', 'erp.purchaseOrderItem.field.totalPrice', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrderItem.field.totalPrice' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单项-总价', 'erp.purchaseOrderItem.field.totalPrice', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'total price', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrderItem.field.totalPrice' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单项-总价', 'erp.purchaseOrderItem.field.totalPrice', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '总价', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 40. 税率
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseOrderItem.field.taxPercent';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单项-税率', 'erp.purchaseOrderItem.field.taxPercent', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrderItem.field.taxPercent' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单项-税率', 'erp.purchaseOrderItem.field.taxPercent', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'tax percent', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrderItem.field.taxPercent' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单项-税率', 'erp.purchaseOrderItem.field.taxPercent', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '税率', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 41. 税额
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseOrderItem.field.taxPrice';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单项-税额', 'erp.purchaseOrderItem.field.taxPrice', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrderItem.field.taxPrice' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单项-税额', 'erp.purchaseOrderItem.field.taxPrice', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'tax price', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrderItem.field.taxPrice' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单项-税额', 'erp.purchaseOrderItem.field.taxPrice', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '税额', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 42. 备注
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseOrderItem.field.remark';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单项-备注', 'erp.purchaseOrderItem.field.remark', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrderItem.field.remark' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单项-备注', 'erp.purchaseOrderItem.field.remark', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'remark', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrderItem.field.remark' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单项-备注', 'erp.purchaseOrderItem.field.remark', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '备注', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 43. 采购入库数量
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseOrderItem.field.inCount';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单项-采购入库数量', 'erp.purchaseOrderItem.field.inCount', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrderItem.field.inCount' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单项-采购入库数量', 'erp.purchaseOrderItem.field.inCount', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'in count', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrderItem.field.inCount' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单项-采购入库数量', 'erp.purchaseOrderItem.field.inCount', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '采购入库数量', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 44. 采购退货数量
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseOrderItem.field.returnCount';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单项-采购退货数量', 'erp.purchaseOrderItem.field.returnCount', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrderItem.field.returnCount' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单项-采购退货数量', 'erp.purchaseOrderItem.field.returnCount', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'return count', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrderItem.field.returnCount' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单项-采购退货数量', 'erp.purchaseOrderItem.field.returnCount', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '采购退货数量', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- ErpPurchaseInDO (purchaseIn) - 采购入库
-- =============================================

-- 45. 采购入库编号
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseIn.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库-采购入库编号', 'erp.purchaseIn.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseIn.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库-采购入库编号', 'erp.purchaseIn.field.id', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'purchase in id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseIn.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库-采购入库编号', 'erp.purchaseIn.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '采购入库编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 46. 入库单编号
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseIn.field.no';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库-入库单编号', 'erp.purchaseIn.field.no', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseIn.field.no' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库-入库单编号', 'erp.purchaseIn.field.no', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'purchase in no', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseIn.field.no' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库-入库单编号', 'erp.purchaseIn.field.no', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '入库单编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 47. 入库状态
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseIn.field.status';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库-入库状态', 'erp.purchaseIn.field.status', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseIn.field.status' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库-入库状态', 'erp.purchaseIn.field.status', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'in status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseIn.field.status' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库-入库状态', 'erp.purchaseIn.field.status', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '入库状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 48. 供应商编号
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseIn.field.supplierId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库-供应商编号', 'erp.purchaseIn.field.supplierId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseIn.field.supplierId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库-供应商编号', 'erp.purchaseIn.field.supplierId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'supplier id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseIn.field.supplierId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库-供应商编号', 'erp.purchaseIn.field.supplierId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '供应商编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 49. 供应商名称
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseIn.field.supplierName';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库-供应商名称', 'erp.purchaseIn.field.supplierName', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseIn.field.supplierName' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库-供应商名称', 'erp.purchaseIn.field.supplierName', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'supplier name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseIn.field.supplierName' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库-供应商名称', 'erp.purchaseIn.field.supplierName', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '供应商名称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 50. 结算账户编号
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseIn.field.accountId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库-结算账户编号', 'erp.purchaseIn.field.accountId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseIn.field.accountId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库-结算账户编号', 'erp.purchaseIn.field.accountId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'account id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseIn.field.accountId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库-结算账户编号', 'erp.purchaseIn.field.accountId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '结算账户编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 51. 入库时间
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseIn.field.inTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库-入库时间', 'erp.purchaseIn.field.inTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseIn.field.inTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库-入库时间', 'erp.purchaseIn.field.inTime', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'in time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseIn.field.inTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库-入库时间', 'erp.purchaseIn.field.inTime', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '入库时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 52. 采购订单编号
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseIn.field.orderId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库-采购订单编号', 'erp.purchaseIn.field.orderId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseIn.field.orderId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库-采购订单编号', 'erp.purchaseIn.field.orderId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'purchase order id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseIn.field.orderId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库-采购订单编号', 'erp.purchaseIn.field.orderId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '采购订单编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 53. 采购订单号
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseIn.field.orderNo';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库-采购订单号', 'erp.purchaseIn.field.orderNo', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseIn.field.orderNo' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库-采购订单号', 'erp.purchaseIn.field.orderNo', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'purchase order no', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseIn.field.orderNo' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库-采购订单号', 'erp.purchaseIn.field.orderNo', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '采购订单号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 54. 合计数量
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseIn.field.totalCount';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库-合计数量', 'erp.purchaseIn.field.totalCount', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseIn.field.totalCount' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库-合计数量', 'erp.purchaseIn.field.totalCount', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'total count', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseIn.field.totalCount' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库-合计数量', 'erp.purchaseIn.field.totalCount', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '合计数量', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 55. 最终合计价格
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseIn.field.totalPrice';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库-最终合计价格', 'erp.purchaseIn.field.totalPrice', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseIn.field.totalPrice' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库-最终合计价格', 'erp.purchaseIn.field.totalPrice', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'total price', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseIn.field.totalPrice' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库-最终合计价格', 'erp.purchaseIn.field.totalPrice', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '最终合计价格', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 56. 已付款金额
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseIn.field.paymentPrice';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库-已付款金额', 'erp.purchaseIn.field.paymentPrice', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseIn.field.paymentPrice' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库-已付款金额', 'erp.purchaseIn.field.paymentPrice', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'payment price', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseIn.field.paymentPrice' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库-已付款金额', 'erp.purchaseIn.field.paymentPrice', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '已付款金额', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 57. 合计产品价格
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseIn.field.totalProductPrice';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库-合计产品价格', 'erp.purchaseIn.field.totalProductPrice', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseIn.field.totalProductPrice' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库-合计产品价格', 'erp.purchaseIn.field.totalProductPrice', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'total product price', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseIn.field.totalProductPrice' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库-合计产品价格', 'erp.purchaseIn.field.totalProductPrice', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '合计产品价格', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 58. 合计税额
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseIn.field.totalTaxPrice';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库-合计税额', 'erp.purchaseIn.field.totalTaxPrice', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseIn.field.totalTaxPrice' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库-合计税额', 'erp.purchaseIn.field.totalTaxPrice', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'total tax price', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseIn.field.totalTaxPrice' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库-合计税额', 'erp.purchaseIn.field.totalTaxPrice', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '合计税额', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 59. 优惠率
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseIn.field.discountPercent';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库-优惠率', 'erp.purchaseIn.field.discountPercent', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseIn.field.discountPercent' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库-优惠率', 'erp.purchaseIn.field.discountPercent', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'discount percent', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseIn.field.discountPercent' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库-优惠率', 'erp.purchaseIn.field.discountPercent', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '优惠率', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 60. 优惠金额
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseIn.field.discountPrice';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库-优惠金额', 'erp.purchaseIn.field.discountPrice', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseIn.field.discountPrice' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库-优惠金额', 'erp.purchaseIn.field.discountPrice', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'discount price', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseIn.field.discountPrice' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库-优惠金额', 'erp.purchaseIn.field.discountPrice', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '优惠金额', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 61. 其它金额
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseIn.field.otherPrice';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库-其它金额', 'erp.purchaseIn.field.otherPrice', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseIn.field.otherPrice' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库-其它金额', 'erp.purchaseIn.field.otherPrice', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'other price', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseIn.field.otherPrice' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库-其它金额', 'erp.purchaseIn.field.otherPrice', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '其它金额', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 62. 附件地址
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseIn.field.fileUrl';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库-附件地址', 'erp.purchaseIn.field.fileUrl', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseIn.field.fileUrl' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库-附件地址', 'erp.purchaseIn.field.fileUrl', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'file url', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseIn.field.fileUrl' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库-附件地址', 'erp.purchaseIn.field.fileUrl', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '附件地址', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 63. 备注
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseIn.field.remark';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库-备注', 'erp.purchaseIn.field.remark', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseIn.field.remark' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库-备注', 'erp.purchaseIn.field.remark', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'remark', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseIn.field.remark' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库-备注', 'erp.purchaseIn.field.remark', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '备注', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 64. 创建人
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseIn.field.creator';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库-创建人', 'erp.purchaseIn.field.creator', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseIn.field.creator' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库-创建人', 'erp.purchaseIn.field.creator', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'creator', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseIn.field.creator' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库-创建人', 'erp.purchaseIn.field.creator', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '创建人', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 65. 创建人名称
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseIn.field.creatorName';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库-创建人名称', 'erp.purchaseIn.field.creatorName', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseIn.field.creatorName' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库-创建人名称', 'erp.purchaseIn.field.creatorName', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'creator name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseIn.field.creatorName' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库-创建人名称', 'erp.purchaseIn.field.creatorName', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '创建人名称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 66. 创建时间
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseIn.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库-创建时间', 'erp.purchaseIn.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseIn.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库-创建时间', 'erp.purchaseIn.field.createTime', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseIn.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库-创建时间', 'erp.purchaseIn.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '创建时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 67. 产品信息
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseIn.field.productNames';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库-产品信息', 'erp.purchaseIn.field.productNames', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseIn.field.productNames' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库-产品信息', 'erp.purchaseIn.field.productNames', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'product names', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseIn.field.productNames' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库-产品信息', 'erp.purchaseIn.field.productNames', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '产品信息', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- ErpPurchaseInItemDO (purchaseInItem) - 采购入库项
-- =============================================

-- 68. 入库项编号
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseInItem.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库项-入库项编号', 'erp.purchaseInItem.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseInItem.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库项-入库项编号', 'erp.purchaseInItem.field.id', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'in item id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseInItem.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库项-入库项编号', 'erp.purchaseInItem.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '入库项编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 69. 采购入库编号
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseInItem.field.inId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库项-采购入库编号', 'erp.purchaseInItem.field.inId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseInItem.field.inId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库项-采购入库编号', 'erp.purchaseInItem.field.inId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'purchase in id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseInItem.field.inId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库项-采购入库编号', 'erp.purchaseInItem.field.inId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '采购入库编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 70. 采购订单项编号
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseInItem.field.orderItemId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库项-采购订单项编号', 'erp.purchaseInItem.field.orderItemId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseInItem.field.orderItemId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库项-采购订单项编号', 'erp.purchaseInItem.field.orderItemId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'order item id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseInItem.field.orderItemId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库项-采购订单项编号', 'erp.purchaseInItem.field.orderItemId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '采购订单项编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 71. 仓库编号
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseInItem.field.warehouseId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库项-仓库编号', 'erp.purchaseInItem.field.warehouseId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseInItem.field.warehouseId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库项-仓库编号', 'erp.purchaseInItem.field.warehouseId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'warehouse id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseInItem.field.warehouseId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库项-仓库编号', 'erp.purchaseInItem.field.warehouseId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '仓库编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 72. 产品编号
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseInItem.field.productId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库项-产品编号', 'erp.purchaseInItem.field.productId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseInItem.field.productId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库项-产品编号', 'erp.purchaseInItem.field.productId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'product id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseInItem.field.productId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库项-产品编号', 'erp.purchaseInItem.field.productId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '产品编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 73. 产品单位编号
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseInItem.field.productUnitId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库项-产品单位编号', 'erp.purchaseInItem.field.productUnitId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseInItem.field.productUnitId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库项-产品单位编号', 'erp.purchaseInItem.field.productUnitId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'product unit id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseInItem.field.productUnitId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库项-产品单位编号', 'erp.purchaseInItem.field.productUnitId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '产品单位编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 74. 产品单价
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseInItem.field.productPrice';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库项-产品单价', 'erp.purchaseInItem.field.productPrice', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseInItem.field.productPrice' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库项-产品单价', 'erp.purchaseInItem.field.productPrice', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'product price', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseInItem.field.productPrice' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库项-产品单价', 'erp.purchaseInItem.field.productPrice', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '产品单价', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 75. 产品数量
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseInItem.field.count';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库项-产品数量', 'erp.purchaseInItem.field.count', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseInItem.field.count' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库项-产品数量', 'erp.purchaseInItem.field.count', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'count', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseInItem.field.count' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库项-产品数量', 'erp.purchaseInItem.field.count', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '产品数量', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 76. 总价
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseInItem.field.totalPrice';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库项-总价', 'erp.purchaseInItem.field.totalPrice', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseInItem.field.totalPrice' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库项-总价', 'erp.purchaseInItem.field.totalPrice', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'total price', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseInItem.field.totalPrice' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库项-总价', 'erp.purchaseInItem.field.totalPrice', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '总价', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 77. 税率
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseInItem.field.taxPercent';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库项-税率', 'erp.purchaseInItem.field.taxPercent', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseInItem.field.taxPercent' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库项-税率', 'erp.purchaseInItem.field.taxPercent', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'tax percent', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseInItem.field.taxPercent' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库项-税率', 'erp.purchaseInItem.field.taxPercent', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '税率', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 78. 税额
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseInItem.field.taxPrice';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库项-税额', 'erp.purchaseInItem.field.taxPrice', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseInItem.field.taxPrice' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库项-税额', 'erp.purchaseInItem.field.taxPrice', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'tax price', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseInItem.field.taxPrice' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库项-税额', 'erp.purchaseInItem.field.taxPrice', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '税额', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 79. 备注
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseInItem.field.remark';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库项-备注', 'erp.purchaseInItem.field.remark', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseInItem.field.remark' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库项-备注', 'erp.purchaseInItem.field.remark', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'remark', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseInItem.field.remark' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库项-备注', 'erp.purchaseInItem.field.remark', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '备注', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- ErpPurchaseReturnDO (purchaseReturn) - 采购退货
-- =============================================

-- 80. 采购退货编号
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseReturn.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货-采购退货编号', 'erp.purchaseReturn.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturn.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货-采购退货编号', 'erp.purchaseReturn.field.id', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'purchase return id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturn.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货-采购退货编号', 'erp.purchaseReturn.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '采购退货编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 81. 退货单编号
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseReturn.field.no';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货-退货单编号', 'erp.purchaseReturn.field.no', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturn.field.no' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货-退货单编号', 'erp.purchaseReturn.field.no', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'return no', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturn.field.no' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货-退货单编号', 'erp.purchaseReturn.field.no', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '退货单编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 82. 退货状态
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseReturn.field.status';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货-退货状态', 'erp.purchaseReturn.field.status', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturn.field.status' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货-退货状态', 'erp.purchaseReturn.field.status', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'return status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturn.field.status' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货-退货状态', 'erp.purchaseReturn.field.status', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '退货状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 83. 供应商编号
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseReturn.field.supplierId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货-供应商编号', 'erp.purchaseReturn.field.supplierId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturn.field.supplierId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货-供应商编号', 'erp.purchaseReturn.field.supplierId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'supplier id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturn.field.supplierId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货-供应商编号', 'erp.purchaseReturn.field.supplierId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '供应商编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 84. 供应商名称
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseReturn.field.supplierName';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货-供应商名称', 'erp.purchaseReturn.field.supplierName', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturn.field.supplierName' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货-供应商名称', 'erp.purchaseReturn.field.supplierName', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'supplier name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturn.field.supplierName' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货-供应商名称', 'erp.purchaseReturn.field.supplierName', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '供应商名称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 85. 结算账户编号
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseReturn.field.accountId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货-结算账户编号', 'erp.purchaseReturn.field.accountId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturn.field.accountId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货-结算账户编号', 'erp.purchaseReturn.field.accountId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'account id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturn.field.accountId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货-结算账户编号', 'erp.purchaseReturn.field.accountId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '结算账户编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 86. 退货时间
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseReturn.field.returnTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货-退货时间', 'erp.purchaseReturn.field.returnTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturn.field.returnTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货-退货时间', 'erp.purchaseReturn.field.returnTime', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'return time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturn.field.returnTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货-退货时间', 'erp.purchaseReturn.field.returnTime', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '退货时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 87. 采购订单编号
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseReturn.field.orderId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货-采购订单编号', 'erp.purchaseReturn.field.orderId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturn.field.orderId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货-采购订单编号', 'erp.purchaseReturn.field.orderId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'purchase order id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturn.field.orderId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货-采购订单编号', 'erp.purchaseReturn.field.orderId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '采购订单编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 88. 采购订单号
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseReturn.field.orderNo';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货-采购订单号', 'erp.purchaseReturn.field.orderNo', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturn.field.orderNo' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货-采购订单号', 'erp.purchaseReturn.field.orderNo', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'purchase order no', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturn.field.orderNo' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货-采购订单号', 'erp.purchaseReturn.field.orderNo', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '采购订单号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 89. 合计数量
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseReturn.field.totalCount';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货-合计数量', 'erp.purchaseReturn.field.totalCount', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturn.field.totalCount' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货-合计数量', 'erp.purchaseReturn.field.totalCount', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'total count', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturn.field.totalCount' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货-合计数量', 'erp.purchaseReturn.field.totalCount', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '合计数量', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 90. 最终合计价格
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseReturn.field.totalPrice';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货-最终合计价格', 'erp.purchaseReturn.field.totalPrice', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturn.field.totalPrice' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货-最终合计价格', 'erp.purchaseReturn.field.totalPrice', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'total price', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturn.field.totalPrice' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货-最终合计价格', 'erp.purchaseReturn.field.totalPrice', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '最终合计价格', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 91. 已退款金额
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseReturn.field.refundPrice';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货-已退款金额', 'erp.purchaseReturn.field.refundPrice', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturn.field.refundPrice' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货-已退款金额', 'erp.purchaseReturn.field.refundPrice', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'refund price', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturn.field.refundPrice' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货-已退款金额', 'erp.purchaseReturn.field.refundPrice', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '已退款金额', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 92. 合计产品价格
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseReturn.field.totalProductPrice';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货-合计产品价格', 'erp.purchaseReturn.field.totalProductPrice', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturn.field.totalProductPrice' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货-合计产品价格', 'erp.purchaseReturn.field.totalProductPrice', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'total product price', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturn.field.totalProductPrice' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货-合计产品价格', 'erp.purchaseReturn.field.totalProductPrice', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '合计产品价格', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 93. 合计税额
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseReturn.field.totalTaxPrice';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货-合计税额', 'erp.purchaseReturn.field.totalTaxPrice', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturn.field.totalTaxPrice' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货-合计税额', 'erp.purchaseReturn.field.totalTaxPrice', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'total tax price', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturn.field.totalTaxPrice' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货-合计税额', 'erp.purchaseReturn.field.totalTaxPrice', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '合计税额', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 94. 优惠率
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseReturn.field.discountPercent';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货-优惠率', 'erp.purchaseReturn.field.discountPercent', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturn.field.discountPercent' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货-优惠率', 'erp.purchaseReturn.field.discountPercent', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'discount percent', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturn.field.discountPercent' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货-优惠率', 'erp.purchaseReturn.field.discountPercent', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '优惠率', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 95. 优惠金额
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseReturn.field.discountPrice';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货-优惠金额', 'erp.purchaseReturn.field.discountPrice', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturn.field.discountPrice' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货-优惠金额', 'erp.purchaseReturn.field.discountPrice', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'discount price', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturn.field.discountPrice' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货-优惠金额', 'erp.purchaseReturn.field.discountPrice', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '优惠金额', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 96. 其它金额
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseReturn.field.otherPrice';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货-其它金额', 'erp.purchaseReturn.field.otherPrice', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturn.field.otherPrice' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货-其它金额', 'erp.purchaseReturn.field.otherPrice', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'other price', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturn.field.otherPrice' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货-其它金额', 'erp.purchaseReturn.field.otherPrice', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '其它金额', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 97. 附件地址
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseReturn.field.fileUrl';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货-附件地址', 'erp.purchaseReturn.field.fileUrl', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturn.field.fileUrl' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货-附件地址', 'erp.purchaseReturn.field.fileUrl', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'file url', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturn.field.fileUrl' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货-附件地址', 'erp.purchaseReturn.field.fileUrl', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '附件地址', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 98. 备注
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseReturn.field.remark';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货-备注', 'erp.purchaseReturn.field.remark', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturn.field.remark' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货-备注', 'erp.purchaseReturn.field.remark', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'remark', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturn.field.remark' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货-备注', 'erp.purchaseReturn.field.remark', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '备注', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 99. 创建人
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseReturn.field.creator';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货-创建人', 'erp.purchaseReturn.field.creator', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturn.field.creator' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货-创建人', 'erp.purchaseReturn.field.creator', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'creator', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturn.field.creator' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货-创建人', 'erp.purchaseReturn.field.creator', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '创建人', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 100. 创建人名称
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseReturn.field.creatorName';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货-创建人名称', 'erp.purchaseReturn.field.creatorName', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturn.field.creatorName' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货-创建人名称', 'erp.purchaseReturn.field.creatorName', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'creator name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturn.field.creatorName' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货-创建人名称', 'erp.purchaseReturn.field.creatorName', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '创建人名称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 101. 创建时间
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseReturn.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货-创建时间', 'erp.purchaseReturn.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturn.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货-创建时间', 'erp.purchaseReturn.field.createTime', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturn.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货-创建时间', 'erp.purchaseReturn.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '创建时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 102. 产品信息
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseReturn.field.productNames';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货-产品信息', 'erp.purchaseReturn.field.productNames', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturn.field.productNames' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货-产品信息', 'erp.purchaseReturn.field.productNames', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'product names', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturn.field.productNames' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货-产品信息', 'erp.purchaseReturn.field.productNames', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '产品信息', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- ErpPurchaseReturnItemDO (purchaseReturnItem) - 采购退货项
-- =============================================

-- 103. 退货项编号
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseReturnItem.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货项-退货项编号', 'erp.purchaseReturnItem.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturnItem.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货项-退货项编号', 'erp.purchaseReturnItem.field.id', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'return item id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturnItem.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货项-退货项编号', 'erp.purchaseReturnItem.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '退货项编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 104. 采购退货编号
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseReturnItem.field.returnId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货项-采购退货编号', 'erp.purchaseReturnItem.field.returnId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturnItem.field.returnId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货项-采购退货编号', 'erp.purchaseReturnItem.field.returnId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'purchase return id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturnItem.field.returnId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货项-采购退货编号', 'erp.purchaseReturnItem.field.returnId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '采购退货编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 105. 采购订单项编号
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseReturnItem.field.orderItemId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货项-采购订单项编号', 'erp.purchaseReturnItem.field.orderItemId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturnItem.field.orderItemId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货项-采购订单项编号', 'erp.purchaseReturnItem.field.orderItemId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'order item id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturnItem.field.orderItemId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货项-采购订单项编号', 'erp.purchaseReturnItem.field.orderItemId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '采购订单项编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 106. 仓库编号
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseReturnItem.field.warehouseId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货项-仓库编号', 'erp.purchaseReturnItem.field.warehouseId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturnItem.field.warehouseId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货项-仓库编号', 'erp.purchaseReturnItem.field.warehouseId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'warehouse id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturnItem.field.warehouseId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货项-仓库编号', 'erp.purchaseReturnItem.field.warehouseId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '仓库编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 107. 产品编号
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseReturnItem.field.productId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货项-产品编号', 'erp.purchaseReturnItem.field.productId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturnItem.field.productId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货项-产品编号', 'erp.purchaseReturnItem.field.productId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'product id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturnItem.field.productId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货项-产品编号', 'erp.purchaseReturnItem.field.productId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '产品编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 108. 产品单位编号
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseReturnItem.field.productUnitId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货项-产品单位编号', 'erp.purchaseReturnItem.field.productUnitId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturnItem.field.productUnitId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货项-产品单位编号', 'erp.purchaseReturnItem.field.productUnitId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'product unit id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturnItem.field.productUnitId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货项-产品单位编号', 'erp.purchaseReturnItem.field.productUnitId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '产品单位编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 109. 产品单价
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseReturnItem.field.productPrice';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货项-产品单价', 'erp.purchaseReturnItem.field.productPrice', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturnItem.field.productPrice' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货项-产品单价', 'erp.purchaseReturnItem.field.productPrice', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'product price', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturnItem.field.productPrice' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货项-产品单价', 'erp.purchaseReturnItem.field.productPrice', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '产品单价', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 110. 产品数量
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseReturnItem.field.count';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货项-产品数量', 'erp.purchaseReturnItem.field.count', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturnItem.field.count' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货项-产品数量', 'erp.purchaseReturnItem.field.count', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'count', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturnItem.field.count' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货项-产品数量', 'erp.purchaseReturnItem.field.count', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '产品数量', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 111. 总价
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseReturnItem.field.totalPrice';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货项-总价', 'erp.purchaseReturnItem.field.totalPrice', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturnItem.field.totalPrice' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货项-总价', 'erp.purchaseReturnItem.field.totalPrice', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'total price', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturnItem.field.totalPrice' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货项-总价', 'erp.purchaseReturnItem.field.totalPrice', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '总价', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 112. 税率
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseReturnItem.field.taxPercent';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货项-税率', 'erp.purchaseReturnItem.field.taxPercent', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturnItem.field.taxPercent' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货项-税率', 'erp.purchaseReturnItem.field.taxPercent', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'tax percent', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturnItem.field.taxPercent' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货项-税率', 'erp.purchaseReturnItem.field.taxPercent', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '税率', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 113. 税额
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseReturnItem.field.taxPrice';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货项-税额', 'erp.purchaseReturnItem.field.taxPrice', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturnItem.field.taxPrice' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货项-税额', 'erp.purchaseReturnItem.field.taxPrice', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'tax price', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturnItem.field.taxPrice' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货项-税额', 'erp.purchaseReturnItem.field.taxPrice', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '税额', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 114. 备注
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseReturnItem.field.remark';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货项-备注', 'erp.purchaseReturnItem.field.remark', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturnItem.field.remark' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货项-备注', 'erp.purchaseReturnItem.field.remark', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'remark', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturnItem.field.remark' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货项-备注', 'erp.purchaseReturnItem.field.remark', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '备注', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
