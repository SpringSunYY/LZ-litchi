package com.lz.module.crm.enums;

import com.lz.framework.common.exception.ErrorCode;

/**
 * CRM 错误码枚举类
 * <p>
 * crm 系统，使用 1-020-000-000 段
 * <p>
 * 国际化规范：参见 litchi-doc/i18n/ErrorCode-I18n-Spec.md
 */
public interface ErrorCodeConstants {

    // ========== 合同管理 1-020-000-000 ==========
    ErrorCode CONTRACT_NOT_EXISTS = new ErrorCode(1_020_000_000, "crm.contract.back.notExists", "合同不存在");
    ErrorCode CONTRACT_UPDATE_FAIL_NOT_DRAFT = new ErrorCode(1_020_000_001, "crm.contract.back.statusInvalid", "合同更新失败，原因：合同不是草稿状态");
    ErrorCode CONTRACT_SUBMIT_FAIL_NOT_DRAFT = new ErrorCode(1_020_000_002, "crm.contract.back.statusInvalid", "合同提交审核失败，原因：合同没处在未提交状态");
    ErrorCode CONTRACT_UPDATE_AUDIT_STATUS_FAIL_NOT_PROCESS = new ErrorCode(1_020_000_003, "crm.contract.back.statusInvalid", "更新合同审核状态失败，原因：合同不是审核中状态");
    ErrorCode CONTRACT_NO_EXISTS = new ErrorCode(1_020_000_004, "crm.contract.back.codeGenerateFail", "生成合同序列号重复，请重试");
    ErrorCode CONTRACT_DELETE_FAIL = new ErrorCode(1_020_000_005, "crm.contract.back.hasReference", "删除合同失败，原因：有被回款所使用");

    // ========== 线索管理 1-020-001-000 ==========
    ErrorCode CLUE_NOT_EXISTS = new ErrorCode(1_020_001_000, "crm.clue.back.notExists", "线索不存在");
    ErrorCode CLUE_TRANSFORM_FAIL_ALREADY = new ErrorCode(1_020_001_001, "crm.clue.back.processed", "线索已经转化过了，请勿重复转化");

    // ========== 商机管理 1-020-002-000 ==========
    ErrorCode BUSINESS_NOT_EXISTS = new ErrorCode(1_020_002_000, "crm.business.back.notExists", "商机不存在");
    ErrorCode BUSINESS_DELETE_FAIL_CONTRACT_EXISTS = new ErrorCode(1_020_002_001, "crm.business.back.hasReference", "商机已关联合同，不能删除");
    ErrorCode BUSINESS_UPDATE_STATUS_FAIL_END_STATUS = new ErrorCode(1_020_002_002, "crm.business.back.statusInvalid", "更新商机状态失败，原因：已经是结束状态");
    ErrorCode BUSINESS_UPDATE_STATUS_FAIL_STATUS_EQUALS = new ErrorCode(1_020_002_003, "crm.business.back.statusEquals", "更新商机状态失败，原因：已经是该状态");

    // ========== 联系人管理 1-020-003-000 ==========
    ErrorCode CONTACT_NOT_EXISTS = new ErrorCode(1_020_003_000, "crm.contact.back.notExists", "联系人不存在");
    ErrorCode CONTACT_DELETE_FAIL_CONTRACT_LINK_EXISTS = new ErrorCode(1_020_003_002, "crm.contact.back.hasReference", "联系人已关联合同，不能删除");
    ErrorCode CONTACT_UPDATE_OWNER_USER_FAIL = new ErrorCode(1_020_003_003, "crm.contact.back.ownerUpdateFail", "更新联系人负责人失败");

    // ========== 回款 1-020-004-000 ==========
    ErrorCode RECEIVABLE_NOT_EXISTS = new ErrorCode(1_020_004_000, "crm.receivable.back.notExists", "回款不存在");
    ErrorCode RECEIVABLE_UPDATE_FAIL_EDITING_PROHIBITED = new ErrorCode(1_020_004_001, "crm.receivable.back.prohibitUpdate", "更新回款失败，原因：禁止编辑");
    ErrorCode RECEIVABLE_DELETE_FAIL = new ErrorCode(1_020_004_002, "crm.receivable.back.prohibitDelete", "删除回款失败，原因：被回款计划所使用，不允许删除");
    ErrorCode RECEIVABLE_SUBMIT_FAIL_NOT_DRAFT = new ErrorCode(1_020_004_003, "crm.receivable.back.statusInvalid", "回款提交审核失败，原因：回款没处在未提交状态");
    ErrorCode RECEIVABLE_UPDATE_AUDIT_STATUS_FAIL_NOT_PROCESS = new ErrorCode(1_020_004_004, "crm.receivable.back.statusInvalid", "更新回款审核状态失败，原因：回款不是审核中状态");
    ErrorCode RECEIVABLE_NO_EXISTS = new ErrorCode(1_020_004_005, "crm.receivable.back.codeGenerateFail", "生成回款序列号重复，请重试");
    ErrorCode RECEIVABLE_CREATE_FAIL_CONTRACT_NOT_APPROVE = new ErrorCode(1_020_004_006, "crm.receivable.back.contractNotApproved", "创建回款失败，原因：合同不是审核通过状态");
    ErrorCode RECEIVABLE_CREATE_FAIL_PRICE_EXCEEDS_LIMIT = new ErrorCode(1_020_004_007, "crm.receivable.back.amountExceed", "创建回款失败，原因：回款金额超出合同金额，目前剩余可退：{} 元");
    ErrorCode RECEIVABLE_DELETE_FAIL_IS_APPROVE = new ErrorCode(1_020_004_008, "crm.receivable.back.approveProhibitDelete", "删除回款失败，原因：回款审批已通过");

