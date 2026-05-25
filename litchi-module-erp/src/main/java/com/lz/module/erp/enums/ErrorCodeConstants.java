package com.lz.module.erp.enums;

import com.lz.framework.common.exception.ErrorCode;

/**
 * ERP 错误码枚举类
 * <p>
 * erp 系统，使用 1-030-000-000 段
 * <p>
 * 国际化规范：参见 litchi-doc/i18n/ErrorCode-I18n-Spec.md
 */
public interface ErrorCodeConstants {

    // ========== ERP 供应商（1-030-100-000） ==========
    ErrorCode SUPPLIER_NOT_EXISTS = new ErrorCode(1_030_100_000, "erp.supplier.back.notExists", "supplier not exists");
    ErrorCode SUPPLIER_NOT_ENABLE = new ErrorCode(1_030_100_001, "erp.supplier.back.notEnabled", "supplier ({}) not enabled");

    // ========== ERP 采购订单（1-030-101-000） ==========
    ErrorCode PURCHASE_ORDER_NOT_EXISTS = new ErrorCode(1_030_101_000, "erp.purchaseOrder.back.notExists", "purchase order not exists");
    ErrorCode PURCHASE_ORDER_DELETE_FAIL_APPROVE = new ErrorCode(1_030_101_001, "erp.purchaseOrder.back.approveProhibitDelete", "purchase order ({}) already approved, cannot delete");
    ErrorCode PURCHASE_ORDER_PROCESS_FAIL = new ErrorCode(1_030_101_002, "erp.purchaseOrder.back.processed", "reverse approval failed, only approved purchase order can be reversed");
    ErrorCode PURCHASE_ORDER_APPROVE_FAIL = new ErrorCode(1_030_101_003, "erp.purchaseOrder.back.notApproved", "approval failed, only unapproved purchase order can be approved");
    ErrorCode PURCHASE_ORDER_NO_EXISTS = new ErrorCode(1_030_101_004, "erp.purchaseOrder.back.codeGenerateFail", "failed to generate order number, please resubmit");
    ErrorCode PURCHASE_ORDER_UPDATE_FAIL_APPROVE = new ErrorCode(1_030_101_005, "erp.purchaseOrder.back.approveProhibitUpdate", "purchase order ({}) already approved, cannot modify");
    ErrorCode PURCHASE_ORDER_NOT_APPROVE = new ErrorCode(1_030_101_006, "erp.purchaseOrder.back.operationNotAllowed", "purchase order not approved, cannot operate");
    ErrorCode PURCHASE_ORDER_ITEM_IN_FAIL_PRODUCT_EXCEED = new ErrorCode(1_030_101_007, "erp.purchaseOrder.back.stockInExceed", "purchase order item ({}) exceeds max allowed stock-in quantity ({})");
    ErrorCode PURCHASE_ORDER_PROCESS_FAIL_EXISTS_IN = new ErrorCode(1_030_101_008, "erp.purchaseOrder.back.stockInExists", "reverse approval failed, purchase inbound record already exists");
    ErrorCode PURCHASE_ORDER_ITEM_RETURN_FAIL_IN_EXCEED = new ErrorCode(1_030_101_009, "erp.purchaseOrder.back.returnExceed", "purchase order item ({}) exceeds max allowed return quantity ({})");
    ErrorCode PURCHASE_ORDER_PROCESS_FAIL_EXISTS_RETURN = new ErrorCode(1_030_101_010, "erp.purchaseOrder.back.returnExists", "reverse approval failed, purchase return record already exists");

