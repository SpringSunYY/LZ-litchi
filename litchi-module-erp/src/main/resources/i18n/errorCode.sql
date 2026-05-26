-- =============================================
-- ERP 模块错误码国际化 SQL
-- 生成时间：2026-05-25
-- 规范版本：v1.2
-- =============================================

-- ---------------------------------------------
-- 变量定义（运行时可覆盖）
-- ---------------------------------------------
SET @IS_SYSTEM = 0;
SET @USE_TYPE_EXCEPTION = 5;
SET @MODULE_TYPE = 'erp';
SET @LOCALE_TARGET_BACKEND = 1;
SET @LOCALE_EN = 'en-US';
SET @LOCALE_ZH_CN = 'zh-CN';
SET @CREATOR = '0';
SET @REMARK = 'ai auto generate';
SET @ORDER_NUM = 5;
-- =============================================
-- ERP 供应商（1-030-100-000）
-- =============================================

-- 1. 供应商-不存在

DELETE FROM infra_i18n_key WHERE message_key = 'erp.supplier.back.notExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('供应商-不存在', 'erp.supplier.back.notExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 1. 供应商-不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.supplier.back.notExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('供应商-不存在', 'erp.supplier.back.notExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'supplier not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 1. 供应商-不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.supplier.back.notExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('供应商-不存在', 'erp.supplier.back.notExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '供应商不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. 供应商-未启用

DELETE FROM infra_i18n_key WHERE message_key = 'erp.supplier.back.notEnabled';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('供应商-未启用', 'erp.supplier.back.notEnabled', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. 供应商-未启用 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.supplier.back.notEnabled' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('供应商-未启用', 'erp.supplier.back.notEnabled', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'supplier ({}) not enabled', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. 供应商-未启用 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.supplier.back.notEnabled' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('供应商-未启用', 'erp.supplier.back.notEnabled', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '供应商({})未启用', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- ERP 采购订单（1-030-101-000）
-- =============================================

-- 3. 采购订单-不存在

DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseOrder.back.notExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-不存在', 'erp.purchaseOrder.back.notExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. 采购订单-不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrder.back.notExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-不存在', 'erp.purchaseOrder.back.notExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'purchase order not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. 采购订单-不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrder.back.notExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-不存在', 'erp.purchaseOrder.back.notExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '采购订单不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. 采购订单-已审核无法删除

DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseOrder.back.approveProhibitDelete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-已审核无法删除', 'erp.purchaseOrder.back.approveProhibitDelete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. 采购订单-已审核无法删除 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrder.back.approveProhibitDelete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-已审核无法删除', 'erp.purchaseOrder.back.approveProhibitDelete', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'purchase order ({}) already approved, cannot delete', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. 采购订单-已审核无法删除 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrder.back.approveProhibitDelete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-已审核无法删除', 'erp.purchaseOrder.back.approveProhibitDelete', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '采购订单({})已审核，无法删除', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. 采购订单-反审核失败

DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseOrder.back.processed';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-反审核失败', 'erp.purchaseOrder.back.processed', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. 采购订单-反审核失败 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrder.back.processed' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-反审核失败', 'erp.purchaseOrder.back.processed', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'reverse approval failed, only approved purchase order can be reversed', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. 采购订单-反审核失败 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrder.back.processed' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-反审核失败', 'erp.purchaseOrder.back.processed', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '反审核失败，只有已审核的采购订单才能反审核', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 6. 采购订单-审核失败

DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseOrder.back.notApproved';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-审核失败', 'erp.purchaseOrder.back.notApproved', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 6. 采购订单-审核失败 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrder.back.notApproved' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-审核失败', 'erp.purchaseOrder.back.notApproved', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'approval failed, only unapproved purchase order can be approved', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 6. 采购订单-审核失败 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrder.back.notApproved' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-审核失败', 'erp.purchaseOrder.back.notApproved', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '审核失败，只有未审核的采购订单才能审核', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 7. 采购订单-生成单号失败

DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseOrder.back.codeGenerateFail';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-生成单号失败', 'erp.purchaseOrder.back.codeGenerateFail', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 7. 采购订单-生成单号失败 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrder.back.codeGenerateFail' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-生成单号失败', 'erp.purchaseOrder.back.codeGenerateFail', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'failed to generate order number, please resubmit', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 7. 采购订单-生成单号失败 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrder.back.codeGenerateFail' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-生成单号失败', 'erp.purchaseOrder.back.codeGenerateFail', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '生成采购单号失败，请重新提交', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 8. 采购订单-已审核无法修改

DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseOrder.back.approveProhibitUpdate';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-已审核无法修改', 'erp.purchaseOrder.back.approveProhibitUpdate', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 8. 采购订单-已审核无法修改 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrder.back.approveProhibitUpdate' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-已审核无法修改', 'erp.purchaseOrder.back.approveProhibitUpdate', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'purchase order ({}) already approved, cannot modify', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 8. 采购订单-已审核无法修改 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrder.back.approveProhibitUpdate' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-已审核无法修改', 'erp.purchaseOrder.back.approveProhibitUpdate', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '采购订单({})已审核，无法修改', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 9. 采购订单-未审核无法操作

DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseOrder.back.operationNotAllowed';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-未审核无法操作', 'erp.purchaseOrder.back.operationNotAllowed', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 9. 采购订单-未审核无法操作 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrder.back.operationNotAllowed' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-未审核无法操作', 'erp.purchaseOrder.back.operationNotAllowed', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'purchase order not approved, cannot operate', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 9. 采购订单-未审核无法操作 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrder.back.operationNotAllowed' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-未审核无法操作', 'erp.purchaseOrder.back.operationNotAllowed', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '采购订单未审核，无法操作', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 10. 采购订单项-超过最大允许入库数量

DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseOrder.back.stockInExceed';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单项-超过最大允许入库数量', 'erp.purchaseOrder.back.stockInExceed', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 10. 采购订单项-超过最大允许入库数量 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrder.back.stockInExceed' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单项-超过最大允许入库数量', 'erp.purchaseOrder.back.stockInExceed', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'purchase order item ({}) exceeds max allowed stock-in quantity ({})', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 10. 采购订单项-超过最大允许入库数量 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrder.back.stockInExceed' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单项-超过最大允许入库数量', 'erp.purchaseOrder.back.stockInExceed', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '采购订单项({})超过最大允许入库数量({})', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 11. 采购订单-反审核失败已存在入库单

DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseOrder.back.stockInExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-反审核失败已存在入库单', 'erp.purchaseOrder.back.stockInExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 11. 采购订单-反审核失败已存在入库单 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrder.back.stockInExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-反审核失败已存在入库单', 'erp.purchaseOrder.back.stockInExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'reverse approval failed, purchase inbound record already exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 11. 采购订单-反审核失败已存在入库单 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrder.back.stockInExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-反审核失败已存在入库单', 'erp.purchaseOrder.back.stockInExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '反审核失败，已存在对应的采购入库单', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 12. 采购订单项-超过最大允许退货数量

DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseOrder.back.returnExceed';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单项-超过最大允许退货数量', 'erp.purchaseOrder.back.returnExceed', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 12. 采购订单项-超过最大允许退货数量 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrder.back.returnExceed' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单项-超过最大允许退货数量', 'erp.purchaseOrder.back.returnExceed', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'purchase order item ({}) exceeds max allowed return quantity ({})', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 12. 采购订单项-超过最大允许退货数量 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrder.back.returnExceed' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单项-超过最大允许退货数量', 'erp.purchaseOrder.back.returnExceed', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '采购订单项({})超过最大允许退货数量({})', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 13. 采购订单-反审核失败已存在退货单

DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseOrder.back.returnExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-反审核失败已存在退货单', 'erp.purchaseOrder.back.returnExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 13. 采购订单-反审核失败已存在退货单 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrder.back.returnExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-反审核失败已存在退货单', 'erp.purchaseOrder.back.returnExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'reverse approval failed, purchase return record already exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 13. 采购订单-反审核失败已存在退货单 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseOrder.back.returnExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购订单-反审核失败已存在退货单', 'erp.purchaseOrder.back.returnExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '反审核失败，已存在对应的采购退货单', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- ERP 采购入库（1-030-102-000）
-- =============================================

-- 14. 采购入库单-不存在

DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseIn.back.notExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库单-不存在', 'erp.purchaseIn.back.notExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 14. 采购入库单-不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseIn.back.notExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库单-不存在', 'erp.purchaseIn.back.notExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'purchase inbound order not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 14. 采购入库单-不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseIn.back.notExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库单-不存在', 'erp.purchaseIn.back.notExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '采购入库单不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 15. 采购入库单-已审核无法删除

DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseIn.back.approveProhibitDelete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库单-已审核无法删除', 'erp.purchaseIn.back.approveProhibitDelete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 15. 采购入库单-已审核无法删除 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseIn.back.approveProhibitDelete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库单-已审核无法删除', 'erp.purchaseIn.back.approveProhibitDelete', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'purchase inbound order ({}) already approved, cannot delete', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 15. 采购入库单-已审核无法删除 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseIn.back.approveProhibitDelete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库单-已审核无法删除', 'erp.purchaseIn.back.approveProhibitDelete', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '采购入库单({})已审核，无法删除', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 16. 采购入库单-反审核失败

DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseIn.back.processed';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库单-反审核失败', 'erp.purchaseIn.back.processed', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 16. 采购入库单-反审核失败 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseIn.back.processed' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库单-反审核失败', 'erp.purchaseIn.back.processed', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'reverse approval failed, only approved inbound order can be reversed', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 16. 采购入库单-反审核失败 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseIn.back.processed' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库单-反审核失败', 'erp.purchaseIn.back.processed', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '反审核失败，只有已审核的入库单才能反审核', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 17. 采购入库单-审核失败

DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseIn.back.notApproved';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库单-审核失败', 'erp.purchaseIn.back.notApproved', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 17. 采购入库单-审核失败 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseIn.back.notApproved' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库单-审核失败', 'erp.purchaseIn.back.notApproved', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'approval failed, only unapproved inbound order can be approved', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 17. 采购入库单-审核失败 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseIn.back.notApproved' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库单-审核失败', 'erp.purchaseIn.back.notApproved', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '审核失败，只有未审核的入库单才能审核', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 18. 采购入库单-生成单号失败

DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseIn.back.codeGenerateFail';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库单-生成单号失败', 'erp.purchaseIn.back.codeGenerateFail', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 18. 采购入库单-生成单号失败 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseIn.back.codeGenerateFail' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库单-生成单号失败', 'erp.purchaseIn.back.codeGenerateFail', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'failed to generate inbound order number, please resubmit', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 18. 采购入库单-生成单号失败 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseIn.back.codeGenerateFail' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库单-生成单号失败', 'erp.purchaseIn.back.codeGenerateFail', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '生成入库单失败，请重新提交', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 19. 采购入库单-已审核无法修改

DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseIn.back.approveProhibitUpdate';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库单-已审核无法修改', 'erp.purchaseIn.back.approveProhibitUpdate', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 19. 采购入库单-已审核无法修改 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseIn.back.approveProhibitUpdate' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库单-已审核无法修改', 'erp.purchaseIn.back.approveProhibitUpdate', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'purchase inbound order ({}) already approved, cannot modify', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 19. 采购入库单-已审核无法修改 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseIn.back.approveProhibitUpdate' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库单-已审核无法修改', 'erp.purchaseIn.back.approveProhibitUpdate', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '采购入库单({})已审核，无法修改', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 20. 采购入库单-未审核无法操作

DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseIn.back.operationNotAllowed';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库单-未审核无法操作', 'erp.purchaseIn.back.operationNotAllowed', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 20. 采购入库单-未审核无法操作 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseIn.back.operationNotAllowed' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库单-未审核无法操作', 'erp.purchaseIn.back.operationNotAllowed', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'purchase inbound order not approved, cannot operate', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 20. 采购入库单-未审核无法操作 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseIn.back.operationNotAllowed' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库单-未审核无法操作', 'erp.purchaseIn.back.operationNotAllowed', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '采购入库单未审核，无法操作', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 21. 采购入库单-付款金额超限

DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseIn.back.paymentExceed';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库单-付款金额超限', 'erp.purchaseIn.back.paymentExceed', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 21. 采购入库单-付款金额超限 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseIn.back.paymentExceed' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库单-付款金额超限', 'erp.purchaseIn.back.paymentExceed', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'payment amount ({}) exceeds total amount of purchase inbound order ({})', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 21. 采购入库单-付款金额超限 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseIn.back.paymentExceed' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库单-付款金额超限', 'erp.purchaseIn.back.paymentExceed', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '付款金额({})超过采购入库单总金额({})', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 22. 采购入库单-反审核失败已存在付款单

DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseIn.back.paymentExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库单-反审核失败已存在付款单', 'erp.purchaseIn.back.paymentExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 22. 采购入库单-反审核失败已存在付款单 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseIn.back.paymentExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库单-反审核失败已存在付款单', 'erp.purchaseIn.back.paymentExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'reverse approval failed, payment record already exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 22. 采购入库单-反审核失败已存在付款单 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseIn.back.paymentExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购入库单-反审核失败已存在付款单', 'erp.purchaseIn.back.paymentExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '反审核失败，已存在对应的付款单', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- ERP 采购退货（1-030-103-000）
-- =============================================

-- 23. 采购退货单-不存在

DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseReturn.back.notExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货单-不存在', 'erp.purchaseReturn.back.notExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 23. 采购退货单-不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturn.back.notExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货单-不存在', 'erp.purchaseReturn.back.notExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'purchase return order not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 23. 采购退货单-不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturn.back.notExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货单-不存在', 'erp.purchaseReturn.back.notExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '采购退货单不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 24. 采购退货单-已审核无法删除

DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseReturn.back.approveProhibitDelete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货单-已审核无法删除', 'erp.purchaseReturn.back.approveProhibitDelete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 24. 采购退货单-已审核无法删除 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturn.back.approveProhibitDelete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货单-已审核无法删除', 'erp.purchaseReturn.back.approveProhibitDelete', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'purchase return order ({}) already approved, cannot delete', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 24. 采购退货单-已审核无法删除 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturn.back.approveProhibitDelete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货单-已审核无法删除', 'erp.purchaseReturn.back.approveProhibitDelete', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '采购退货单({})已审核，无法删除', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 25. 采购退货单-反审核失败

DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseReturn.back.processed';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货单-反审核失败', 'erp.purchaseReturn.back.processed', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 25. 采购退货单-反审核失败 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturn.back.processed' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货单-反审核失败', 'erp.purchaseReturn.back.processed', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'reverse approval failed, only approved return order can be reversed', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 25. 采购退货单-反审核失败 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturn.back.processed' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货单-反审核失败', 'erp.purchaseReturn.back.processed', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '反审核失败，只有已审核的退货单才能反审核', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 26. 采购退货单-审核失败

DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseReturn.back.notApproved';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货单-审核失败', 'erp.purchaseReturn.back.notApproved', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 26. 采购退货单-审核失败 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturn.back.notApproved' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货单-审核失败', 'erp.purchaseReturn.back.notApproved', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'approval failed, only unapproved return order can be approved', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 26. 采购退货单-审核失败 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturn.back.notApproved' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货单-审核失败', 'erp.purchaseReturn.back.notApproved', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '审核失败，只有未审核的退货单才能审核', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 27. 采购退货单-生成单号失败

DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseReturn.back.codeGenerateFail';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货单-生成单号失败', 'erp.purchaseReturn.back.codeGenerateFail', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 27. 采购退货单-生成单号失败 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturn.back.codeGenerateFail' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货单-生成单号失败', 'erp.purchaseReturn.back.codeGenerateFail', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'failed to generate return order number, please resubmit', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 27. 采购退货单-生成单号失败 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturn.back.codeGenerateFail' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货单-生成单号失败', 'erp.purchaseReturn.back.codeGenerateFail', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '生成退货单失败，请重新提交', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 28. 采购退货单-已审核无法修改

DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseReturn.back.approveProhibitUpdate';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货单-已审核无法修改', 'erp.purchaseReturn.back.approveProhibitUpdate', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 28. 采购退货单-已审核无法修改 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturn.back.approveProhibitUpdate' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货单-已审核无法修改', 'erp.purchaseReturn.back.approveProhibitUpdate', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'purchase return order ({}) already approved, cannot modify', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 28. 采购退货单-已审核无法修改 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturn.back.approveProhibitUpdate' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货单-已审核无法修改', 'erp.purchaseReturn.back.approveProhibitUpdate', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '采购退货单({})已审核，无法修改', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 29. 采购退货单-未审核无法操作

DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseReturn.back.operationNotAllowed';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货单-未审核无法操作', 'erp.purchaseReturn.back.operationNotAllowed', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 29. 采购退货单-未审核无法操作 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturn.back.operationNotAllowed' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货单-未审核无法操作', 'erp.purchaseReturn.back.operationNotAllowed', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'purchase return order not approved, cannot operate', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 29. 采购退货单-未审核无法操作 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturn.back.operationNotAllowed' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货单-未审核无法操作', 'erp.purchaseReturn.back.operationNotAllowed', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '采购退货单未审核，无法操作', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 30. 采购退货单-退款金额超限

DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseReturn.back.refundExceed';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货单-退款金额超限', 'erp.purchaseReturn.back.refundExceed', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 30. 采购退货单-退款金额超限 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturn.back.refundExceed' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货单-退款金额超限', 'erp.purchaseReturn.back.refundExceed', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'refund amount ({}) exceeds total amount of purchase return order ({})', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 30. 采购退货单-退款金额超限 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturn.back.refundExceed' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货单-退款金额超限', 'erp.purchaseReturn.back.refundExceed', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '退款金额({})超过采购退货单总金额({})', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 31. 采购退货单-反审核失败已存在退款单

DELETE FROM infra_i18n_key WHERE message_key = 'erp.purchaseReturn.back.refundExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货单-反审核失败已存在退款单', 'erp.purchaseReturn.back.refundExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 31. 采购退货单-反审核失败已存在退款单 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturn.back.refundExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货单-反审核失败已存在退款单', 'erp.purchaseReturn.back.refundExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'reverse approval failed, refund record already exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 31. 采购退货单-反审核失败已存在退款单 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purchaseReturn.back.refundExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购退货单-反审核失败已存在退款单', 'erp.purchaseReturn.back.refundExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '反审核失败，已存在对应的退款单', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- ERP 客户（1-030-200-000）
-- =============================================

-- 32. 客户-不存在

DELETE FROM infra_i18n_key WHERE message_key = 'erp.customer.back.notExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-不存在', 'erp.customer.back.notExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 32. 客户-不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.customer.back.notExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-不存在', 'erp.customer.back.notExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'customer not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 32. 客户-不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.customer.back.notExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-不存在', 'erp.customer.back.notExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '客户不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 33. 客户-未启用

DELETE FROM infra_i18n_key WHERE message_key = 'erp.customer.back.notEnabled';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-未启用', 'erp.customer.back.notEnabled', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 33. 客户-未启用 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.customer.back.notEnabled' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-未启用', 'erp.customer.back.notEnabled', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'customer ({}) not enabled', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 33. 客户-未启用 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.customer.back.notEnabled' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-未启用', 'erp.customer.back.notEnabled', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '客户({})未启用', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- ERP 销售订单（1-030-201-000）
-- =============================================

-- 34. 销售订单-不存在

DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOrder.back.notExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-不存在', 'erp.saleOrder.back.notExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 34. 销售订单-不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrder.back.notExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-不存在', 'erp.saleOrder.back.notExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'sale order not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 34. 销售订单-不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrder.back.notExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-不存在', 'erp.saleOrder.back.notExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '销售订单不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 35. 销售订单-已审核无法删除

DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOrder.back.approveProhibitDelete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-已审核无法删除', 'erp.saleOrder.back.approveProhibitDelete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 35. 销售订单-已审核无法删除 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrder.back.approveProhibitDelete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-已审核无法删除', 'erp.saleOrder.back.approveProhibitDelete', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'sale order ({}) already approved, cannot delete', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 35. 销售订单-已审核无法删除 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrder.back.approveProhibitDelete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-已审核无法删除', 'erp.saleOrder.back.approveProhibitDelete', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '销售订单({})已审核，无法删除', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 36. 销售订单-反审核失败

DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOrder.back.processed';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-反审核失败', 'erp.saleOrder.back.processed', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 36. 销售订单-反审核失败 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrder.back.processed' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-反审核失败', 'erp.saleOrder.back.processed', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'reverse approval failed, only approved sale order can be reversed', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 36. 销售订单-反审核失败 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrder.back.processed' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-反审核失败', 'erp.saleOrder.back.processed', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '反审核失败，只有已审核的销售订单才能反审核', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 37. 销售订单-审核失败

DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOrder.back.notApproved';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-审核失败', 'erp.saleOrder.back.notApproved', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 37. 销售订单-审核失败 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrder.back.notApproved' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-审核失败', 'erp.saleOrder.back.notApproved', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'approval failed, only unapproved sale order can be approved', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 37. 销售订单-审核失败 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrder.back.notApproved' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-审核失败', 'erp.saleOrder.back.notApproved', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '审核失败，只有未审核的销售订单才能审核', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 38. 销售订单-生成单号失败

DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOrder.back.codeGenerateFail';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-生成单号失败', 'erp.saleOrder.back.codeGenerateFail', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 38. 销售订单-生成单号失败 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrder.back.codeGenerateFail' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-生成单号失败', 'erp.saleOrder.back.codeGenerateFail', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'failed to generate order number, please resubmit', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 38. 销售订单-生成单号失败 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrder.back.codeGenerateFail' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-生成单号失败', 'erp.saleOrder.back.codeGenerateFail', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '生成销售单号失败，请重新提交', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 39. 销售订单-已审核无法修改

DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOrder.back.approveProhibitUpdate';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-已审核无法修改', 'erp.saleOrder.back.approveProhibitUpdate', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 39. 销售订单-已审核无法修改 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrder.back.approveProhibitUpdate' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-已审核无法修改', 'erp.saleOrder.back.approveProhibitUpdate', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'sale order ({}) already approved, cannot modify', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 39. 销售订单-已审核无法修改 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrder.back.approveProhibitUpdate' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-已审核无法修改', 'erp.saleOrder.back.approveProhibitUpdate', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '销售订单({})已审核，无法修改', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 40. 销售订单-未审核无法操作

DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOrder.back.operationNotAllowed';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-未审核无法操作', 'erp.saleOrder.back.operationNotAllowed', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 40. 销售订单-未审核无法操作 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrder.back.operationNotAllowed' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-未审核无法操作', 'erp.saleOrder.back.operationNotAllowed', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'sale order not approved, cannot operate', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 40. 销售订单-未审核无法操作 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrder.back.operationNotAllowed' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-未审核无法操作', 'erp.saleOrder.back.operationNotAllowed', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '销售订单未审核，无法操作', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 41. 销售订单项-超过最大允许出库数量

DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOrder.back.stockOutExceed';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单项-超过最大允许出库数量', 'erp.saleOrder.back.stockOutExceed', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 41. 销售订单项-超过最大允许出库数量 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrder.back.stockOutExceed' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单项-超过最大允许出库数量', 'erp.saleOrder.back.stockOutExceed', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'sale order item ({}) exceeds max allowed stock-out quantity ({})', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 41. 销售订单项-超过最大允许出库数量 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrder.back.stockOutExceed' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单项-超过最大允许出库数量', 'erp.saleOrder.back.stockOutExceed', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '销售订单项({})超过最大允许出库数量({})', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 42. 销售订单-反审核失败已存在出库单

DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOrder.back.stockOutExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-反审核失败已存在出库单', 'erp.saleOrder.back.stockOutExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 42. 销售订单-反审核失败已存在出库单 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrder.back.stockOutExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-反审核失败已存在出库单', 'erp.saleOrder.back.stockOutExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'reverse approval failed, sale outbound record already exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 42. 销售订单-反审核失败已存在出库单 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrder.back.stockOutExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-反审核失败已存在出库单', 'erp.saleOrder.back.stockOutExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '反审核失败，已存在对应的销售出库单', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 43. 销售订单项-超过最大允许退货数量

DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOrder.back.returnExceed';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单项-超过最大允许退货数量', 'erp.saleOrder.back.returnExceed', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 43. 销售订单项-超过最大允许退货数量 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrder.back.returnExceed' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单项-超过最大允许退货数量', 'erp.saleOrder.back.returnExceed', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'sale order item ({}) exceeds max allowed return quantity ({})', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 43. 销售订单项-超过最大允许退货数量 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrder.back.returnExceed' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单项-超过最大允许退货数量', 'erp.saleOrder.back.returnExceed', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '销售订单项({})超过最大允许退货数量({})', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 44. 销售订单-反审核失败已存在退货单

DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOrder.back.returnExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-反审核失败已存在退货单', 'erp.saleOrder.back.returnExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 44. 销售订单-反审核失败已存在退货单 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrder.back.returnExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-反审核失败已存在退货单', 'erp.saleOrder.back.returnExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'reverse approval failed, sale return record already exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 44. 销售订单-反审核失败已存在退货单 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOrder.back.returnExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售订单-反审核失败已存在退货单', 'erp.saleOrder.back.returnExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '反审核失败，已存在对应的销售退货单', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- ERP 销售出库（1-030-202-000）
-- =============================================

-- 45. 销售出库单-不存在

DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOut.back.notExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库单-不存在', 'erp.saleOut.back.notExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 45. 销售出库单-不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOut.back.notExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库单-不存在', 'erp.saleOut.back.notExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'sale outbound order not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 45. 销售出库单-不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOut.back.notExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库单-不存在', 'erp.saleOut.back.notExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '销售出库单不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 46. 销售出库单-已审核无法删除

DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOut.back.approveProhibitDelete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库单-已审核无法删除', 'erp.saleOut.back.approveProhibitDelete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 46. 销售出库单-已审核无法删除 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOut.back.approveProhibitDelete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库单-已审核无法删除', 'erp.saleOut.back.approveProhibitDelete', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'sale outbound order ({}) already approved, cannot delete', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 46. 销售出库单-已审核无法删除 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOut.back.approveProhibitDelete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库单-已审核无法删除', 'erp.saleOut.back.approveProhibitDelete', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '销售出库单({})已审核，无法删除', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 47. 销售出库单-反审核失败

DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOut.back.processed';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库单-反审核失败', 'erp.saleOut.back.processed', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 47. 销售出库单-反审核失败 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOut.back.processed' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库单-反审核失败', 'erp.saleOut.back.processed', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'reverse approval failed, only approved outbound order can be reversed', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 47. 销售出库单-反审核失败 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOut.back.processed' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库单-反审核失败', 'erp.saleOut.back.processed', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '反审核失败，只有已审核的出库单才能反审核', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 48. 销售出库单-审核失败

DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOut.back.notApproved';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库单-审核失败', 'erp.saleOut.back.notApproved', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 48. 销售出库单-审核失败 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOut.back.notApproved' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库单-审核失败', 'erp.saleOut.back.notApproved', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'approval failed, only unapproved outbound order can be approved', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 48. 销售出库单-审核失败 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOut.back.notApproved' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库单-审核失败', 'erp.saleOut.back.notApproved', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '审核失败，只有未审核的出库单才能审核', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 49. 销售出库单-生成单号失败

DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOut.back.codeGenerateFail';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库单-生成单号失败', 'erp.saleOut.back.codeGenerateFail', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 49. 销售出库单-生成单号失败 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOut.back.codeGenerateFail' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库单-生成单号失败', 'erp.saleOut.back.codeGenerateFail', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'failed to generate outbound order number, please resubmit', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 49. 销售出库单-生成单号失败 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOut.back.codeGenerateFail' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库单-生成单号失败', 'erp.saleOut.back.codeGenerateFail', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '生成出库单失败，请重新提交', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 50. 销售出库单-已审核无法修改

DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOut.back.approveProhibitUpdate';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库单-已审核无法修改', 'erp.saleOut.back.approveProhibitUpdate', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 50. 销售出库单-已审核无法修改 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOut.back.approveProhibitUpdate' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库单-已审核无法修改', 'erp.saleOut.back.approveProhibitUpdate', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'sale outbound order ({}) already approved, cannot modify', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 50. 销售出库单-已审核无法修改 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOut.back.approveProhibitUpdate' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库单-已审核无法修改', 'erp.saleOut.back.approveProhibitUpdate', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '销售出库单({})已审核，无法修改', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 51. 销售出库单-未审核无法操作

DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOut.back.operationNotAllowed';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库单-未审核无法操作', 'erp.saleOut.back.operationNotAllowed', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 51. 销售出库单-未审核无法操作 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOut.back.operationNotAllowed' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库单-未审核无法操作', 'erp.saleOut.back.operationNotAllowed', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'sale outbound order not approved, cannot operate', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 51. 销售出库单-未审核无法操作 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOut.back.operationNotAllowed' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库单-未审核无法操作', 'erp.saleOut.back.operationNotAllowed', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '销售出库单未审核，无法操作', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 52. 销售出库单-收款金额超限

DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOut.back.receiptExceed';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库单-收款金额超限', 'erp.saleOut.back.receiptExceed', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 52. 销售出库单-收款金额超限 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOut.back.receiptExceed' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库单-收款金额超限', 'erp.saleOut.back.receiptExceed', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'receipt amount ({}) exceeds total amount of sale outbound order ({})', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 52. 销售出库单-收款金额超限 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOut.back.receiptExceed' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库单-收款金额超限', 'erp.saleOut.back.receiptExceed', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '收款金额({})超过销售出库单总金额({})', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 53. 销售出库单-反审核失败已存在收款单

DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleOut.back.receiptExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库单-反审核失败已存在收款单', 'erp.saleOut.back.receiptExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 53. 销售出库单-反审核失败已存在收款单 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOut.back.receiptExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库单-反审核失败已存在收款单', 'erp.saleOut.back.receiptExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'reverse approval failed, receipt record already exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 53. 销售出库单-反审核失败已存在收款单 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleOut.back.receiptExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售出库单-反审核失败已存在收款单', 'erp.saleOut.back.receiptExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '反审核失败，已存在对应的收款单', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- ERP 销售退货（1-030-203-000）
-- =============================================

-- 54. 销售退货单-不存在

DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleReturn.back.notExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货单-不存在', 'erp.saleReturn.back.notExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 54. 销售退货单-不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturn.back.notExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货单-不存在', 'erp.saleReturn.back.notExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'sale return order not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 54. 销售退货单-不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturn.back.notExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货单-不存在', 'erp.saleReturn.back.notExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '销售退货单不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 55. 销售退货单-已审核无法删除

DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleReturn.back.approveProhibitDelete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货单-已审核无法删除', 'erp.saleReturn.back.approveProhibitDelete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 55. 销售退货单-已审核无法删除 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturn.back.approveProhibitDelete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货单-已审核无法删除', 'erp.saleReturn.back.approveProhibitDelete', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'sale return order ({}) already approved, cannot delete', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 55. 销售退货单-已审核无法删除 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturn.back.approveProhibitDelete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货单-已审核无法删除', 'erp.saleReturn.back.approveProhibitDelete', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '销售退货单({})已审核，无法删除', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 56. 销售退货单-反审核失败

DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleReturn.back.processed';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货单-反审核失败', 'erp.saleReturn.back.processed', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 56. 销售退货单-反审核失败 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturn.back.processed' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货单-反审核失败', 'erp.saleReturn.back.processed', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'reverse approval failed, only approved return order can be reversed', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 56. 销售退货单-反审核失败 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturn.back.processed' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货单-反审核失败', 'erp.saleReturn.back.processed', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '反审核失败，只有已审核的退货单才能反审核', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 57. 销售退货单-审核失败

DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleReturn.back.notApproved';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货单-审核失败', 'erp.saleReturn.back.notApproved', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 57. 销售退货单-审核失败 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturn.back.notApproved' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货单-审核失败', 'erp.saleReturn.back.notApproved', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'approval failed, only unapproved return order can be approved', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 57. 销售退货单-审核失败 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturn.back.notApproved' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货单-审核失败', 'erp.saleReturn.back.notApproved', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '审核失败，只有未审核的退货单才能审核', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 58. 销售退货单-生成单号失败

DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleReturn.back.codeGenerateFail';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货单-生成单号失败', 'erp.saleReturn.back.codeGenerateFail', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 58. 销售退货单-生成单号失败 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturn.back.codeGenerateFail' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货单-生成单号失败', 'erp.saleReturn.back.codeGenerateFail', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'failed to generate return order number, please resubmit', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 58. 销售退货单-生成单号失败 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturn.back.codeGenerateFail' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货单-生成单号失败', 'erp.saleReturn.back.codeGenerateFail', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '生成退货单失败，请重新提交', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 59. 销售退货单-已审核无法修改

DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleReturn.back.approveProhibitUpdate';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货单-已审核无法修改', 'erp.saleReturn.back.approveProhibitUpdate', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 59. 销售退货单-已审核无法修改 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturn.back.approveProhibitUpdate' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货单-已审核无法修改', 'erp.saleReturn.back.approveProhibitUpdate', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'sale return order ({}) already approved, cannot modify', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 59. 销售退货单-已审核无法修改 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturn.back.approveProhibitUpdate' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货单-已审核无法修改', 'erp.saleReturn.back.approveProhibitUpdate', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '销售退货单({})已审核，无法修改', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 60. 销售退货单-未审核无法操作

DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleReturn.back.operationNotAllowed';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货单-未审核无法操作', 'erp.saleReturn.back.operationNotAllowed', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 60. 销售退货单-未审核无法操作 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturn.back.operationNotAllowed' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货单-未审核无法操作', 'erp.saleReturn.back.operationNotAllowed', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'sale return order not approved, cannot operate', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 60. 销售退货单-未审核无法操作 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturn.back.operationNotAllowed' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货单-未审核无法操作', 'erp.saleReturn.back.operationNotAllowed', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '销售退货单未审核，无法操作', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 61. 销售退货单-退款金额超限

DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleReturn.back.refundExceed';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货单-退款金额超限', 'erp.saleReturn.back.refundExceed', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 61. 销售退货单-退款金额超限 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturn.back.refundExceed' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货单-退款金额超限', 'erp.saleReturn.back.refundExceed', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'refund amount ({}) exceeds total amount of sale return order ({})', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 61. 销售退货单-退款金额超限 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturn.back.refundExceed' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货单-退款金额超限', 'erp.saleReturn.back.refundExceed', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '退款金额({})超过销售退货单总金额({})', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 62. 销售退货单-反审核失败已存在退款单

DELETE FROM infra_i18n_key WHERE message_key = 'erp.saleReturn.back.refundExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货单-反审核失败已存在退款单', 'erp.saleReturn.back.refundExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 62. 销售退货单-反审核失败已存在退款单 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturn.back.refundExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货单-反审核失败已存在退款单', 'erp.saleReturn.back.refundExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'reverse approval failed, refund record already exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 62. 销售退货单-反审核失败已存在退款单 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.saleReturn.back.refundExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售退货单-反审核失败已存在退款单', 'erp.saleReturn.back.refundExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '反审核失败，已存在对应的退款单', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- ERP 仓库（1-030-400-000）
-- =============================================

-- 63. 仓库-不存在

DELETE FROM infra_i18n_key WHERE message_key = 'erp.warehouse.back.notExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('仓库-不存在', 'erp.warehouse.back.notExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 63. 仓库-不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.warehouse.back.notExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('仓库-不存在', 'erp.warehouse.back.notExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'warehouse not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 63. 仓库-不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.warehouse.back.notExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('仓库-不存在', 'erp.warehouse.back.notExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '仓库不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 64. 仓库-未启用

DELETE FROM infra_i18n_key WHERE message_key = 'erp.warehouse.back.notEnabled';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('仓库-未启用', 'erp.warehouse.back.notEnabled', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 64. 仓库-未启用 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.warehouse.back.notEnabled' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('仓库-未启用', 'erp.warehouse.back.notEnabled', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'warehouse ({}) not enabled', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 64. 仓库-未启用 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.warehouse.back.notEnabled' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('仓库-未启用', 'erp.warehouse.back.notEnabled', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '仓库({})未启用', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- ERP 其它入库单（1-030-401-000）
-- =============================================

-- 65. 其它入库单-不存在

DELETE FROM infra_i18n_key WHERE message_key = 'erp.stockIn.back.notExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('其它入库单-不存在', 'erp.stockIn.back.notExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 65. 其它入库单-不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.stockIn.back.notExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('其它入库单-不存在', 'erp.stockIn.back.notExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'other inbound order not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 65. 其它入库单-不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.stockIn.back.notExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('其它入库单-不存在', 'erp.stockIn.back.notExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '其它入库单不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 66. 其它入库单-已审核无法删除

DELETE FROM infra_i18n_key WHERE message_key = 'erp.stockIn.back.approveProhibitDelete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('其它入库单-已审核无法删除', 'erp.stockIn.back.approveProhibitDelete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 66. 其它入库单-已审核无法删除 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.stockIn.back.approveProhibitDelete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('其它入库单-已审核无法删除', 'erp.stockIn.back.approveProhibitDelete', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'other inbound order ({}) already approved, cannot delete', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 66. 其它入库单-已审核无法删除 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.stockIn.back.approveProhibitDelete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('其它入库单-已审核无法删除', 'erp.stockIn.back.approveProhibitDelete', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '其它入库单({})已审核，无法删除', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 67. 其它入库单-反审核失败

DELETE FROM infra_i18n_key WHERE message_key = 'erp.stockIn.back.processed';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('其它入库单-反审核失败', 'erp.stockIn.back.processed', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 67. 其它入库单-反审核失败 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.stockIn.back.processed' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('其它入库单-反审核失败', 'erp.stockIn.back.processed', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'reverse approval failed, only approved inbound order can be reversed', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 67. 其它入库单-反审核失败 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.stockIn.back.processed' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('其它入库单-反审核失败', 'erp.stockIn.back.processed', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '反审核失败，只有已审核的入库单才能反审核', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 68. 其它入库单-审核失败

DELETE FROM infra_i18n_key WHERE message_key = 'erp.stockIn.back.notApproved';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('其它入库单-审核失败', 'erp.stockIn.back.notApproved', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 68. 其它入库单-审核失败 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.stockIn.back.notApproved' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('其它入库单-审核失败', 'erp.stockIn.back.notApproved', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'approval failed, only unapproved inbound order can be approved', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 68. 其它入库单-审核失败 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.stockIn.back.notApproved' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('其它入库单-审核失败', 'erp.stockIn.back.notApproved', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '审核失败，只有未审核的入库单才能审核', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 69. 其它入库单-生成单号失败

DELETE FROM infra_i18n_key WHERE message_key = 'erp.stockIn.back.codeGenerateFail';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('其它入库单-生成单号失败', 'erp.stockIn.back.codeGenerateFail', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 69. 其它入库单-生成单号失败 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.stockIn.back.codeGenerateFail' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('其它入库单-生成单号失败', 'erp.stockIn.back.codeGenerateFail', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'failed to generate inbound order number, please resubmit', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 69. 其它入库单-生成单号失败 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.stockIn.back.codeGenerateFail' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('其它入库单-生成单号失败', 'erp.stockIn.back.codeGenerateFail', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '生成入库单失败，请重新提交', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 70. 其它入库单-已审核无法修改

DELETE FROM infra_i18n_key WHERE message_key = 'erp.stockIn.back.approveProhibitUpdate';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('其它入库单-已审核无法修改', 'erp.stockIn.back.approveProhibitUpdate', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 70. 其它入库单-已审核无法修改 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.stockIn.back.approveProhibitUpdate' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('其它入库单-已审核无法修改', 'erp.stockIn.back.approveProhibitUpdate', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'other inbound order ({}) already approved, cannot modify', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 70. 其它入库单-已审核无法修改 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.stockIn.back.approveProhibitUpdate' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('其它入库单-已审核无法修改', 'erp.stockIn.back.approveProhibitUpdate', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '其它入库单({})已审核，无法修改', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- ERP 其它出库单（1-030-402-000）
-- =============================================

-- 71. 其它出库单-不存在

DELETE FROM infra_i18n_key WHERE message_key = 'erp.stockOut.back.notExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('其它出库单-不存在', 'erp.stockOut.back.notExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 71. 其它出库单-不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.stockOut.back.notExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('其它出库单-不存在', 'erp.stockOut.back.notExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'other outbound order not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 71. 其它出库单-不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.stockOut.back.notExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('其它出库单-不存在', 'erp.stockOut.back.notExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '其它出库单不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 72. 其它出库单-已审核无法删除

DELETE FROM infra_i18n_key WHERE message_key = 'erp.stockOut.back.approveProhibitDelete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('其它出库单-已审核无法删除', 'erp.stockOut.back.approveProhibitDelete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 72. 其它出库单-已审核无法删除 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.stockOut.back.approveProhibitDelete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('其它出库单-已审核无法删除', 'erp.stockOut.back.approveProhibitDelete', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'other outbound order ({}) already approved, cannot delete', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 72. 其它出库单-已审核无法删除 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.stockOut.back.approveProhibitDelete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('其它出库单-已审核无法删除', 'erp.stockOut.back.approveProhibitDelete', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '其它出库单({})已审核，无法删除', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 73. 其它出库单-反审核失败

DELETE FROM infra_i18n_key WHERE message_key = 'erp.stockOut.back.processed';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('其它出库单-反审核失败', 'erp.stockOut.back.processed', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 73. 其它出库单-反审核失败 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.stockOut.back.processed' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('其它出库单-反审核失败', 'erp.stockOut.back.processed', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'reverse approval failed, only approved outbound order can be reversed', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 73. 其它出库单-反审核失败 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.stockOut.back.processed' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('其它出库单-反审核失败', 'erp.stockOut.back.processed', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '反审核失败，只有已审核的出库单才能反审核', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 74. 其它出库单-审核失败

DELETE FROM infra_i18n_key WHERE message_key = 'erp.stockOut.back.notApproved';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('其它出库单-审核失败', 'erp.stockOut.back.notApproved', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 74. 其它出库单-审核失败 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.stockOut.back.notApproved' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('其它出库单-审核失败', 'erp.stockOut.back.notApproved', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'approval failed, only unapproved outbound order can be approved', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 74. 其它出库单-审核失败 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.stockOut.back.notApproved' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('其它出库单-审核失败', 'erp.stockOut.back.notApproved', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '审核失败，只有未审核的出库单才能审核', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 75. 其它出库单-生成单号失败

DELETE FROM infra_i18n_key WHERE message_key = 'erp.stockOut.back.codeGenerateFail';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('其它出库单-生成单号失败', 'erp.stockOut.back.codeGenerateFail', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 75. 其它出库单-生成单号失败 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.stockOut.back.codeGenerateFail' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('其它出库单-生成单号失败', 'erp.stockOut.back.codeGenerateFail', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'failed to generate outbound order number, please resubmit', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 75. 其它出库单-生成单号失败 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.stockOut.back.codeGenerateFail' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('其它出库单-生成单号失败', 'erp.stockOut.back.codeGenerateFail', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '生成出库单失败，请重新提交', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 76. 其它出库单-已审核无法修改

DELETE FROM infra_i18n_key WHERE message_key = 'erp.stockOut.back.approveProhibitUpdate';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('其它出库单-已审核无法修改', 'erp.stockOut.back.approveProhibitUpdate', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 76. 其它出库单-已审核无法修改 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.stockOut.back.approveProhibitUpdate' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('其它出库单-已审核无法修改', 'erp.stockOut.back.approveProhibitUpdate', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'other outbound order ({}) already approved, cannot modify', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 76. 其它出库单-已审核无法修改 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.stockOut.back.approveProhibitUpdate' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('其它出库单-已审核无法修改', 'erp.stockOut.back.approveProhibitUpdate', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '其它出库单({})已审核，无法修改', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- ERP 库存调拨单（1-030-403-000）
-- =============================================

-- 77. 库存调拨单-不存在

DELETE FROM infra_i18n_key WHERE message_key = 'erp.stockMove.back.notExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('库存调拨单-不存在', 'erp.stockMove.back.notExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 77. 库存调拨单-不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.stockMove.back.notExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('库存调拨单-不存在', 'erp.stockMove.back.notExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'stock transfer order not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 77. 库存调拨单-不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.stockMove.back.notExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('库存调拨单-不存在', 'erp.stockMove.back.notExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '库存调拨单不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 78. 库存调拨单-已审核无法删除

DELETE FROM infra_i18n_key WHERE message_key = 'erp.stockMove.back.approveProhibitDelete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('库存调拨单-已审核无法删除', 'erp.stockMove.back.approveProhibitDelete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 78. 库存调拨单-已审核无法删除 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.stockMove.back.approveProhibitDelete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('库存调拨单-已审核无法删除', 'erp.stockMove.back.approveProhibitDelete', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'stock transfer order ({}) already approved, cannot delete', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 78. 库存调拨单-已审核无法删除 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.stockMove.back.approveProhibitDelete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('库存调拨单-已审核无法删除', 'erp.stockMove.back.approveProhibitDelete', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '库存调拨单({})已审核，无法删除', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 79. 库存调拨单-反审核失败

DELETE FROM infra_i18n_key WHERE message_key = 'erp.stockMove.back.processed';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('库存调拨单-反审核失败', 'erp.stockMove.back.processed', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 79. 库存调拨单-反审核失败 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.stockMove.back.processed' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('库存调拨单-反审核失败', 'erp.stockMove.back.processed', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'reverse approval failed, only approved transfer order can be reversed', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 79. 库存调拨单-反审核失败 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.stockMove.back.processed' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('库存调拨单-反审核失败', 'erp.stockMove.back.processed', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '反审核失败，只有已审核的调拨单才能反审核', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 80. 库存调拨单-审核失败

DELETE FROM infra_i18n_key WHERE message_key = 'erp.stockMove.back.notApproved';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('库存调拨单-审核失败', 'erp.stockMove.back.notApproved', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 80. 库存调拨单-审核失败 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.stockMove.back.notApproved' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('库存调拨单-审核失败', 'erp.stockMove.back.notApproved', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'approval failed, only unapproved transfer order can be approved', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 80. 库存调拨单-审核失败 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.stockMove.back.notApproved' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('库存调拨单-审核失败', 'erp.stockMove.back.notApproved', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '审核失败，只有未审核的调拨单才能审核', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 81. 库存调拨单-生成单号失败

DELETE FROM infra_i18n_key WHERE message_key = 'erp.stockMove.back.codeGenerateFail';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('库存调拨单-生成单号失败', 'erp.stockMove.back.codeGenerateFail', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 81. 库存调拨单-生成单号失败 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.stockMove.back.codeGenerateFail' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('库存调拨单-生成单号失败', 'erp.stockMove.back.codeGenerateFail', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'failed to generate transfer order number, please resubmit', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 81. 库存调拨单-生成单号失败 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.stockMove.back.codeGenerateFail' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('库存调拨单-生成单号失败', 'erp.stockMove.back.codeGenerateFail', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '生成调拨单号失败，请重新提交', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 82. 库存调拨单-已审核无法修改

DELETE FROM infra_i18n_key WHERE message_key = 'erp.stockMove.back.approveProhibitUpdate';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('库存调拨单-已审核无法修改', 'erp.stockMove.back.approveProhibitUpdate', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 82. 库存调拨单-已审核无法修改 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.stockMove.back.approveProhibitUpdate' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('库存调拨单-已审核无法修改', 'erp.stockMove.back.approveProhibitUpdate', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'stock transfer order ({}) already approved, cannot modify', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 82. 库存调拨单-已审核无法修改 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.stockMove.back.approveProhibitUpdate' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('库存调拨单-已审核无法修改', 'erp.stockMove.back.approveProhibitUpdate', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '库存调拨单({})已审核，无法修改', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- ERP 库存盘点单（1-030-403-000）
-- =============================================

-- 83. 库存盘点单-不存在

DELETE FROM infra_i18n_key WHERE message_key = 'erp.stockCheck.back.notExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('库存盘点单-不存在', 'erp.stockCheck.back.notExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 83. 库存盘点单-不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.stockCheck.back.notExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('库存盘点单-不存在', 'erp.stockCheck.back.notExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'stock check order not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 83. 库存盘点单-不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.stockCheck.back.notExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('库存盘点单-不存在', 'erp.stockCheck.back.notExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '库存盘点单不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 84. 库存盘点单-已审核无法删除

DELETE FROM infra_i18n_key WHERE message_key = 'erp.stockCheck.back.approveProhibitDelete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('库存盘点单-已审核无法删除', 'erp.stockCheck.back.approveProhibitDelete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 84. 库存盘点单-已审核无法删除 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.stockCheck.back.approveProhibitDelete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('库存盘点单-已审核无法删除', 'erp.stockCheck.back.approveProhibitDelete', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'stock check order ({}) already approved, cannot delete', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 84. 库存盘点单-已审核无法删除 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.stockCheck.back.approveProhibitDelete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('库存盘点单-已审核无法删除', 'erp.stockCheck.back.approveProhibitDelete', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '库存盘点单({})已审核，无法删除', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 85. 库存盘点单-反审核失败

DELETE FROM infra_i18n_key WHERE message_key = 'erp.stockCheck.back.processed';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('库存盘点单-反审核失败', 'erp.stockCheck.back.processed', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 85. 库存盘点单-反审核失败 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.stockCheck.back.processed' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('库存盘点单-反审核失败', 'erp.stockCheck.back.processed', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'reverse approval failed, only approved check order can be reversed', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 85. 库存盘点单-反审核失败 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.stockCheck.back.processed' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('库存盘点单-反审核失败', 'erp.stockCheck.back.processed', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '反审核失败，只有已审核的盘点单才能反审核', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 86. 库存盘点单-审核失败

DELETE FROM infra_i18n_key WHERE message_key = 'erp.stockCheck.back.notApproved';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('库存盘点单-审核失败', 'erp.stockCheck.back.notApproved', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 86. 库存盘点单-审核失败 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.stockCheck.back.notApproved' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('库存盘点单-审核失败', 'erp.stockCheck.back.notApproved', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'approval failed, only unapproved check order can be approved', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 86. 库存盘点单-审核失败 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.stockCheck.back.notApproved' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('库存盘点单-审核失败', 'erp.stockCheck.back.notApproved', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '审核失败，只有未审核的盘点单才能审核', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 87. 库存盘点单-生成单号失败

DELETE FROM infra_i18n_key WHERE message_key = 'erp.stockCheck.back.codeGenerateFail';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('库存盘点单-生成单号失败', 'erp.stockCheck.back.codeGenerateFail', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 87. 库存盘点单-生成单号失败 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.stockCheck.back.codeGenerateFail' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('库存盘点单-生成单号失败', 'erp.stockCheck.back.codeGenerateFail', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'failed to generate check order number, please resubmit', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 87. 库存盘点单-生成单号失败 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.stockCheck.back.codeGenerateFail' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('库存盘点单-生成单号失败', 'erp.stockCheck.back.codeGenerateFail', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '生成盘点单号失败，请重新提交', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 88. 库存盘点单-已审核无法修改

DELETE FROM infra_i18n_key WHERE message_key = 'erp.stockCheck.back.approveProhibitUpdate';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('库存盘点单-已审核无法修改', 'erp.stockCheck.back.approveProhibitUpdate', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 88. 库存盘点单-已审核无法修改 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.stockCheck.back.approveProhibitUpdate' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('库存盘点单-已审核无法修改', 'erp.stockCheck.back.approveProhibitUpdate', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'stock check order ({}) already approved, cannot modify', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 88. 库存盘点单-已审核无法修改 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.stockCheck.back.approveProhibitUpdate' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('库存盘点单-已审核无法修改', 'erp.stockCheck.back.approveProhibitUpdate', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '库存盘点单({})已审核，无法修改', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- ERP 产品库存（1-030-404-000）
-- =============================================

-- 89. 产品库存-不足

DELETE FROM infra_i18n_key WHERE message_key = 'erp.stockCount.back.insufficient';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('产品库存-不足', 'erp.stockCount.back.insufficient', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 89. 产品库存-不足 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.stockCount.back.insufficient' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('产品库存-不足', 'erp.stockCount.back.insufficient', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'operation failed, product ({}) in warehouse ({}) stock: {}, less than change quantity: {}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 89. 产品库存-不足 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.stockCount.back.insufficient' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('产品库存-不足', 'erp.stockCount.back.insufficient', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '操作失败，产品({})所在仓库({})的库存：{}，小于变更数量：{}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 90. 产品库存-不足2

DELETE FROM infra_i18n_key WHERE message_key = 'erp.stockCount.back.insufficient2';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('产品库存-不足', 'erp.stockCount.back.insufficient2', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 90. 产品库存-不足2 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.stockCount.back.insufficient2' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('产品库存-不足', 'erp.stockCount.back.insufficient2', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'operation failed, product ({}) in warehouse ({}) stock insufficient', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 90. 产品库存-不足2 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.stockCount.back.insufficient2' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('产品库存-不足', 'erp.stockCount.back.insufficient2', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '操作失败，产品({})所在仓库({})的库存不足', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- ERP 产品（1-030-500-000）
-- =============================================

-- 91. 产品-不存在

DELETE FROM infra_i18n_key WHERE message_key = 'erp.product.back.notExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('产品-不存在', 'erp.product.back.notExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 91. 产品-不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.product.back.notExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('产品-不存在', 'erp.product.back.notExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'product not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 91. 产品-不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.product.back.notExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('产品-不存在', 'erp.product.back.notExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '产品不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 92. 产品-未启用

DELETE FROM infra_i18n_key WHERE message_key = 'erp.product.back.notEnabled';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('产品-未启用', 'erp.product.back.notEnabled', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 92. 产品-未启用 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.product.back.notEnabled' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('产品-未启用', 'erp.product.back.notEnabled', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'product ({}) not enabled', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 92. 产品-未启用 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.product.back.notEnabled' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('产品-未启用', 'erp.product.back.notEnabled', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '产品({})未启用', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- ERP 产品分类（1-030-501-000）
-- =============================================

-- 93. 产品分类-不存在

DELETE FROM infra_i18n_key WHERE message_key = 'erp.productCategory.back.notExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('产品分类-不存在', 'erp.productCategory.back.notExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 93. 产品分类-不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.productCategory.back.notExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('产品分类-不存在', 'erp.productCategory.back.notExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'product category not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 93. 产品分类-不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.productCategory.back.notExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('产品分类-不存在', 'erp.productCategory.back.notExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '产品分类不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 94. 产品分类-存在子级

DELETE FROM infra_i18n_key WHERE message_key = 'erp.productCategory.back.hasChildren';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('产品分类-存在子级', 'erp.productCategory.back.hasChildren', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 94. 产品分类-存在子级 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.productCategory.back.hasChildren' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('产品分类-存在子级', 'erp.productCategory.back.hasChildren', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'product category has children, cannot delete', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 94. 产品分类-存在子级 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.productCategory.back.hasChildren' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('产品分类-存在子级', 'erp.productCategory.back.hasChildren', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '存在子产品分类，无法删除', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 95. 产品分类-父级不存在

DELETE FROM infra_i18n_key WHERE message_key = 'erp.productCategory.back.parentNotExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('产品分类-父级不存在', 'erp.productCategory.back.parentNotExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 95. 产品分类-父级不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.productCategory.back.parentNotExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('产品分类-父级不存在', 'erp.productCategory.back.parentNotExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'parent product category not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 95. 产品分类-父级不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.productCategory.back.parentNotExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('产品分类-父级不存在', 'erp.productCategory.back.parentNotExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '父级产品分类不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 96. 产品分类-不能设置自己为父级

DELETE FROM infra_i18n_key WHERE message_key = 'erp.productCategory.back.parentSelfError';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('产品分类-不能设置自己为父级', 'erp.productCategory.back.parentSelfError', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 96. 产品分类-不能设置自己为父级 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.productCategory.back.parentSelfError' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('产品分类-不能设置自己为父级', 'erp.productCategory.back.parentSelfError', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'cannot set itself as parent product category', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 96. 产品分类-不能设置自己为父级 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.productCategory.back.parentSelfError' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('产品分类-不能设置自己为父级', 'erp.productCategory.back.parentSelfError', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '不能设置自己为父产品分类', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 97. 产品分类-名称重复

DELETE FROM infra_i18n_key WHERE message_key = 'erp.productCategory.back.nameDuplicate';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('产品分类-名称重复', 'erp.productCategory.back.nameDuplicate', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 97. 产品分类-名称重复 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.productCategory.back.nameDuplicate' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('产品分类-名称重复', 'erp.productCategory.back.nameDuplicate', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'product category name duplicate', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 97. 产品分类-名称重复 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.productCategory.back.nameDuplicate' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('产品分类-名称重复', 'erp.productCategory.back.nameDuplicate', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '已经存在该分类名称的产品分类', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 98. 产品分类-不能设置子级为父级

DELETE FROM infra_i18n_key WHERE message_key = 'erp.productCategory.back.parentChildError';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('产品分类-不能设置子级为父级', 'erp.productCategory.back.parentChildError', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 98. 产品分类-不能设置子级为父级 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.productCategory.back.parentChildError' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('产品分类-不能设置子级为父级', 'erp.productCategory.back.parentChildError', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'cannot set child as parent product category', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 98. 产品分类-不能设置子级为父级 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.productCategory.back.parentChildError' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('产品分类-不能设置子级为父级', 'erp.productCategory.back.parentChildError', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '不能设置自己的子分类为父分类', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 99. 产品分类-存在产品使用该分类

DELETE FROM infra_i18n_key WHERE message_key = 'erp.productCategory.back.hasProduct';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('产品分类-存在产品使用该分类', 'erp.productCategory.back.hasProduct', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 99. 产品分类-存在产品使用该分类 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.productCategory.back.hasProduct' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('产品分类-存在产品使用该分类', 'erp.productCategory.back.hasProduct', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'product category has products, cannot delete', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 99. 产品分类-存在产品使用该分类 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.productCategory.back.hasProduct' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('产品分类-存在产品使用该分类', 'erp.productCategory.back.hasProduct', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '存在产品使用该分类，无法删除', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- ERP 产品单位（1-030-502-000）
-- =============================================

-- 100. 产品单位-不存在

DELETE FROM infra_i18n_key WHERE message_key = 'erp.productUnit.back.notExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('产品单位-不存在', 'erp.productUnit.back.notExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 100. 产品单位-不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.productUnit.back.notExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('产品单位-不存在', 'erp.productUnit.back.notExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'product unit not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 100. 产品单位-不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.productUnit.back.notExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('产品单位-不存在', 'erp.productUnit.back.notExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '产品单位不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 101. 产品单位-名称重复

DELETE FROM infra_i18n_key WHERE message_key = 'erp.productUnit.back.nameDuplicate';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('产品单位-名称重复', 'erp.productUnit.back.nameDuplicate', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 101. 产品单位-名称重复 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.productUnit.back.nameDuplicate' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('产品单位-名称重复', 'erp.productUnit.back.nameDuplicate', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'product unit name duplicate', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 101. 产品单位-名称重复 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.productUnit.back.nameDuplicate' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('产品单位-名称重复', 'erp.productUnit.back.nameDuplicate', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '已存在该名字的产品单位', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 102. 产品单位-存在产品使用该单位

DELETE FROM infra_i18n_key WHERE message_key = 'erp.productUnit.back.hasProduct';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('产品单位-存在产品使用该单位', 'erp.productUnit.back.hasProduct', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 102. 产品单位-存在产品使用该单位 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.productUnit.back.hasProduct' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('产品单位-存在产品使用该单位', 'erp.productUnit.back.hasProduct', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'product unit has products, cannot delete', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 102. 产品单位-存在产品使用该单位 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.productUnit.back.hasProduct' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('产品单位-存在产品使用该单位', 'erp.productUnit.back.hasProduct', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '存在产品使用该单位，无法删除', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- ERP 结算账户（1-030-600-000）
-- =============================================

-- 103. 结算账户-不存在

DELETE FROM infra_i18n_key WHERE message_key = 'erp.account.back.notExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('结算账户-不存在', 'erp.account.back.notExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 103. 结算账户-不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.account.back.notExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('结算账户-不存在', 'erp.account.back.notExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'account not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 103. 结算账户-不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.account.back.notExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('结算账户-不存在', 'erp.account.back.notExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '结算账户不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 104. 结算账户-未启用

DELETE FROM infra_i18n_key WHERE message_key = 'erp.account.back.notEnabled';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('结算账户-未启用', 'erp.account.back.notEnabled', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 104. 结算账户-未启用 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.account.back.notEnabled' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('结算账户-未启用', 'erp.account.back.notEnabled', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'account ({}) not enabled', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 104. 结算账户-未启用 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.account.back.notEnabled' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('结算账户-未启用', 'erp.account.back.notEnabled', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '结算账户({})未启用', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- ERP 付款单（1-030-601-000）
-- =============================================

-- 105. 付款单-不存在

DELETE FROM infra_i18n_key WHERE message_key = 'erp.financePayment.back.notExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('付款单-不存在', 'erp.financePayment.back.notExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 105. 付款单-不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.financePayment.back.notExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('付款单-不存在', 'erp.financePayment.back.notExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'payment order not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 105. 付款单-不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.financePayment.back.notExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('付款单-不存在', 'erp.financePayment.back.notExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '付款单不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 106. 付款单-已审核无法删除

DELETE FROM infra_i18n_key WHERE message_key = 'erp.financePayment.back.approveProhibitDelete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('付款单-已审核无法删除', 'erp.financePayment.back.approveProhibitDelete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 106. 付款单-已审核无法删除 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.financePayment.back.approveProhibitDelete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('付款单-已审核无法删除', 'erp.financePayment.back.approveProhibitDelete', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'payment order ({}) already approved, cannot delete', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 106. 付款单-已审核无法删除 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.financePayment.back.approveProhibitDelete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('付款单-已审核无法删除', 'erp.financePayment.back.approveProhibitDelete', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '付款单({})已审核，无法删除', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 107. 付款单-反审核失败

DELETE FROM infra_i18n_key WHERE message_key = 'erp.financePayment.back.processed';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('付款单-反审核失败', 'erp.financePayment.back.processed', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 107. 付款单-反审核失败 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.financePayment.back.processed' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('付款单-反审核失败', 'erp.financePayment.back.processed', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'reverse approval failed, only approved payment order can be reversed', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 107. 付款单-反审核失败 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.financePayment.back.processed' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('付款单-反审核失败', 'erp.financePayment.back.processed', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '反审核失败，只有已审核的付款单才能反审核', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 108. 付款单-审核失败

DELETE FROM infra_i18n_key WHERE message_key = 'erp.financePayment.back.notApproved';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('付款单-审核失败', 'erp.financePayment.back.notApproved', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 108. 付款单-审核失败 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.financePayment.back.notApproved' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('付款单-审核失败', 'erp.financePayment.back.notApproved', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'approval failed, only unapproved payment order can be approved', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 108. 付款单-审核失败 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.financePayment.back.notApproved' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('付款单-审核失败', 'erp.financePayment.back.notApproved', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '审核失败，只有未审核的付款单才能审核', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 109. 付款单-生成单号失败

DELETE FROM infra_i18n_key WHERE message_key = 'erp.financePayment.back.codeGenerateFail';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('付款单-生成单号失败', 'erp.financePayment.back.codeGenerateFail', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 109. 付款单-生成单号失败 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.financePayment.back.codeGenerateFail' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('付款单-生成单号失败', 'erp.financePayment.back.codeGenerateFail', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'failed to generate payment order number, please resubmit', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 109. 付款单-生成单号失败 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.financePayment.back.codeGenerateFail' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('付款单-生成单号失败', 'erp.financePayment.back.codeGenerateFail', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '生成付款单号失败，请重新提交', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 110. 付款单-已审核无法修改

DELETE FROM infra_i18n_key WHERE message_key = 'erp.financePayment.back.approveProhibitUpdate';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('付款单-已审核无法修改', 'erp.financePayment.back.approveProhibitUpdate', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 110. 付款单-已审核无法修改 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.financePayment.back.approveProhibitUpdate' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('付款单-已审核无法修改', 'erp.financePayment.back.approveProhibitUpdate', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'payment order ({}) already approved, cannot modify', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 110. 付款单-已审核无法修改 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.financePayment.back.approveProhibitUpdate' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('付款单-已审核无法修改', 'erp.financePayment.back.approveProhibitUpdate', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '付款单({})已审核，无法修改', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- ERP 收款单（1-030-602-000）
-- =============================================

-- 111. 收款单-不存在

DELETE FROM infra_i18n_key WHERE message_key = 'erp.financeReceipt.back.notExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('收款单-不存在', 'erp.financeReceipt.back.notExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 111. 收款单-不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.financeReceipt.back.notExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('收款单-不存在', 'erp.financeReceipt.back.notExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'receipt order not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 111. 收款单-不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.financeReceipt.back.notExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('收款单-不存在', 'erp.financeReceipt.back.notExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '收款单不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 112. 收款单-已审核无法删除

DELETE FROM infra_i18n_key WHERE message_key = 'erp.financeReceipt.back.approveProhibitDelete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('收款单-已审核无法删除', 'erp.financeReceipt.back.approveProhibitDelete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 112. 收款单-已审核无法删除 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.financeReceipt.back.approveProhibitDelete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('收款单-已审核无法删除', 'erp.financeReceipt.back.approveProhibitDelete', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'receipt order ({}) already approved, cannot delete', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 112. 收款单-已审核无法删除 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.financeReceipt.back.approveProhibitDelete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('收款单-已审核无法删除', 'erp.financeReceipt.back.approveProhibitDelete', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '收款单({})已审核，无法删除', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 113. 收款单-反审核失败

DELETE FROM infra_i18n_key WHERE message_key = 'erp.financeReceipt.back.processed';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('收款单-反审核失败', 'erp.financeReceipt.back.processed', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 113. 收款单-反审核失败 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.financeReceipt.back.processed' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('收款单-反审核失败', 'erp.financeReceipt.back.processed', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'reverse approval failed, only approved receipt order can be reversed', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 113. 收款单-反审核失败 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.financeReceipt.back.processed' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('收款单-反审核失败', 'erp.financeReceipt.back.processed', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '反审核失败，只有已审核的收款单才能反审核', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 114. 收款单-审核失败

DELETE FROM infra_i18n_key WHERE message_key = 'erp.financeReceipt.back.notApproved';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('收款单-审核失败', 'erp.financeReceipt.back.notApproved', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 114. 收款单-审核失败 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.financeReceipt.back.notApproved' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('收款单-审核失败', 'erp.financeReceipt.back.notApproved', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'approval failed, only unapproved receipt order can be approved', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 114. 收款单-审核失败 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.financeReceipt.back.notApproved' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('收款单-审核失败', 'erp.financeReceipt.back.notApproved', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '审核失败，只有未审核的收款单才能审核', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 115. 收款单-生成单号失败

DELETE FROM infra_i18n_key WHERE message_key = 'erp.financeReceipt.back.codeGenerateFail';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('收款单-生成单号失败', 'erp.financeReceipt.back.codeGenerateFail', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 115. 收款单-生成单号失败 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.financeReceipt.back.codeGenerateFail' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('收款单-生成单号失败', 'erp.financeReceipt.back.codeGenerateFail', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'failed to generate receipt order number, please resubmit', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 115. 收款单-生成单号失败 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.financeReceipt.back.codeGenerateFail' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('收款单-生成单号失败', 'erp.financeReceipt.back.codeGenerateFail', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '生成收款单号失败，请重新提交', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 116. 收款单-已审核无法修改

DELETE FROM infra_i18n_key WHERE message_key = 'erp.financeReceipt.back.approveProhibitUpdate';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('收款单-已审核无法修改', 'erp.financeReceipt.back.approveProhibitUpdate', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 116. 收款单-已审核无法修改 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'erp.financeReceipt.back.approveProhibitUpdate' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('收款单-已审核无法修改', 'erp.financeReceipt.back.approveProhibitUpdate', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'receipt order ({}) already approved, cannot modify', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 116. 收款单-已审核无法修改 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'erp.financeReceipt.back.approveProhibitUpdate' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('收款单-已审核无法修改', 'erp.financeReceipt.back.approveProhibitUpdate', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '收款单({})已审核，无法修改', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
