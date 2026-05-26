-- =============================================
-- crm 模块错误码国际化 SQL
-- 生成时间：2026-05-25
-- 规范版本：v1.2
-- =============================================

-- ---------------------------------------------
-- 变量定义（运行时可覆盖）
-- ---------------------------------------------
SET @IS_SYSTEM = 0;
SET @USE_TYPE_EXCEPTION = 5;
SET @MODULE_TYPE = 'crm';
SET @LOCALE_TARGET_BACKEND = 1;
SET @LOCALE_EN = 'en-US';
SET @LOCALE_ZH_CN = 'zh-CN';
SET @CREATOR = '0';
SET @REMARK = 'ai auto generate';
SET @ORDER_NUM = 5;
-- =============================================
-- 合同管理 1-020-000-000
-- =============================================

-- 1. 合同-不存在

DELETE FROM infra_i18n_key WHERE message_key = 'crm.contract.back.notExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('合同-不存在', 'crm.contract.back.notExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 1. 合同-不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'crm.contract.back.notExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('合同-不存在', 'crm.contract.back.notExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'contract not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 1. 合同-不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'crm.contract.back.notExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('合同-不存在', 'crm.contract.back.notExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '合同不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. 合同-状态变更无效

DELETE FROM infra_i18n_key WHERE message_key = 'crm.contract.back.statusInvalid';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('合同-状态变更无效', 'crm.contract.back.statusInvalid', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. 合同-状态变更无效 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'crm.contract.back.statusInvalid' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('合同-状态变更无效', 'crm.contract.back.statusInvalid', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'contract status update failed, invalid status transition', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. 合同-状态变更无效 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'crm.contract.back.statusInvalid' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('合同-状态变更无效', 'crm.contract.back.statusInvalid', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '合同更新失败，原因：合同不是草稿状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. 合同-序列号生成失败

DELETE FROM infra_i18n_key WHERE message_key = 'crm.contract.back.codeGenerateFail';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('合同-序列号生成失败', 'crm.contract.back.codeGenerateFail', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. 合同-序列号生成失败 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'crm.contract.back.codeGenerateFail' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('合同-序列号生成失败', 'crm.contract.back.codeGenerateFail', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'contract serial number generation failed, duplicate detected, please retry', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. 合同-序列号生成失败 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'crm.contract.back.codeGenerateFail' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('合同-序列号生成失败', 'crm.contract.back.codeGenerateFail', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '生成合同序列号重复，请重试', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. 合同-有关联引用

DELETE FROM infra_i18n_key WHERE message_key = 'crm.contract.back.hasReference';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('合同-有关联引用', 'crm.contract.back.hasReference', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. 合同-有关联引用 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'crm.contract.back.hasReference' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('合同-有关联引用', 'crm.contract.back.hasReference', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'contract deletion failed, referenced by payment records', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. 合同-有关联引用 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'crm.contract.back.hasReference' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('合同-有关联引用', 'crm.contract.back.hasReference', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '删除合同失败，原因：有被回款所使用', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- 线索管理 1-020-001-000
-- =============================================

-- 5. 线索-不存在

DELETE FROM infra_i18n_key WHERE message_key = 'crm.clue.back.notExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('线索-不存在', 'crm.clue.back.notExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. 线索-不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'crm.clue.back.notExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('线索-不存在', 'crm.clue.back.notExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'lead not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. 线索-不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'crm.clue.back.notExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('线索-不存在', 'crm.clue.back.notExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '线索不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 6. 线索-已转化

DELETE FROM infra_i18n_key WHERE message_key = 'crm.clue.back.processed';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('线索-已转化', 'crm.clue.back.processed', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 6. 线索-已转化 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'crm.clue.back.processed' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('线索-已转化', 'crm.clue.back.processed', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'lead already converted, do not repeat', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 6. 线索-已转化 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'crm.clue.back.processed' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('线索-已转化', 'crm.clue.back.processed', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '线索已经转化过了，请勿重复转化', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- 商机管理 1-020-002-000
-- =============================================

-- 7. 商机-不存在

DELETE FROM infra_i18n_key WHERE message_key = 'crm.business.back.notExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('商机-不存在', 'crm.business.back.notExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 7. 商机-不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'crm.business.back.notExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('商机-不存在', 'crm.business.back.notExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'business opportunity not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 7. 商机-不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'crm.business.back.notExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('商机-不存在', 'crm.business.back.notExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '商机不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 8. 商机-有关联引用

DELETE FROM infra_i18n_key WHERE message_key = 'crm.business.back.hasReference';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('商机-有关联引用', 'crm.business.back.hasReference', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 8. 商机-有关联引用 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'crm.business.back.hasReference' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('商机-有关联引用', 'crm.business.back.hasReference', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'business opportunity linked to contract, cannot delete', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 8. 商机-有关联引用 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'crm.business.back.hasReference' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('商机-有关联引用', 'crm.business.back.hasReference', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '商机已关联合同，不能删除', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 9. 商机-状态变更无效

DELETE FROM infra_i18n_key WHERE message_key = 'crm.business.back.statusInvalid';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('商机-状态变更无效', 'crm.business.back.statusInvalid', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 9. 商机-状态变更无效 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'crm.business.back.statusInvalid' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('商机-状态变更无效', 'crm.business.back.statusInvalid', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'business opportunity status update failed, already in end status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 9. 商机-状态变更无效 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'crm.business.back.statusInvalid' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('商机-状态变更无效', 'crm.business.back.statusInvalid', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '更新商机状态失败，原因：已经是结束状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 10. 商机-状态未变

DELETE FROM infra_i18n_key WHERE message_key = 'crm.business.back.statusEquals';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('商机-状态未变', 'crm.business.back.statusEquals', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 10. 商机-状态未变 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'crm.business.back.statusEquals' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('商机-状态未变', 'crm.business.back.statusEquals', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'business opportunity already in this status, no update needed', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 10. 商机-状态未变 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'crm.business.back.statusEquals' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('商机-状态未变', 'crm.business.back.statusEquals', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '更新商机状态失败，原因：已经是该状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- 联系人管理 1-020-003-000
-- =============================================

-- 11. 联系人-不存在

DELETE FROM infra_i18n_key WHERE message_key = 'crm.contact.back.notExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('联系人-不存在', 'crm.contact.back.notExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 11. 联系人-不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'crm.contact.back.notExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('联系人-不存在', 'crm.contact.back.notExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'contact not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 11. 联系人-不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'crm.contact.back.notExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('联系人-不存在', 'crm.contact.back.notExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '联系人不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 12. 联系人-有关联引用

DELETE FROM infra_i18n_key WHERE message_key = 'crm.contact.back.hasReference';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('联系人-有关联引用', 'crm.contact.back.hasReference', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 12. 联系人-有关联引用 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'crm.contact.back.hasReference' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('联系人-有关联引用', 'crm.contact.back.hasReference', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'contact linked to contract, cannot delete', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 12. 联系人-有关联引用 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'crm.contact.back.hasReference' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('联系人-有关联引用', 'crm.contact.back.hasReference', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '联系人已关联合同，不能删除', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 13. 联系人-负责人更新失败

DELETE FROM infra_i18n_key WHERE message_key = 'crm.contact.back.ownerUpdateFail';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('联系人-负责人更新失败', 'crm.contact.back.ownerUpdateFail', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 13. 联系人-负责人更新失败 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'crm.contact.back.ownerUpdateFail' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('联系人-负责人更新失败', 'crm.contact.back.ownerUpdateFail', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'contact owner update failed', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 13. 联系人-负责人更新失败 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'crm.contact.back.ownerUpdateFail' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('联系人-负责人更新失败', 'crm.contact.back.ownerUpdateFail', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '更新联系人负责人失败', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- 回款 1-020-004-000
-- =============================================

-- 14. 回款-不存在

DELETE FROM infra_i18n_key WHERE message_key = 'crm.receivable.back.notExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('回款-不存在', 'crm.receivable.back.notExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 14. 回款-不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'crm.receivable.back.notExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('回款-不存在', 'crm.receivable.back.notExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'payment not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 14. 回款-不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'crm.receivable.back.notExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('回款-不存在', 'crm.receivable.back.notExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '回款不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 15. 回款-禁止编辑

DELETE FROM infra_i18n_key WHERE message_key = 'crm.receivable.back.prohibitUpdate';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('回款-禁止编辑', 'crm.receivable.back.prohibitUpdate', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 15. 回款-禁止编辑 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'crm.receivable.back.prohibitUpdate' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('回款-禁止编辑', 'crm.receivable.back.prohibitUpdate', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'payment update failed, editing prohibited', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 15. 回款-禁止编辑 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'crm.receivable.back.prohibitUpdate' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('回款-禁止编辑', 'crm.receivable.back.prohibitUpdate', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '更新回款失败，原因：禁止编辑', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 16. 回款-禁止删除

DELETE FROM infra_i18n_key WHERE message_key = 'crm.receivable.back.prohibitDelete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('回款-禁止删除', 'crm.receivable.back.prohibitDelete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 16. 回款-禁止删除 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'crm.receivable.back.prohibitDelete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('回款-禁止删除', 'crm.receivable.back.prohibitDelete', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'payment deletion failed, referenced by payment plan, cannot delete', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 16. 回款-禁止删除 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'crm.receivable.back.prohibitDelete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('回款-禁止删除', 'crm.receivable.back.prohibitDelete', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '删除回款失败，原因：被回款计划所使用，不允许删除', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 17. 回款-审批通过禁止删除

DELETE FROM infra_i18n_key WHERE message_key = 'crm.receivable.back.approveProhibitDelete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('回款-审批通过禁止删除', 'crm.receivable.back.approveProhibitDelete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 17. 回款-审批通过禁止删除 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'crm.receivable.back.approveProhibitDelete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('回款-审批通过禁止删除', 'crm.receivable.back.approveProhibitDelete', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'payment deletion failed, approval already passed', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 17. 回款-审批通过禁止删除 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'crm.receivable.back.approveProhibitDelete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('回款-审批通过禁止删除', 'crm.receivable.back.approveProhibitDelete', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '删除回款失败，原因：回款审批已通过', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 18. 回款-序列号生成失败

DELETE FROM infra_i18n_key WHERE message_key = 'crm.receivable.back.codeGenerateFail';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('回款-序列号生成失败', 'crm.receivable.back.codeGenerateFail', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 18. 回款-序列号生成失败 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'crm.receivable.back.codeGenerateFail' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('回款-序列号生成失败', 'crm.receivable.back.codeGenerateFail', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'payment serial number generation failed, duplicate detected, please retry', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 18. 回款-序列号生成失败 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'crm.receivable.back.codeGenerateFail' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('回款-序列号生成失败', 'crm.receivable.back.codeGenerateFail', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '生成回款序列号重复，请重试', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 19. 回款-合同未审核

DELETE FROM infra_i18n_key WHERE message_key = 'crm.receivable.back.contractNotApproved';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('回款-合同未审核', 'crm.receivable.back.contractNotApproved', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 19. 回款-合同未审核 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'crm.receivable.back.contractNotApproved' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('回款-合同未审核', 'crm.receivable.back.contractNotApproved', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'payment creation failed, contract not approved', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 19. 回款-合同未审核 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'crm.receivable.back.contractNotApproved' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('回款-合同未审核', 'crm.receivable.back.contractNotApproved', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '创建回款失败，原因：合同不是审核通过状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 20. 回款-金额超限

DELETE FROM infra_i18n_key WHERE message_key = 'crm.receivable.back.amountExceed';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('回款-金额超限', 'crm.receivable.back.amountExceed', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 20. 回款-金额超限 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'crm.receivable.back.amountExceed' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('回款-金额超限', 'crm.receivable.back.amountExceed', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'payment creation failed, payment amount exceeds contract amount, remaining refundable: {} yuan', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 20. 回款-金额超限 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'crm.receivable.back.amountExceed' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('回款-金额超限', 'crm.receivable.back.amountExceed', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '创建回款失败，原因：回款金额超出合同金额，目前剩余可退：{} 元', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- 回款计划 1-020-005-000
-- =============================================

-- 21. 回款计划-不存在

DELETE FROM infra_i18n_key WHERE message_key = 'crm.receivablePlan.back.notExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('回款计划-不存在', 'crm.receivablePlan.back.notExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 21. 回款计划-不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'crm.receivablePlan.back.notExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('回款计划-不存在', 'crm.receivablePlan.back.notExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'payment plan not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 21. 回款计划-不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'crm.receivablePlan.back.notExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('回款计划-不存在', 'crm.receivablePlan.back.notExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '回款计划不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 22. 回款计划-有关联引用

DELETE FROM infra_i18n_key WHERE message_key = 'crm.receivablePlan.back.hasReference';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('回款计划-有关联引用', 'crm.receivablePlan.back.hasReference', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 22. 回款计划-有关联引用 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'crm.receivablePlan.back.hasReference' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('回款计划-有关联引用', 'crm.receivablePlan.back.hasReference', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'payment plan update failed, corresponding repayment already exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 22. 回款计划-有关联引用 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'crm.receivablePlan.back.hasReference' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('回款计划-有关联引用', 'crm.receivablePlan.back.hasReference', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '更新回款计划失败，原因：已经有对应的还款', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- 客户管理 1-020-006-000
-- =============================================

-- 23. 客户-不存在

DELETE FROM infra_i18n_key WHERE message_key = 'crm.customer.back.notExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-不存在', 'crm.customer.back.notExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 23. 客户-不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'crm.customer.back.notExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-不存在', 'crm.customer.back.notExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'customer not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 23. 客户-不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'crm.customer.back.notExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-不存在', 'crm.customer.back.notExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '客户不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 24. 客户-负责人已存在

DELETE FROM infra_i18n_key WHERE message_key = 'crm.customer.back.ownerExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-负责人已存在', 'crm.customer.back.ownerExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 24. 客户-负责人已存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'crm.customer.back.ownerExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-负责人已存在', 'crm.customer.back.ownerExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'customer ({}) already has owner assigned', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 24. 客户-负责人已存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'crm.customer.back.ownerExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-负责人已存在', 'crm.customer.back.ownerExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '客户【{}】已存在所属负责人', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 25. 客户-已锁定

DELETE FROM infra_i18n_key WHERE message_key = 'crm.customer.back.locked';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-已锁定', 'crm.customer.back.locked', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 25. 客户-已锁定 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'crm.customer.back.locked' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-已锁定', 'crm.customer.back.locked', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'customer ({}) status already locked', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 25. 客户-已锁定 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'crm.customer.back.locked' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-已锁定', 'crm.customer.back.locked', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '客户【{}】状态已锁定', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 26. 客户-已交易

DELETE FROM infra_i18n_key WHERE message_key = 'crm.customer.back.dealStatusInvalid';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-已交易', 'crm.customer.back.dealStatusInvalid', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 26. 客户-已交易 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'crm.customer.back.dealStatusInvalid' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-已交易', 'crm.customer.back.dealStatusInvalid', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'customer already dealt', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 26. 客户-已交易 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'crm.customer.back.dealStatusInvalid' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-已交易', 'crm.customer.back.dealStatusInvalid', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '客户已交易', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 27. 客户-已在公海

DELETE FROM infra_i18n_key WHERE message_key = 'crm.customer.back.alreadyInPool';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-已在公海', 'crm.customer.back.alreadyInPool', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 27. 客户-已在公海 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'crm.customer.back.alreadyInPool' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-已在公海', 'crm.customer.back.alreadyInPool', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'customer ({}) pool transfer failed, already in pool', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 27. 客户-已在公海 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'crm.customer.back.alreadyInPool' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-已在公海', 'crm.customer.back.alreadyInPool', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '客户【{}】放入公海失败，原因：已经是公海客户', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 28. 客户-公海失败已锁定

DELETE FROM infra_i18n_key WHERE message_key = 'crm.customer.back.poolFailLocked';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-公海失败已锁定', 'crm.customer.back.poolFailLocked', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 28. 客户-公海失败已锁定 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'crm.customer.back.poolFailLocked' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-公海失败已锁定', 'crm.customer.back.poolFailLocked', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'customer ({}) pool transfer failed, customer is locked', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 28. 客户-公海失败已锁定 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'crm.customer.back.poolFailLocked' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-公海失败已锁定', 'crm.customer.back.poolFailLocked', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '客户【{}】放入公海失败，原因：客户已锁定', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 29. 客户-负责人更新失败

DELETE FROM infra_i18n_key WHERE message_key = 'crm.customer.back.ownerUpdateFail';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-负责人更新失败', 'crm.customer.back.ownerUpdateFail', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 29. 客户-负责人更新失败 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'crm.customer.back.ownerUpdateFail' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-负责人更新失败', 'crm.customer.back.ownerUpdateFail', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'customer ({}) owner update failed, system error', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 29. 客户-负责人更新失败 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'crm.customer.back.ownerUpdateFail' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-负责人更新失败', 'crm.customer.back.ownerUpdateFail', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '更新客户【{}】负责人失败, 原因：系统异常', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 30. 客户-已锁定

DELETE FROM infra_i18n_key WHERE message_key = 'crm.customer.back.alreadyLocked';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-已锁定', 'crm.customer.back.alreadyLocked', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 30. 客户-已锁定 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'crm.customer.back.alreadyLocked' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-已锁定', 'crm.customer.back.alreadyLocked', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'customer lock failed, already in locked status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 30. 客户-已锁定 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'crm.customer.back.alreadyLocked' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-已锁定', 'crm.customer.back.alreadyLocked', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '锁定客户失败，它已经处于锁定状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 31. 客户-已解锁

DELETE FROM infra_i18n_key WHERE message_key = 'crm.customer.back.alreadyUnlocked';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-已解锁', 'crm.customer.back.alreadyUnlocked', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 31. 客户-已解锁 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'crm.customer.back.alreadyUnlocked' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-已解锁', 'crm.customer.back.alreadyUnlocked', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'customer unlock failed, already in unlocked status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 31. 客户-已解锁 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'crm.customer.back.alreadyUnlocked' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-已解锁', 'crm.customer.back.alreadyUnlocked', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '解锁客户失败，它已经处于未锁定状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 32. 客户-锁定超限

DELETE FROM infra_i18n_key WHERE message_key = 'crm.customer.back.lockQuotaExceeded';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-锁定超限', 'crm.customer.back.lockQuotaExceeded', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 32. 客户-锁定超限 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'crm.customer.back.lockQuotaExceeded' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-锁定超限', 'crm.customer.back.lockQuotaExceeded', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'customer lock failed, lock quota exceeded', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 32. 客户-锁定超限 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'crm.customer.back.lockQuotaExceeded' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-锁定超限', 'crm.customer.back.lockQuotaExceeded', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '锁定客户失败，超出锁定规则上限', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 33. 客户-拥有数量超限

DELETE FROM infra_i18n_key WHERE message_key = 'crm.customer.back.ownerQuotaExceeded';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-拥有数量超限', 'crm.customer.back.ownerQuotaExceeded', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 33. 客户-拥有数量超限 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'crm.customer.back.ownerQuotaExceeded' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-拥有数量超限', 'crm.customer.back.ownerQuotaExceeded', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'operation failed, customer count quota exceeded', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 33. 客户-拥有数量超限 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'crm.customer.back.ownerQuotaExceeded' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-拥有数量超限', 'crm.customer.back.ownerQuotaExceeded', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '操作失败，超出客户数拥有上限', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 34. 客户-有关联引用

DELETE FROM infra_i18n_key WHERE message_key = 'crm.customer.back.hasReference';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-有关联引用', 'crm.customer.back.hasReference', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 34. 客户-有关联引用 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'crm.customer.back.hasReference' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-有关联引用', 'crm.customer.back.hasReference', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'customer deletion failed, has related {}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 34. 客户-有关联引用 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'crm.customer.back.hasReference' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-有关联引用', 'crm.customer.back.hasReference', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '删除客户失败，有关联{}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 35. 客户-导入为空

DELETE FROM infra_i18n_key WHERE message_key = 'crm.customer.back.importEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-导入为空', 'crm.customer.back.importEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 35. 客户-导入为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'crm.customer.back.importEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-导入为空', 'crm.customer.back.importEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'imported customer data cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 35. 客户-导入为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'crm.customer.back.importEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-导入为空', 'crm.customer.back.importEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '导入客户数据不能为空！', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 36. 客户-名称必填

DELETE FROM infra_i18n_key WHERE message_key = 'crm.customer.back.nameRequired';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-名称必填', 'crm.customer.back.nameRequired', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 36. 客户-名称必填 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'crm.customer.back.nameRequired' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-名称必填', 'crm.customer.back.nameRequired', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'customer name cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 36. 客户-名称必填 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'crm.customer.back.nameRequired' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-名称必填', 'crm.customer.back.nameRequired', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '客户名称不能为空！', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 37. 客户-名称已存在

DELETE FROM infra_i18n_key WHERE message_key = 'crm.customer.back.nameExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-名称已存在', 'crm.customer.back.nameExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 37. 客户-名称已存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'crm.customer.back.nameExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-名称已存在', 'crm.customer.back.nameExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'customer with name ({}) already exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 37. 客户-名称已存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'crm.customer.back.nameExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-名称已存在', 'crm.customer.back.nameExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '已存在名为【{}】的客户！', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 38. 客户-成交状态未变

DELETE FROM infra_i18n_key WHERE message_key = 'crm.customer.back.dealStatusEquals';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-成交状态未变', 'crm.customer.back.dealStatusEquals', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 38. 客户-成交状态未变 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'crm.customer.back.dealStatusEquals' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-成交状态未变', 'crm.customer.back.dealStatusEquals', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'customer deal status update failed, already in this status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 38. 客户-成交状态未变 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'crm.customer.back.dealStatusEquals' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户-成交状态未变', 'crm.customer.back.dealStatusEquals', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '更新客户的成交状态失败，原因：已经是该状态，无需更新', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- 权限管理 1-020-007-000
-- =============================================

-- 39. 数据权限-不存在

DELETE FROM infra_i18n_key WHERE message_key = 'crm.permission.back.notExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数据权限-不存在', 'crm.permission.back.notExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 39. 数据权限-不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'crm.permission.back.notExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数据权限-不存在', 'crm.permission.back.notExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'data permission not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 39. 数据权限-不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'crm.permission.back.notExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数据权限-不存在', 'crm.permission.back.notExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '数据权限不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 40. 数据权限-拒绝

DELETE FROM infra_i18n_key WHERE message_key = 'crm.permission.back.denied';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数据权限-拒绝', 'crm.permission.back.denied', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 40. 数据权限-拒绝 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'crm.permission.back.denied' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数据权限-拒绝', 'crm.permission.back.denied', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '{} operation failed, permission denied', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 40. 数据权限-拒绝 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'crm.permission.back.denied' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数据权限-拒绝', 'crm.permission.back.denied', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '{}操作失败，原因：没有权限', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 41. 数据权限-负责人相同

DELETE FROM infra_i18n_key WHERE message_key = 'crm.permission.back.ownerSame';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数据权限-负责人相同', 'crm.permission.back.ownerSame', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 41. 数据权限-负责人相同 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'crm.permission.back.ownerSame' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数据权限-负责人相同', 'crm.permission.back.ownerSame', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '{} operation failed, target is already the owner', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 41. 数据权限-负责人相同 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'crm.permission.back.ownerSame' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数据权限-负责人相同', 'crm.permission.back.ownerSame', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '{}操作失败，原因：转移对象已经是该负责人', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 42. 数据权限-批量删除失败

DELETE FROM infra_i18n_key WHERE message_key = 'crm.permission.back.batchDeleteFail';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数据权限-批量删除失败', 'crm.permission.back.batchDeleteFail', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 42. 数据权限-批量删除失败 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'crm.permission.back.batchDeleteFail' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数据权限-批量删除失败', 'crm.permission.back.batchDeleteFail', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'data permission deletion failed, batch delete must belong to same bizId', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 42. 数据权限-批量删除失败 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'crm.permission.back.batchDeleteFail' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数据权限-批量删除失败', 'crm.permission.back.batchDeleteFail', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '删除数据权限失败，原因：批量删除权限的时候，只能属于同一个 bizId 下', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 43. 数据权限-删除拒绝

DELETE FROM infra_i18n_key WHERE message_key = 'crm.permission.back.deleteDenied';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数据权限-删除拒绝', 'crm.permission.back.deleteDenied', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 43. 数据权限-删除拒绝 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'crm.permission.back.deleteDenied' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数据权限-删除拒绝', 'crm.permission.back.deleteDenied', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'data permission deletion failed, permission denied', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 43. 数据权限-删除拒绝 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'crm.permission.back.deleteDenied' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数据权限-删除拒绝', 'crm.permission.back.deleteDenied', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '删除数据权限失败，原因：没有权限', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 44. 数据权限-负责人禁止删除

DELETE FROM infra_i18n_key WHERE message_key = 'crm.permission.back.ownerProhibitDelete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数据权限-负责人禁止删除', 'crm.permission.back.ownerProhibitDelete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 44. 数据权限-负责人禁止删除 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'crm.permission.back.ownerProhibitDelete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数据权限-负责人禁止删除', 'crm.permission.back.ownerProhibitDelete', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'data permission deletion failed, cannot delete owner', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 44. 数据权限-负责人禁止删除 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'crm.permission.back.ownerProhibitDelete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数据权限-负责人禁止删除', 'crm.permission.back.ownerProhibitDelete', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '删除数据权限失败，原因：不能删除负责人', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 45. 数据权限-创建失败

DELETE FROM infra_i18n_key WHERE message_key = 'crm.permission.back.createFail';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数据权限-创建失败', 'crm.permission.back.createFail', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 45. 数据权限-创建失败 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'crm.permission.back.createFail' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数据权限-创建失败', 'crm.permission.back.createFail', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'data permission creation failed, user already has permission', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 45. 数据权限-创建失败 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'crm.permission.back.createFail' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数据权限-创建失败', 'crm.permission.back.createFail', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '创建数据权限失败，原因：所加用户已有权限', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 46. 数据权限-已存在

DELETE FROM infra_i18n_key WHERE message_key = 'crm.permission.back.permissionExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数据权限-已存在', 'crm.permission.back.permissionExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 46. 数据权限-已存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'crm.permission.back.permissionExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数据权限-已存在', 'crm.permission.back.permissionExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'data permission creation failed, user ({}) already has {} permission for data ({}) in module ({})', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 46. 数据权限-已存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'crm.permission.back.permissionExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数据权限-已存在', 'crm.permission.back.permissionExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '同时添加数据权限失败，原因：用户【{}】已有模块【{}】数据【{}】的【{}】权限', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- 产品 1-020-008-000
-- =============================================

-- 47. 产品-不存在

DELETE FROM infra_i18n_key WHERE message_key = 'crm.product.back.notExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('产品-不存在', 'crm.product.back.notExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 47. 产品-不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'crm.product.back.notExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('产品-不存在', 'crm.product.back.notExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'product not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 47. 产品-不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'crm.product.back.notExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('产品-不存在', 'crm.product.back.notExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '产品不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 48. 产品-编号已存在

DELETE FROM infra_i18n_key WHERE message_key = 'crm.product.back.codeExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('产品-编号已存在', 'crm.product.back.codeExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 48. 产品-编号已存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'crm.product.back.codeExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('产品-编号已存在', 'crm.product.back.codeExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'product code already exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 48. 产品-编号已存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'crm.product.back.codeExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('产品-编号已存在', 'crm.product.back.codeExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '产品编号已存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 49. 产品-已禁用

DELETE FROM infra_i18n_key WHERE message_key = 'crm.product.back.notEnabled';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('产品-已禁用', 'crm.product.back.notEnabled', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 49. 产品-已禁用 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'crm.product.back.notEnabled' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('产品-已禁用', 'crm.product.back.notEnabled', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'product ({}) is disabled', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 49. 产品-已禁用 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'crm.product.back.notEnabled' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('产品-已禁用', 'crm.product.back.notEnabled', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '产品【{}】已禁用', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- 产品分类 1-020-009-000
-- =============================================

-- 50. 产品分类-不存在

DELETE FROM infra_i18n_key WHERE message_key = 'crm.productCategory.back.notExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('产品分类-不存在', 'crm.productCategory.back.notExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 50. 产品分类-不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'crm.productCategory.back.notExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('产品分类-不存在', 'crm.productCategory.back.notExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'product category not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 50. 产品分类-不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'crm.productCategory.back.notExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('产品分类-不存在', 'crm.productCategory.back.notExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '产品分类不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 51. 产品分类-名称已存在

DELETE FROM infra_i18n_key WHERE message_key = 'crm.productCategory.back.nameExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('产品分类-名称已存在', 'crm.productCategory.back.nameExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 51. 产品分类-名称已存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'crm.productCategory.back.nameExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('产品分类-名称已存在', 'crm.productCategory.back.nameExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'product category already exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 51. 产品分类-名称已存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'crm.productCategory.back.nameExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('产品分类-名称已存在', 'crm.productCategory.back.nameExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '产品分类已存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 52. 产品分类-有关联产品

DELETE FROM infra_i18n_key WHERE message_key = 'crm.productCategory.back.hasProduct';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('产品分类-有关联产品', 'crm.productCategory.back.hasProduct', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 52. 产品分类-有关联产品 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'crm.productCategory.back.hasProduct' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('产品分类-有关联产品', 'crm.productCategory.back.hasProduct', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'product category has associated products', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 52. 产品分类-有关联产品 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'crm.productCategory.back.hasProduct' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('产品分类-有关联产品', 'crm.productCategory.back.hasProduct', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '产品分类已关联产品', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 53. 产品分类-父分类不存在

DELETE FROM infra_i18n_key WHERE message_key = 'crm.productCategory.back.parentNotExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('产品分类-父分类不存在', 'crm.productCategory.back.parentNotExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 53. 产品分类-父分类不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'crm.productCategory.back.parentNotExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('产品分类-父分类不存在', 'crm.productCategory.back.parentNotExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'parent category not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 53. 产品分类-父分类不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'crm.productCategory.back.parentNotExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('产品分类-父分类不存在', 'crm.productCategory.back.parentNotExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '父分类不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 54. 产品分类-父分类类型错误

DELETE FROM infra_i18n_key WHERE message_key = 'crm.productCategory.back.parentTypeError';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('产品分类-父分类类型错误', 'crm.productCategory.back.parentTypeError', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 54. 产品分类-父分类类型错误 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'crm.productCategory.back.parentTypeError' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('产品分类-父分类类型错误', 'crm.productCategory.back.parentTypeError', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'parent category cannot be level-2 category', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 54. 产品分类-父分类类型错误 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'crm.productCategory.back.parentTypeError' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('产品分类-父分类类型错误', 'crm.productCategory.back.parentTypeError', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '父分类不能是二级分类', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 55. 产品分类-存在子级

DELETE FROM infra_i18n_key WHERE message_key = 'crm.productCategory.back.hasChildren';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('产品分类-存在子级', 'crm.productCategory.back.hasChildren', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 55. 产品分类-存在子级 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'crm.productCategory.back.hasChildren' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('产品分类-存在子级', 'crm.productCategory.back.hasChildren', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'product category has children, cannot delete', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 55. 产品分类-存在子级 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'crm.productCategory.back.hasChildren' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('产品分类-存在子级', 'crm.productCategory.back.hasChildren', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '存在子分类，无法删除', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- 商机状态 1-020-010-000
-- =============================================

-- 56. 商机状态组-不存在

DELETE FROM infra_i18n_key WHERE message_key = 'crm.businessStatusType.back.notExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('商机状态组-不存在', 'crm.businessStatusType.back.notExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 56. 商机状态组-不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'crm.businessStatusType.back.notExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('商机状态组-不存在', 'crm.businessStatusType.back.notExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'business opportunity status type not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 56. 商机状态组-不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'crm.businessStatusType.back.notExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('商机状态组-不存在', 'crm.businessStatusType.back.notExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '商机状态组不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 57. 商机状态组-名称已存在

DELETE FROM infra_i18n_key WHERE message_key = 'crm.businessStatusType.back.nameExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('商机状态组-名称已存在', 'crm.businessStatusType.back.nameExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 57. 商机状态组-名称已存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'crm.businessStatusType.back.nameExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('商机状态组-名称已存在', 'crm.businessStatusType.back.nameExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'business opportunity status type name already exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 57. 商机状态组-名称已存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'crm.businessStatusType.back.nameExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('商机状态组-名称已存在', 'crm.businessStatusType.back.nameExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '商机状态组的名称已存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 58. 商机状态组-禁止更新

DELETE FROM infra_i18n_key WHERE message_key = 'crm.businessStatusType.back.prohibitUpdate';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('商机状态组-禁止更新', 'crm.businessStatusType.back.prohibitUpdate', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 58. 商机状态组-禁止更新 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'crm.businessStatusType.back.prohibitUpdate' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('商机状态组-禁止更新', 'crm.businessStatusType.back.prohibitUpdate', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'business opportunity status type already in use, cannot update', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 58. 商机状态组-禁止更新 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'crm.businessStatusType.back.prohibitUpdate' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('商机状态组-禁止更新', 'crm.businessStatusType.back.prohibitUpdate', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '已经被使用的商机状态组，无法进行更新', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 59. 商机状态组-禁止删除

DELETE FROM infra_i18n_key WHERE message_key = 'crm.businessStatusType.back.prohibitDelete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('商机状态组-禁止删除', 'crm.businessStatusType.back.prohibitDelete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 59. 商机状态组-禁止删除 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'crm.businessStatusType.back.prohibitDelete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('商机状态组-禁止删除', 'crm.businessStatusType.back.prohibitDelete', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'business opportunity status type already in use, cannot delete', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 59. 商机状态组-禁止删除 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'crm.businessStatusType.back.prohibitDelete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('商机状态组-禁止删除', 'crm.businessStatusType.back.prohibitDelete', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '已经被使用的商机状态组，无法进行删除', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 60. 商机状态-不存在

DELETE FROM infra_i18n_key WHERE message_key = 'crm.businessStatus.back.notExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('商机状态-不存在', 'crm.businessStatus.back.notExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 60. 商机状态-不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'crm.businessStatus.back.notExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('商机状态-不存在', 'crm.businessStatus.back.notExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'business opportunity status not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 60. 商机状态-不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'crm.businessStatus.back.notExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('商机状态-不存在', 'crm.businessStatus.back.notExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '商机状态不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- 客户公海规则设置 1-020-012-000
-- =============================================

-- 61. 客户限制配置-不存在

DELETE FROM infra_i18n_key WHERE message_key = 'crm.customerLimitConfig.back.notExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户限制配置-不存在', 'crm.customerLimitConfig.back.notExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 61. 客户限制配置-不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'crm.customerLimitConfig.back.notExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户限制配置-不存在', 'crm.customerLimitConfig.back.notExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'customer limit config not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 61. 客户限制配置-不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'crm.customerLimitConfig.back.notExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户限制配置-不存在', 'crm.customerLimitConfig.back.notExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '客户限制配置不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- 跟进记录 1-020-013-000
-- =============================================

-- 62. 跟进记录-不存在

DELETE FROM infra_i18n_key WHERE message_key = 'crm.followUpRecord.back.notExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('跟进记录-不存在', 'crm.followUpRecord.back.notExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 62. 跟进记录-不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'crm.followUpRecord.back.notExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('跟进记录-不存在', 'crm.followUpRecord.back.notExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'follow-up record not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 62. 跟进记录-不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'crm.followUpRecord.back.notExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('跟进记录-不存在', 'crm.followUpRecord.back.notExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '跟进记录不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 63. 跟进记录-删除拒绝

DELETE FROM infra_i18n_key WHERE message_key = 'crm.followUpRecord.back.deleteDenied';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('跟进记录-删除拒绝', 'crm.followUpRecord.back.deleteDenied', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 63. 跟进记录-删除拒绝 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'crm.followUpRecord.back.deleteDenied' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('跟进记录-删除拒绝', 'crm.followUpRecord.back.deleteDenied', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'follow-up record deletion failed, permission denied', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 63. 跟进记录-删除拒绝 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'crm.followUpRecord.back.deleteDenied' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('跟进记录-删除拒绝', 'crm.followUpRecord.back.deleteDenied', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '删除跟进记录失败，原因：没有权限', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