    // ========== ERP 采购入库（1-030-102-000） ==========
    ErrorCode PURCHASE_IN_NOT_EXISTS = new ErrorCode(1_030_102_000, "erp.purchaseIn.back.notExists", "purchase inbound order not exists");
    ErrorCode PURCHASE_IN_DELETE_FAIL_APPROVE = new ErrorCode(1_030_102_001, "erp.purchaseIn.back.approveProhibitDelete", "purchase inbound order ({}) already approved, cannot delete");
    ErrorCode PURCHASE_IN_PROCESS_FAIL = new ErrorCode(1_030_102_002, "erp.purchaseIn.back.processed", "reverse approval failed, only approved inbound order can be reversed");
    ErrorCode PURCHASE_IN_APPROVE_FAIL = new ErrorCode(1_030_102_003, "erp.purchaseIn.back.notApproved", "approval failed, only unapproved inbound order can be approved");
    ErrorCode PURCHASE_IN_NO_EXISTS = new ErrorCode(1_030_102_004, "erp.purchaseIn.back.codeGenerateFail", "failed to generate inbound order number, please resubmit");
    ErrorCode PURCHASE_IN_UPDATE_FAIL_APPROVE = new ErrorCode(1_030_102_005, "erp.purchaseIn.back.approveProhibitUpdate", "purchase inbound order ({}) already approved, cannot modify");
    ErrorCode PURCHASE_IN_NOT_APPROVE = new ErrorCode(1_030_102_006, "erp.purchaseIn.back.operationNotAllowed", "purchase inbound order not approved, cannot operate");
    ErrorCode PURCHASE_IN_FAIL_PAYMENT_PRICE_EXCEED = new ErrorCode(1_030_102_007, "erp.purchaseIn.back.paymentExceed", "payment amount ({}) exceeds total amount of purchase inbound order ({})");
    ErrorCode PURCHASE_IN_PROCESS_FAIL_EXISTS_PAYMENT = new ErrorCode(1_030_102_008, "erp.purchaseIn.back.paymentExists", "reverse approval failed, payment record already exists");

    // ========== ERP 采购退货（1-030-103-000） ==========
    ErrorCode PURCHASE_RETURN_NOT_EXISTS = new ErrorCode(1_030_103_000, "erp.purchaseReturn.back.notExists", "purchase return order not exists");
    ErrorCode PURCHASE_RETURN_DELETE_FAIL_APPROVE = new ErrorCode(1_030_103_001, "erp.purchaseReturn.back.approveProhibitDelete", "purchase return order ({}) already approved, cannot delete");
    ErrorCode PURCHASE_RETURN_PROCESS_FAIL = new ErrorCode(1_030_103_002, "erp.purchaseReturn.back.processed", "reverse approval failed, only approved return order can be reversed");
    ErrorCode PURCHASE_RETURN_APPROVE_FAIL = new ErrorCode(1_030_103_003, "erp.purchaseReturn.back.notApproved", "approval failed, only unapproved return order can be approved");
    ErrorCode PURCHASE_RETURN_NO_EXISTS = new ErrorCode(1_030_103_004, "erp.purchaseReturn.back.codeGenerateFail", "failed to generate return order number, please resubmit");
    ErrorCode PURCHASE_RETURN_UPDATE_FAIL_APPROVE = new ErrorCode(1_030_103_005, "erp.purchaseReturn.back.approveProhibitUpdate", "purchase return order ({}) already approved, cannot modify");
    ErrorCode PURCHASE_RETURN_NOT_APPROVE = new ErrorCode(1_030_103_006, "erp.purchaseReturn.back.operationNotAllowed", "purchase return order not approved, cannot operate");
    ErrorCode PURCHASE_RETURN_FAIL_REFUND_PRICE_EXCEED = new ErrorCode(1_030_103_007, "erp.purchaseReturn.back.refundExceed", "refund amount ({}) exceeds total amount of purchase return order ({})");
    ErrorCode PURCHASE_RETURN_PROCESS_FAIL_EXISTS_REFUND = new ErrorCode(1_030_103_008, "erp.purchaseReturn.back.refundExists", "reverse approval failed, refund record already exists");

    // ========== ERP 客户 1-030-200-000 ==========
    ErrorCode CUSTOMER_NOT_EXISTS = new ErrorCode(1_030_200_000, "erp.customer.back.notExists", "customer not exists");
    ErrorCode CUSTOMER_NOT_ENABLE = new ErrorCode(1_030_200_001, "erp.customer.back.notEnabled", "customer ({}) not enabled");

