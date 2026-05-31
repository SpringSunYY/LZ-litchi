package com.lz.module.infra.enums;

import com.lz.framework.common.exception.ErrorCode;

/**
 * Infra 错误码枚举类
 * <p>
 * infra 系统，使用 1-001-000-000 段
 * <p>
 * 国际化规范：参见 litchi-doc/i18n/ErrorCode-I18n-Spec.md
 */
public interface ErrorCodeConstants {

    // ========== 参数配置 1-001-000-000 ==========
    ErrorCode CONFIG_NOT_EXISTS = new ErrorCode(1_001_000_001, "infra.config.back.notExists", "参数配置不存在");
    ErrorCode CONFIG_KEY_DUPLICATE = new ErrorCode(1_001_000_002, "infra.config.back.keyDuplicate", "参数配置 key 重复");
    ErrorCode CONFIG_CAN_NOT_DELETE_SYSTEM_TYPE = new ErrorCode(1_001_000_003, "infra.config.back.systemType.prohibitDelete", "不能删除类型为系统内置的参数配置");
    ErrorCode CONFIG_GET_VALUE_ERROR_IF_VISIBLE = new ErrorCode(1_001_000_004, "infra.config.back.value.invalid", "获取参数配置失败，原因：不允许获取不可见配置");

    // ========== 定时任务 1-001-001-000 ==========
    ErrorCode JOB_NOT_EXISTS = new ErrorCode(1_001_001_000, "infra.job.back.notExists", "定时任务不存在");
    ErrorCode JOB_HANDLER_EXISTS = new ErrorCode(1_001_001_001, "infra.job.back.handlerExists", "定时任务的处理器已经存在");
    ErrorCode JOB_CHANGE_STATUS_INVALID = new ErrorCode(1_001_001_002, "infra.job.back.statusInvalid", "只允许修改为开启或者关闭状态");
    ErrorCode JOB_CHANGE_STATUS_EQUALS = new ErrorCode(1_001_001_003, "infra.job.back.statusEquals", "定时任务已经处于该状态，无需修改");
    ErrorCode JOB_UPDATE_ONLY_NORMAL_STATUS = new ErrorCode(1_001_001_004, "infra.job.back.onlyNormalUpdate", "只有开启状态的任务，才可以修改");
    ErrorCode JOB_CRON_EXPRESSION_VALID = new ErrorCode(1_001_001_005, "infra.job.back.cronExpression.invalid", "CRON 表达式不正确");
    ErrorCode JOB_HANDLER_BEAN_NOT_EXISTS = new ErrorCode(1_001_001_006, "infra.job.back.beanNotExists", "定时任务的处理器 Bean 不存在，注意 Bean 默认首字母小写");
    ErrorCode JOB_HANDLER_BEAN_TYPE_ERROR = new ErrorCode(1_001_001_007, "infra.job.back.beanTypeError", "定时任务的处理器 Bean 类型不正确，未实现 JobHandler 接口");

    // ========== API 错误日志 1-001-002-000 ==========
    ErrorCode API_ERROR_LOG_NOT_FOUND = new ErrorCode(1_001_002_000, "infra.apiErrorLog.back.notFound", "API 错误日志不存在");
    ErrorCode API_ERROR_LOG_PROCESSED = new ErrorCode(1_001_002_001, "infra.apiErrorLog.back.processed", "API 错误日志已处理");

    // ========== 文件相关 1-001-003-000 =================
    ErrorCode FILE_PATH_EXISTS = new ErrorCode(1_001_003_000, "infra.file.back.pathExists", "文件路径已存在");
    ErrorCode FILE_NOT_EXISTS = new ErrorCode(1_001_003_001, "infra.file.back.notExists", "文件不存在");
    ErrorCode FILE_IS_EMPTY = new ErrorCode(1_001_003_002, "infra.file.back.empty", "文件为空");
    ErrorCode FILE_TYPE_NOT_ALLOWED = new ErrorCode(1_001_003_003, "infra.file.back.typeNotAllowed", "不允许上传该文件类型");
    ErrorCode FILE_SIZE_EXCEED = new ErrorCode(1_001_003_004, "infra.file.back.sizeExceed", "文件大小超过限制，允许上传的最大文件大小为 {}MB");