    // ========== 回款计划 1-020-005-000 ==========
    ErrorCode RECEIVABLE_PLAN_NOT_EXISTS = new ErrorCode(1_020_005_000, "crm.receivablePlan.back.notExists", "回款计划不存在");
    ErrorCode RECEIVABLE_PLAN_UPDATE_FAIL = new ErrorCode(1_020_005_001, "crm.receivablePlan.back.hasReference", "更新回款计划失败，原因：已经有对应的还款");
    ErrorCode RECEIVABLE_PLAN_EXISTS_RECEIVABLE = new ErrorCode(1_020_005_002, "crm.receivablePlan.back.hasReference", "回款计划已经有对应的回款，不能使用");

    // ========== 客户管理 1-020-006-000 ==========
    ErrorCode CUSTOMER_NOT_EXISTS = new ErrorCode(1_020_006_000, "crm.customer.back.notExists", "客户不存在");
    ErrorCode CUSTOMER_OWNER_EXISTS = new ErrorCode(1_020_006_001, "crm.customer.back.ownerExists", "客户【{}】已存在所属负责人");
    ErrorCode CUSTOMER_LOCKED = new ErrorCode(1_020_006_002, "crm.customer.back.locked", "客户【{}】状态已锁定");
    ErrorCode CUSTOMER_ALREADY_DEAL = new ErrorCode(1_020_006_003, "crm.customer.back.dealStatusInvalid", "客户已交易");
    ErrorCode CUSTOMER_IN_POOL = new ErrorCode(1_020_006_004, "crm.customer.back.alreadyInPool", "客户【{}】放入公海失败，原因：已经是公海客户");
    ErrorCode CUSTOMER_LOCKED_PUT_POOL_FAIL = new ErrorCode(1_020_006_005, "crm.customer.back.poolFailLocked", "客户【{}】放入公海失败，原因：客户已锁定");
    ErrorCode CUSTOMER_UPDATE_OWNER_USER_FAIL = new ErrorCode(1_020_006_006, "crm.customer.back.ownerUpdateFail", "更新客户【{}】负责人失败, 原因：系统异常");
    ErrorCode CUSTOMER_LOCK_FAIL_IS_LOCK = new ErrorCode(1_020_006_007, "crm.customer.back.alreadyLocked", "锁定客户失败，它已经处于锁定状态");
    ErrorCode CUSTOMER_UNLOCK_FAIL_IS_UNLOCK = new ErrorCode(1_020_006_008, "crm.customer.back.alreadyUnlocked", "解锁客户失败，它已经处于未锁定状态");
    ErrorCode CUSTOMER_LOCK_EXCEED_LIMIT = new ErrorCode(1_020_006_009, "crm.customer.back.lockQuotaExceeded", "锁定客户失败，超出锁定规则上限");
    ErrorCode CUSTOMER_OWNER_EXCEED_LIMIT = new ErrorCode(1_020_006_010, "crm.customer.back.ownerQuotaExceeded", "操作失败，超出客户数拥有上限");
    ErrorCode CUSTOMER_DELETE_FAIL_HAVE_REFERENCE = new ErrorCode(1_020_006_011, "crm.customer.back.hasReference", "删除客户失败，有关联{}");
    ErrorCode CUSTOMER_IMPORT_LIST_IS_EMPTY = new ErrorCode(1_020_006_012, "crm.customer.back.importEmpty", "导入客户数据不能为空！");
    ErrorCode CUSTOMER_CREATE_NAME_NOT_NULL = new ErrorCode(1_020_006_013, "crm.customer.back.nameRequired", "客户名称不能为空！");
    ErrorCode CUSTOMER_NAME_EXISTS = new ErrorCode(1_020_006_014, "crm.customer.back.nameExists", "已存在名为【{}】的客户！");
    ErrorCode CUSTOMER_UPDATE_DEAL_STATUS_FAIL = new ErrorCode(1_020_006_015, "crm.customer.back.dealStatusEquals", "更新客户的成交状态失败，原因：已经是该状态，无需更新");