    // ========== ERP 销售订单（1-030-201-000） ==========
    ErrorCode SALE_ORDER_NOT_EXISTS = new ErrorCode(1_030_201_000, "erp.saleOrder.back.notExists", "sale order not exists");
    ErrorCode SALE_ORDER_DELETE_FAIL_APPROVE = new ErrorCode(1_030_201_001, "erp.saleOrder.back.approveProhibitDelete", "sale order ({}) already approved, cannot delete");
    ErrorCode SALE_ORDER_PROCESS_FAIL = new ErrorCode(1_030_201_002, "erp.saleOrder.back.processed", "reverse approval failed, only approved sale order can be reversed");
    ErrorCode SALE_ORDER_APPROVE_FAIL = new ErrorCode(1_030_201_003, "erp.saleOrder.back.notApproved", "approval failed, only unapproved sale order can be approved");
    ErrorCode SALE_ORDER_NO_EXISTS = new ErrorCode(1_030_201_004, "erp.saleOrder.back.codeGenerateFail", "failed to generate order number, please resubmit");
    ErrorCode SALE_ORDER_UPDATE_FAIL_APPROVE = new ErrorCode(1_030_201_005, "erp.saleOrder.back.approveProhibitUpdate", "sale order ({}) already approved, cannot modify");
    ErrorCode SALE_ORDER_NOT_APPROVE = new ErrorCode(1_030_201_006, "erp.saleOrder.back.operationNotAllowed", "sale order not approved, cannot operate");
    ErrorCode SALE_ORDER_ITEM_OUT_FAIL_PRODUCT_EXCEED = new ErrorCode(1_030_201_007, "erp.saleOrder.back.stockOutExceed", "sale order item ({}) exceeds max allowed stock-out quantity ({})");
    ErrorCode SALE_ORDER_PROCESS_FAIL_EXISTS_OUT = new ErrorCode(1_030_201_008, "erp.saleOrder.back.stockOutExists", "reverse approval failed, sale outbound record already exists");
    ErrorCode SALE_ORDER_ITEM_RETURN_FAIL_OUT_EXCEED = new ErrorCode(1_030_201_009, "erp.saleOrder.back.returnExceed", "sale order item ({}) exceeds max allowed return quantity ({})");
    ErrorCode SALE_ORDER_PROCESS_FAIL_EXISTS_RETURN = new ErrorCode(1_030_201_010, "erp.saleOrder.back.returnExists", "reverse approval failed, sale return record already exists");

    // ========== ERP 销售出库（1-030-202-000） ==========
    ErrorCode SALE_OUT_NOT_EXISTS = new ErrorCode(1_030_202_000, "erp.saleOut.back.notExists", "sale outbound order not exists");
    ErrorCode SALE_OUT_DELETE_FAIL_APPROVE = new ErrorCode(1_030_202_001, "erp.saleOut.back.approveProhibitDelete", "sale outbound order ({}) already approved, cannot delete");
    ErrorCode SALE_OUT_PROCESS_FAIL = new ErrorCode(1_030_202_002, "erp.saleOut.back.processed", "reverse approval failed, only approved outbound order can be reversed");
    ErrorCode SALE_OUT_APPROVE_FAIL = new ErrorCode(1_030_202_003, "erp.saleOut.back.notApproved", "approval failed, only unapproved outbound order can be approved");
    ErrorCode SALE_OUT_NO_EXISTS = new ErrorCode(1_030_202_004, "erp.saleOut.back.codeGenerateFail", "failed to generate outbound order number, please resubmit");
    ErrorCode SALE_OUT_UPDATE_FAIL_APPROVE = new ErrorCode(1_030_202_005, "erp.saleOut.back.approveProhibitUpdate", "sale outbound order ({}) already approved, cannot modify");
    ErrorCode SALE_OUT_NOT_APPROVE = new ErrorCode(1_030_202_006, "erp.saleOut.back.operationNotAllowed", "sale outbound order not approved, cannot operate");
    ErrorCode SALE_OUT_FAIL_RECEIPT_PRICE_EXCEED = new ErrorCode(1_030_202_007, "erp.saleOut.back.receiptExceed", "receipt amount ({}) exceeds total amount of sale outbound order ({})");
    ErrorCode SALE_OUT_PROCESS_FAIL_EXISTS_RECEIPT = new ErrorCode(1_030_202_008, "erp.saleOut.back.receiptExists", "reverse approval failed, receipt record already exists");