    // ========== 代码生成器 1-001-004-000 ==========
    ErrorCode CODEGEN_TABLE_EXISTS = new ErrorCode(1_001_004_002, "infra.codegen.back.tableExists", "表定义已经存在");
    ErrorCode CODEGEN_IMPORT_TABLE_NULL = new ErrorCode(1_001_004_001, "infra.codegen.back.importTableNotFound", "导入的表不存在");
    ErrorCode CODEGEN_IMPORT_COLUMNS_NULL = new ErrorCode(1_001_004_002, "infra.codegen.back.importColumnsNotFound", "导入的字段不存在");
    ErrorCode CODEGEN_TABLE_NOT_EXISTS = new ErrorCode(1_001_004_004, "infra.codegen.back.tableNotExists", "表定义不存在");
    ErrorCode CODEGEN_COLUMN_NOT_EXISTS = new ErrorCode(1_001_004_005, "infra.codegen.back.columnNotExists", "字段义不存在");
    ErrorCode CODEGEN_SYNC_COLUMNS_NULL = new ErrorCode(1_001_004_006, "infra.codegen.back.syncColumnsNotFound", "同步的字段不存在");
    ErrorCode CODEGEN_SYNC_NONE_CHANGE = new ErrorCode(1_001_004_007, "infra.codegen.back.noChange", "同步失败，不存在改变");
    ErrorCode CODEGEN_TABLE_INFO_TABLE_COMMENT_IS_NULL = new ErrorCode(1_001_004_008, "infra.codegen.back.tableCommentEmpty", "数据库的表注释未填写");
    ErrorCode CODEGEN_TABLE_INFO_COLUMN_COMMENT_IS_NULL = new ErrorCode(1_001_004_009, "infra.codegen.back.columnCommentEmpty", "数据库的表字段({})注释未填写");
    ErrorCode CODEGEN_MASTER_TABLE_NOT_EXISTS = new ErrorCode(1_001_004_010, "infra.codegen.back.masterTableNotExists", "主表(id={})定义不存在，请检查");
    ErrorCode CODEGEN_SUB_COLUMN_NOT_EXISTS = new ErrorCode(1_001_004_011, "infra.codegen.back.subColumnNotExists", "子表的字段(id={})不存在，请检查");
    ErrorCode CODEGEN_MASTER_GENERATION_FAIL_NO_SUB_TABLE = new ErrorCode(1_001_004_012, "infra.codegen.back.masterNoSubTable", "主表生成代码失败，原因：它没有子表");

    // ========== 文件配置 1-001-006-000 ==========
    ErrorCode FILE_CONFIG_NOT_EXISTS = new ErrorCode(1_001_006_000, "infra.fileConfig.back.notExists", "文件配置不存在");
    ErrorCode FILE_CONFIG_KEY_DUPLICATE = new ErrorCode(1_001_006_001, "infra.fileConfig.back.keyDuplicate", "文件配置 key 冲突");
    ErrorCode FILE_CONFIG_DELETE_FAIL_MASTER = new ErrorCode(1_001_006_001, "infra.fileConfig.back.masterProhibitDelete", "该文件配置不允许删除，原因：它是主配置，删除会导致无法上传文件");
    ErrorCode FILE_CONFIG_MASTER_NOT_EXISTS = new ErrorCode(1_001_006_002, "infra.fileConfig.back.masterNotExists", "主数据源配置不存在");

    // ========== 数据源配置 1-001-007-000 ==========
    ErrorCode DATA_SOURCE_CONFIG_NOT_EXISTS = new ErrorCode(1_001_007_000, "infra.dataSourceConfig.back.notExists", "数据源配置不存在");
    ErrorCode DATA_SOURCE_CONFIG_NOT_OK = new ErrorCode(1_001_007_001, "infra.dataSourceConfig.back.cannotConnect", "数据源配置不正确，无法进行连接");