    // ========== 权限管理 1-020-007-000 ==========
    ErrorCode CRM_PERMISSION_NOT_EXISTS = new ErrorCode(1_020_007_000, "crm.permission.back.notExists", "数据权限不存在");
    ErrorCode CRM_PERMISSION_DENIED = new ErrorCode(1_020_007_001, "crm.permission.back.denied", "{}操作失败，原因：没有权限");
    ErrorCode CRM_PERMISSION_MODEL_TRANSFER_FAIL_OWNER_USER_EXISTS = new ErrorCode(1_020_007_003, "crm.permission.back.ownerSame", "{}操作失败，原因：转移对象已经是该负责人");
    ErrorCode CRM_PERMISSION_DELETE_FAIL = new ErrorCode(1_020_007_004, "crm.permission.back.batchDeleteFail", "删除数据权限失败，原因：批量删除权限的时候，只能属于同一个 bizId 下");
    ErrorCode CRM_PERMISSION_DELETE_DENIED = new ErrorCode(1_020_007_006, "crm.permission.back.deleteDenied", "删除数据权限失败，原因：没有权限");
    ErrorCode CRM_PERMISSION_DELETE_SELF_PERMISSION_FAIL_EXIST_OWNER = new ErrorCode(1_020_007_007, "crm.permission.back.ownerProhibitDelete", "删除数据权限失败，原因：不能删除负责人");
    ErrorCode CRM_PERMISSION_CREATE_FAIL = new ErrorCode(1_020_007_008, "crm.permission.back.createFail", "创建数据权限失败，原因：所加用户已有权限");
    ErrorCode CRM_PERMISSION_CREATE_FAIL_EXISTS = new ErrorCode(1_020_007_009, "crm.permission.back.permissionExists", "同时添加数据权限失败，原因：用户【{}】已有模块【{}】数据【{}】的【{}】权限");

    // ========== 产品 1-020-008-000 ==========
    ErrorCode PRODUCT_NOT_EXISTS = new ErrorCode(1_020_008_000, "crm.product.back.notExists", "产品不存在");
    ErrorCode PRODUCT_NO_EXISTS = new ErrorCode(1_020_008_001, "crm.product.back.codeExists", "产品编号已存在");
    ErrorCode PRODUCT_NOT_ENABLE = new ErrorCode(1_020_008_002, "crm.product.back.notEnabled", "产品【{}】已禁用");

    // ========== 产品分类 1-020-009-000 ==========
    ErrorCode PRODUCT_CATEGORY_NOT_EXISTS = new ErrorCode(1_020_009_000, "crm.productCategory.back.notExists", "产品分类不存在");
    ErrorCode PRODUCT_CATEGORY_EXISTS = new ErrorCode(1_020_009_001, "crm.productCategory.back.nameExists", "产品分类已存在");
    ErrorCode PRODUCT_CATEGORY_USED = new ErrorCode(1_020_009_002, "crm.productCategory.back.hasProduct", "产品分类已关联产品");
    ErrorCode PRODUCT_CATEGORY_PARENT_NOT_EXISTS = new ErrorCode(1_020_009_003, "crm.productCategory.back.parentNotExists", "父分类不存在");
    ErrorCode PRODUCT_CATEGORY_PARENT_NOT_FIRST_LEVEL = new ErrorCode(1_020_009_004, "crm.productCategory.back.parentTypeError", "父分类不能是二级分类");
    ErrorCode PRODUCT_CATEGORY_EXISTS_CHILDREN = new ErrorCode(1_020_009_005, "crm.productCategory.back.hasChildren", "存在子分类，无法删除");

    // ========== 商机状态 1-020-010-000 ==========
    ErrorCode BUSINESS_STATUS_TYPE_NOT_EXISTS = new ErrorCode(1_020_010_000, "crm.businessStatusType.back.notExists", "商机状态组不存在");
    ErrorCode BUSINESS_STATUS_TYPE_NAME_EXISTS = new ErrorCode(1_020_010_001, "crm.businessStatusType.back.nameExists", "商机状态组的名称已存在");
    ErrorCode BUSINESS_STATUS_UPDATE_FAIL_USED = new ErrorCode(1_020_010_002, "crm.businessStatusType.back.prohibitUpdate", "已经被使用的商机状态组，无法进行更新");
    ErrorCode BUSINESS_STATUS_DELETE_FAIL_USED = new ErrorCode(1_020_010_004, "crm.businessStatusType.back.prohibitDelete", "已经被使用的商机状态组，无法进行删除");
    ErrorCode BUSINESS_STATUS_NOT_EXISTS = new ErrorCode(1_020_010_003, "crm.businessStatus.back.notExists", "商机状态不存在");

    // ========== 客户公海规则设置 1-020-012-000 ==========
    ErrorCode CUSTOMER_LIMIT_CONFIG_NOT_EXISTS = new ErrorCode(1_020_012_001, "crm.customerLimitConfig.back.notExists", "客户限制配置不存在");

    // ========== 跟进记录 1-020-013-000 ==========
    ErrorCode FOLLOW_UP_RECORD_NOT_EXISTS = new ErrorCode(1_020_013_000, "crm.followUpRecord.back.notExists", "跟进记录不存在");
    ErrorCode FOLLOW_UP_RECORD_DELETE_DENIED = new ErrorCode(1_020_013_001, "crm.followUpRecord.back.deleteDenied", "删除跟进记录失败，原因：没有权限");

    // ========== 数据统计 1-020-014-000 ==========

}