    // ========== ERP 销售退货（1-030-203-000） ==========
    ErrorCode SALE_RETURN_NOT_EXISTS = new ErrorCode(1_030_203_000, "erp.saleReturn.back.notExists", "sale return order not exists");
    ErrorCode SALE_RETURN_DELETE_FAIL_APPROVE = new ErrorCode(1_030_203_001, "erp.saleReturn.back.approveProhibitDelete", "sale return order ({}) already approved, cannot delete");
    ErrorCode SALE_RETURN_PROCESS_FAIL = new ErrorCode(1_030_203_002, "erp.saleReturn.back.processed", "reverse approval failed, only approved return order can be reversed");
    ErrorCode SALE_RETURN_APPROVE_FAIL = new ErrorCode(1_030_203_003, "erp.saleReturn.back.notApproved", "approval failed, only unapproved return order can be approved");
    ErrorCode SALE_RETURN_NO_EXISTS = new ErrorCode(1_030_203_004, "erp.saleReturn.back.codeGenerateFail", "failed to generate return order number, please resubmit");
    ErrorCode SALE_RETURN_UPDATE_FAIL_APPROVE = new ErrorCode(1_030_203_005, "erp.saleReturn.back.approveProhibitUpdate", "sale return order ({}) already approved, cannot modify");
    ErrorCode SALE_RETURN_NOT_APPROVE = new ErrorCode(1_030_203_006, "erp.saleReturn.back.operationNotAllowed", "sale return order not approved, cannot operate");
    ErrorCode SALE_RETURN_FAIL_REFUND_PRICE_EXCEED = new ErrorCode(1_030_203_007, "erp.saleReturn.back.refundExceed", "refund amount ({}) exceeds total amount of sale return order ({})");
    ErrorCode SALE_RETURN_PROCESS_FAIL_EXISTS_REFUND = new ErrorCode(1_030_203_008, "erp.saleReturn.back.refundExists", "reverse approval failed, refund record already exists");

    // ========== ERP 仓库 1-030-400-000 ==========
    ErrorCode WAREHOUSE_NOT_EXISTS = new ErrorCode(1_030_400_000, "erp.warehouse.back.notExists", "warehouse not exists");
    ErrorCode WAREHOUSE_NOT_ENABLE = new ErrorCode(1_030_400_001, "erp.warehouse.back.notEnabled", "warehouse ({}) not enabled");

    // ========== ERP 其它入库单 1-030-401-000 ==========
    ErrorCode STOCK_IN_NOT_EXISTS = new ErrorCode(1_030_401_000, "erp.stockIn.back.notExists", "other inbound order not exists");
    ErrorCode STOCK_IN_DELETE_FAIL_APPROVE = new ErrorCode(1_030_401_001, "erp.stockIn.back.approveProhibitDelete", "other inbound order ({}) already approved, cannot delete");
    ErrorCode STOCK_IN_PROCESS_FAIL = new ErrorCode(1_030_401_002, "erp.stockIn.back.processed", "reverse approval failed, only approved inbound order can be reversed");
    ErrorCode STOCK_IN_APPROVE_FAIL = new ErrorCode(1_030_401_003, "erp.stockIn.back.notApproved", "approval failed, only unapproved inbound order can be approved");
    ErrorCode STOCK_IN_NO_EXISTS = new ErrorCode(1_030_401_004, "erp.stockIn.back.codeGenerateFail", "failed to generate inbound order number, please resubmit");
    ErrorCode STOCK_IN_UPDATE_FAIL_APPROVE = new ErrorCode(1_030_401_005, "erp.stockIn.back.approveProhibitUpdate", "other inbound order ({}) already approved, cannot modify");

    // ========== ERP 其它出库单 1-030-402-000 ==========
    ErrorCode STOCK_OUT_NOT_EXISTS = new ErrorCode(1_030_402_000, "erp.stockOut.back.notExists", "other outbound order not exists");
    ErrorCode STOCK_OUT_DELETE_FAIL_APPROVE = new ErrorCode(1_030_402_001, "erp.stockOut.back.approveProhibitDelete", "other outbound order ({}) already approved, cannot delete");
    ErrorCode STOCK_OUT_PROCESS_FAIL = new ErrorCode(1_030_402_002, "erp.stockOut.back.processed", "reverse approval failed, only approved outbound order can be reversed");
    ErrorCode STOCK_OUT_APPROVE_FAIL = new ErrorCode(1_030_402_003, "erp.stockOut.back.notApproved", "approval failed, only unapproved outbound order can be approved");
    ErrorCode STOCK_OUT_NO_EXISTS = new ErrorCode(1_030_402_004, "erp.stockOut.back.codeGenerateFail", "failed to generate outbound order number, please resubmit");
    ErrorCode STOCK_OUT_UPDATE_FAIL_APPROVE = new ErrorCode(1_030_402_005, "erp.stockOut.back.approveProhibitUpdate", "other outbound order ({}) already approved, cannot modify");