    // ========== 学生 1-001-201-000 ==========
    ErrorCode DEMO01_CONTACT_NOT_EXISTS = new ErrorCode(1_001_201_000, "infra.demo01Contact.back.notExists", "示例联系人不存在");
    ErrorCode DEMO02_CATEGORY_NOT_EXISTS = new ErrorCode(1_001_201_001, "infra.demo02Category.back.notExists", "示例分类不存在");
    ErrorCode DEMO02_CATEGORY_EXITS_CHILDREN = new ErrorCode(1_001_201_002, "infra.demo02Category.back.hasChildren", "存在存在子示例分类，无法删除");
    ErrorCode DEMO02_CATEGORY_PARENT_NOT_EXITS = new ErrorCode(1_001_201_003, "infra.demo02Category.back.parentNotExists", "父级示例分类不存在");
    ErrorCode DEMO02_CATEGORY_PARENT_ERROR = new ErrorCode(1_001_201_004, "infra.demo02Category.back.parentSelfError", "不能设置自己为父示例分类");
    ErrorCode DEMO02_CATEGORY_NAME_DUPLICATE = new ErrorCode(1_001_201_005, "infra.demo02Category.back.nameDuplicate", "已经存在该名字的示例分类");
    ErrorCode DEMO02_CATEGORY_PARENT_IS_CHILD = new ErrorCode(1_001_201_006, "infra.demo02Category.back.parentChildError", "不能设置自己的子示例分类为父示例分类");
    ErrorCode DEMO03_STUDENT_NOT_EXISTS = new ErrorCode(1_001_201_007, "infra.demo03Student.back.notExists", "学生不存在");
    ErrorCode DEMO03_COURSE_NOT_EXISTS = new ErrorCode(1_001_201_008, "infra.demo03Course.back.notExists", "学生课程不存在");
    ErrorCode DEMO03_GRADE_NOT_EXISTS = new ErrorCode(1_001_201_009, "infra.demo03Grade.back.notExists", "学生班级不存在");
    ErrorCode DEMO03_GRADE_EXISTS = new ErrorCode(1_001_201_010, "infra.demo03Grade.back.exists", "学生班级已存在");
    ErrorCode ERROR_CODE_IMPORT_DATA_EMPTY = new ErrorCode(1_001_201_011, "infra.errorCode.back.importEmpty", "导入数据为空");

    // ========== 国际化国家 1-001-008-000 ==========
    ErrorCode I18N_LOCALE_NOT_EXISTS = new ErrorCode(1_001_008_000, "infra.i18nLocale.back.notExists", "国际化国家不存在");
    ErrorCode I18N_LOCALE_EXISTS = new ErrorCode(1_001_008_001, "infra.i18nLocale.back.exists", "国际化国家已存在{}");
    ErrorCode I18N_LOCALE_PROHIBIT_DELETE = new ErrorCode(1_001_008_003, "infra.i18nLocale.back.defaultProhibitDelete", "国际化默认国家不允许删除");

    ErrorCode I18N_KEY_NOT_EXISTS = new ErrorCode(1_001_008_004, "infra.i18nKey.back.notExists", "国际化键名不存在");
    ErrorCode I18N_KEY_EXISTS = new ErrorCode(1_001_008_005, "infra.i18nKey.back.exists", "国际化键名已存在");
    ErrorCode I18N_KEY_PROHIBIT_UPDATE_KEY = new ErrorCode(1_001_008_006, "infra.i18nKey.back.prohibitUpdate", "国际化键名不允许修改键名");
    ErrorCode I18N_KEY_PROHIBIT_DELETE_SYSTEM = new ErrorCode(1_001_008_007, "infra.i18nKey.back.systemProhibitDelete", "国际化键名不允许删除内置键");
    ErrorCode I18N_MESSAGE_EXISTS = new ErrorCode(1_001_008_009, "infra.i18nMessage.back.exists", "国际化信息已存在");
    ErrorCode I18N_MESSAGE_NOT_EXISTS = new ErrorCode(1_001_008_010, "infra.i18nMessage.back.notExists", "国际化信息不存在");
    ErrorCode I18N_MESSAGE_IMPORT_DATA_EMPTY = new ErrorCode(1_003_000_100, "infra.back.import.dataEmpty", "导入数据不能为空！");
}