    // ========== ERP 库存调拨单 1-030-403-000 ==========
    ErrorCode STOCK_MOVE_NOT_EXISTS = new ErrorCode(1_030_403_000, "erp.stockMove.back.notExists", "stock transfer order not exists");
    ErrorCode STOCK_MOVE_DELETE_FAIL_APPROVE = new ErrorCode(1_030_403_001, "erp.stockMove.back.approveProhibitDelete", "stock transfer order ({}) already approved, cannot delete");
    ErrorCode STOCK_MOVE_PROCESS_FAIL = new ErrorCode(1_030_403_002, "erp.stockMove.back.processed", "reverse approval failed, only approved transfer order can be reversed");
    ErrorCode STOCK_MOVE_APPROVE_FAIL = new ErrorCode(1_030_403_003, "erp.stockMove.back.notApproved", "approval failed, only unapproved transfer order can be approved");
    ErrorCode STOCK_MOVE_NO_EXISTS = new ErrorCode(1_030_403_004, "erp.stockMove.back.codeGenerateFail", "failed to generate transfer order number, please resubmit");
    ErrorCode STOCK_MOVE_UPDATE_FAIL_APPROVE = new ErrorCode(1_030_403_005, "erp.stockMove.back.approveProhibitUpdate", "stock transfer order ({}) already approved, cannot modify");

    // ========== ERP 库存盘点单 1-030-404-000 ==========
    ErrorCode STOCK_CHECK_NOT_EXISTS = new ErrorCode(1_030_404_000, "erp.stockCheck.back.notExists", "stock check order not exists");
    ErrorCode STOCK_CHECK_DELETE_FAIL_APPROVE = new ErrorCode(1_030_404_001, "erp.stockCheck.back.approveProhibitDelete", "stock check order ({}) already approved, cannot delete");
    ErrorCode STOCK_CHECK_PROCESS_FAIL = new ErrorCode(1_030_404_002, "erp.stockCheck.back.processed", "reverse approval failed, only approved check order can be reversed");
    ErrorCode STOCK_CHECK_APPROVE_FAIL = new ErrorCode(1_030_404_003, "erp.stockCheck.back.notApproved", "approval failed, only unapproved check order can be approved");
    ErrorCode STOCK_CHECK_NO_EXISTS = new ErrorCode(1_030_404_004, "erp.stockCheck.back.codeGenerateFail", "failed to generate check order number, please resubmit");
    ErrorCode STOCK_CHECK_UPDATE_FAIL_APPROVE = new ErrorCode(1_030_404_005, "erp.stockCheck.back.approveProhibitUpdate", "stock check order ({}) already approved, cannot modify");

    // ========== ERP 产品库存 1-030-405-000 ==========
    ErrorCode STOCK_COUNT_NEGATIVE = new ErrorCode(1_030_405_000, "erp.stockCount.back.insufficient", "operation failed, product ({}) in warehouse ({}) stock: {}, less than change quantity: {}");
    ErrorCode STOCK_COUNT_NEGATIVE2 = new ErrorCode(1_030_405_001, "erp.stockCount.back.insufficient2", "operation failed, product ({}) in warehouse ({}) stock insufficient");

    // ========== ERP 产品 1-030-500-000 ==========
    ErrorCode PRODUCT_NOT_EXISTS = new ErrorCode(1_030_500_000, "erp.product.back.notExists", "product not exists");
    ErrorCode PRODUCT_NOT_ENABLE = new ErrorCode(1_030_500_001, "erp.product.back.notEnabled", "product ({}) not enabled");

    // ========== ERP 产品分类 1-030-501-000 ==========
    ErrorCode PRODUCT_CATEGORY_NOT_EXISTS = new ErrorCode(1_030_501_000, "erp.productCategory.back.notExists", "product category not exists");
    ErrorCode PRODUCT_CATEGORY_EXITS_CHILDREN = new ErrorCode(1_030_501_001, "erp.productCategory.back.hasChildren", "product category has children, cannot delete");
    ErrorCode PRODUCT_CATEGORY_PARENT_NOT_EXITS = new ErrorCode(1_030_501_002, "erp.productCategory.back.parentNotExists", "parent product category not exists");
    ErrorCode PRODUCT_CATEGORY_PARENT_ERROR = new ErrorCode(1_030_501_003, "erp.productCategory.back.parentSelfError", "cannot set itself as parent product category");
    ErrorCode PRODUCT_CATEGORY_NAME_DUPLICATE = new ErrorCode(1_030_501_004, "erp.productCategory.back.nameDuplicate", "product category name duplicate");
    ErrorCode PRODUCT_CATEGORY_PARENT_IS_CHILD = new ErrorCode(1_030_501_005, "erp.productCategory.back.parentChildError", "cannot set child as parent product category");
    ErrorCode PRODUCT_CATEGORY_EXITS_PRODUCT = new ErrorCode(1_030_501_006, "erp.productCategory.back.hasProduct", "product category has products, cannot delete");

    // ========== ERP 产品单位 1-030-502-000 ==========
    ErrorCode PRODUCT_UNIT_NOT_EXISTS = new ErrorCode(1_030_502_000, "erp.productUnit.back.notExists", "product unit not exists");
    ErrorCode PRODUCT_UNIT_NAME_DUPLICATE = new ErrorCode(1_030_502_001, "erp.productUnit.back.nameDuplicate", "product unit name duplicate");
    ErrorCode PRODUCT_UNIT_EXITS_PRODUCT = new ErrorCode(1_030_502_002, "erp.productUnit.back.hasProduct", "product unit has products, cannot delete");

    // ========== ERP 结算账户 1-030-600-000 ==========
    ErrorCode ACCOUNT_NOT_EXISTS = new ErrorCode(1_030_600_000, "erp.account.back.notExists", "account not exists");
    ErrorCode ACCOUNT_NOT_ENABLE = new ErrorCode(1_030_600_001, "erp.account.back.notEnabled", "account ({}) not enabled");

    // ========== ERP 付款单 1-030-601-000 ==========
    ErrorCode FINANCE_PAYMENT_NOT_EXISTS = new ErrorCode(1_030_601_000, "erp.financePayment.back.notExists", "payment order not exists");
    ErrorCode FINANCE_PAYMENT_DELETE_FAIL_APPROVE = new ErrorCode(1_030_601_001, "erp.financePayment.back.approveProhibitDelete", "payment order ({}) already approved, cannot delete");
    ErrorCode FINANCE_PAYMENT_PROCESS_FAIL = new ErrorCode(1_030_601_002, "erp.financePayment.back.processed", "reverse approval failed, only approved payment order can be reversed");
    ErrorCode FINANCE_PAYMENT_APPROVE_FAIL = new ErrorCode(1_030_601_003, "erp.financePayment.back.notApproved", "approval failed, only unapproved payment order can be approved");
    ErrorCode FINANCE_PAYMENT_NO_EXISTS = new ErrorCode(1_030_601_004, "erp.financePayment.back.codeGenerateFail", "failed to generate payment order number, please resubmit");
    ErrorCode FINANCE_PAYMENT_UPDATE_FAIL_APPROVE = new ErrorCode(1_030_601_005, "erp.financePayment.back.approveProhibitUpdate", "payment order ({}) already approved, cannot modify");

    // ========== ERP 收款单 1-030-602-000 ==========
    ErrorCode FINANCE_RECEIPT_NOT_EXISTS = new ErrorCode(1_030_602_000, "erp.financeReceipt.back.notExists", "receipt order not exists");
    ErrorCode FINANCE_RECEIPT_DELETE_FAIL_APPROVE = new ErrorCode(1_030_602_001, "erp.financeReceipt.back.approveProhibitDelete", "receipt order ({}) already approved, cannot delete");
    ErrorCode FINANCE_RECEIPT_PROCESS_FAIL = new ErrorCode(1_030_602_002, "erp.financeReceipt.back.processed", "reverse approval failed, only approved receipt order can be reversed");
    ErrorCode FINANCE_RECEIPT_APPROVE_FAIL = new ErrorCode(1_030_602_003, "erp.financeReceipt.back.notApproved", "approval failed, only unapproved receipt order can be approved");
    ErrorCode FINANCE_RECEIPT_NO_EXISTS = new ErrorCode(1_030_602_004, "erp.financeReceipt.back.codeGenerateFail", "failed to generate receipt order number, please resubmit");
    ErrorCode FINANCE_RECEIPT_UPDATE_FAIL_APPROVE = new ErrorCode(1_030_602_005, "erp.financeReceipt.back.approveProhibitUpdate", "receipt order ({}) already approved, cannot modify");

}
