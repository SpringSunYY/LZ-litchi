-- =============================================
-- infra 模块错误码国际化 SQL
-- 生成时间：2026-05-25
-- 规范版本：v1.2
-- =============================================

-- ---------------------------------------------
-- 变量定义（运行时可覆盖）
-- ---------------------------------------------
SET @IS_SYSTEM = 0;
SET @USE_TYPE_EXCEPTION = 5;
SET @MODULE_TYPE = 'infra';
SET @LOCALE_TARGET_BACKEND = 1;
SET @LOCALE_EN = 'en-US';
SET @LOCALE_ZH_CN = 'zh-CN';
SET @CREATOR = '0';
SET @REMARK = 'ai auto generate';
SET @ORDER_NUM = 5;
-- =============================================
-- 参数配置
-- =============================================

-- 1. 参数配置-不存在

DELETE FROM infra_i18n_key WHERE message_key = 'infra.config.back.notExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('参数配置-不存在', 'infra.config.back.notExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 1. 参数配置-不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.config.back.notExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('参数配置-不存在', 'infra.config.back.notExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'config not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 1. 参数配置-不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.config.back.notExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('参数配置-不存在', 'infra.config.back.notExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '参数配置不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. 参数配置-key重复

DELETE FROM infra_i18n_key WHERE message_key = 'infra.config.back.keyDuplicate';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('参数配置-key重复', 'infra.config.back.keyDuplicate', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. 参数配置-key重复 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.config.back.keyDuplicate' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('参数配置-key重复', 'infra.config.back.keyDuplicate', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'config key duplicate', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. 参数配置-key重复 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.config.back.keyDuplicate' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('参数配置-key重复', 'infra.config.back.keyDuplicate', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '参数配置 key 重复', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. 参数配置-系统类型禁止删除

DELETE FROM infra_i18n_key WHERE message_key = 'infra.config.back.systemType.prohibitDelete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('参数配置-系统类型禁止删除', 'infra.config.back.systemType.prohibitDelete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. 参数配置-系统类型禁止删除 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.config.back.systemType.prohibitDelete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('参数配置-系统类型禁止删除', 'infra.config.back.systemType.prohibitDelete', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'system config type cannot be deleted', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. 参数配置-系统类型禁止删除 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.config.back.systemType.prohibitDelete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('参数配置-系统类型禁止删除', 'infra.config.back.systemType.prohibitDelete', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '不能删除类型为系统内置的参数配置', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. 参数配置-值不可见

DELETE FROM infra_i18n_key WHERE message_key = 'infra.config.back.value.invalid';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('参数配置-值不可见', 'infra.config.back.value.invalid', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. 参数配置-值不可见 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.config.back.value.invalid' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('参数配置-值不可见', 'infra.config.back.value.invalid', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'fail to get config value, invisible config is not allowed', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. 参数配置-值不可见 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.config.back.value.invalid' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('参数配置-值不可见', 'infra.config.back.value.invalid', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '获取参数配置失败，原因：不允许获取不可见配置', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- 定时任务
-- =============================================

-- 5. 定时任务-不存在

DELETE FROM infra_i18n_key WHERE message_key = 'infra.job.back.notExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-不存在', 'infra.job.back.notExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. 定时任务-不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job.back.notExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-不存在', 'infra.job.back.notExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'job not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. 定时任务-不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job.back.notExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-不存在', 'infra.job.back.notExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '定时任务不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 6. 定时任务-处理器已存在

DELETE FROM infra_i18n_key WHERE message_key = 'infra.job.back.handlerExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-处理器已存在', 'infra.job.back.handlerExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 6. 定时任务-处理器已存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job.back.handlerExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-处理器已存在', 'infra.job.back.handlerExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'job handler already exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 6. 定时任务-处理器已存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job.back.handlerExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-处理器已存在', 'infra.job.back.handlerExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '定时任务的处理器已经存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 7. 定时任务-状态变更无效

DELETE FROM infra_i18n_key WHERE message_key = 'infra.job.back.statusInvalid';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-状态变更无效', 'infra.job.back.statusInvalid', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 7. 定时任务-状态变更无效 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job.back.statusInvalid' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-状态变更无效', 'infra.job.back.statusInvalid', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'job status change invalid', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 7. 定时任务-状态变更无效 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job.back.statusInvalid' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-状态变更无效', 'infra.job.back.statusInvalid', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '只允许修改为开启或者关闭状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 8. 定时任务-状态未变

DELETE FROM infra_i18n_key WHERE message_key = 'infra.job.back.statusEquals';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-状态未变', 'infra.job.back.statusEquals', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 8. 定时任务-状态未变 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job.back.statusEquals' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-状态未变', 'infra.job.back.statusEquals', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'job already in this status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 8. 定时任务-状态未变 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job.back.statusEquals' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-状态未变', 'infra.job.back.statusEquals', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '定时任务已经处于该状态，无需修改', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 9. 定时任务-仅正常状态可修改

DELETE FROM infra_i18n_key WHERE message_key = 'infra.job.back.onlyNormalUpdate';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-仅正常状态可修改', 'infra.job.back.onlyNormalUpdate', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 9. 定时任务-仅正常状态可修改 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job.back.onlyNormalUpdate' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-仅正常状态可修改', 'infra.job.back.onlyNormalUpdate', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'only normal job can be updated', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 9. 定时任务-仅正常状态可修改 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job.back.onlyNormalUpdate' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-仅正常状态可修改', 'infra.job.back.onlyNormalUpdate', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '只有开启状态的任务，才可以修改', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 10. 定时任务-CRON表达式无效

DELETE FROM infra_i18n_key WHERE message_key = 'infra.job.back.cronExpression.invalid';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-CRON表达式无效', 'infra.job.back.cronExpression.invalid', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 10. 定时任务-CRON表达式无效 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job.back.cronExpression.invalid' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-CRON表达式无效', 'infra.job.back.cronExpression.invalid', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'cron expression is invalid', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 10. 定时任务-CRON表达式无效 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job.back.cronExpression.invalid' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-CRON表达式无效', 'infra.job.back.cronExpression.invalid', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'CRON 表达式不正确', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 11. 定时任务-处理器Bean不存在

DELETE FROM infra_i18n_key WHERE message_key = 'infra.job.back.beanNotExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-处理器Bean不存在', 'infra.job.back.beanNotExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 11. 定时任务-处理器Bean不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job.back.beanNotExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-处理器Bean不存在', 'infra.job.back.beanNotExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'job handler bean not exists, note that bean name defaults to lowercase first letter', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 11. 定时任务-处理器Bean不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job.back.beanNotExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-处理器Bean不存在', 'infra.job.back.beanNotExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '定时任务的处理器 Bean 不存在，注意 Bean 默认首字母小写', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 12. 定时任务-处理器Bean类型错误

DELETE FROM infra_i18n_key WHERE message_key = 'infra.job.back.beanTypeError';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-处理器Bean类型错误', 'infra.job.back.beanTypeError', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 12. 定时任务-处理器Bean类型错误 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job.back.beanTypeError' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-处理器Bean类型错误', 'infra.job.back.beanTypeError', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'job handler bean type error, JobHandler interface not implemented', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 12. 定时任务-处理器Bean类型错误 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job.back.beanTypeError' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-处理器Bean类型错误', 'infra.job.back.beanTypeError', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '定时任务的处理器 Bean 类型不正确，未实现 JobHandler 接口', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- API错误日志
-- =============================================

-- 13. API错误日志-不存在

DELETE FROM infra_i18n_key WHERE message_key = 'infra.apiErrorLog.back.notFound';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API错误日志-不存在', 'infra.apiErrorLog.back.notFound', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 13. API错误日志-不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiErrorLog.back.notFound' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API错误日志-不存在', 'infra.apiErrorLog.back.notFound', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'api error log not found', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 13. API错误日志-不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiErrorLog.back.notFound' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API错误日志-不存在', 'infra.apiErrorLog.back.notFound', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'API 错误日志不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 14. API错误日志-已处理

DELETE FROM infra_i18n_key WHERE message_key = 'infra.apiErrorLog.back.processed';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API错误日志-已处理', 'infra.apiErrorLog.back.processed', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 14. API错误日志-已处理 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiErrorLog.back.processed' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API错误日志-已处理', 'infra.apiErrorLog.back.processed', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'api error log already processed', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 14. API错误日志-已处理 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiErrorLog.back.processed' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API错误日志-已处理', 'infra.apiErrorLog.back.processed', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'API 错误日志已处理', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- 文件相关
-- =============================================

-- 15. 文件-路径已存在

DELETE FROM infra_i18n_key WHERE message_key = 'infra.file.back.pathExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-路径已存在', 'infra.file.back.pathExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 15. 文件-路径已存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.file.back.pathExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-路径已存在', 'infra.file.back.pathExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'file path already exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 15. 文件-路径已存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.file.back.pathExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-路径已存在', 'infra.file.back.pathExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '文件路径已存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 16. 文件-不存在

DELETE FROM infra_i18n_key WHERE message_key = 'infra.file.back.notExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-不存在', 'infra.file.back.notExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 16. 文件-不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.file.back.notExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-不存在', 'infra.file.back.notExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'file not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 16. 文件-不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.file.back.notExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-不存在', 'infra.file.back.notExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '文件不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 17. 文件-为空

DELETE FROM infra_i18n_key WHERE message_key = 'infra.file.back.empty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-为空', 'infra.file.back.empty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 17. 文件-为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.file.back.empty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-为空', 'infra.file.back.empty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'file is empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 17. 文件-为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.file.back.empty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-为空', 'infra.file.back.empty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '文件为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 18. 文件-类型不允许

DELETE FROM infra_i18n_key WHERE message_key = 'infra.file.back.typeNotAllowed';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-类型不允许', 'infra.file.back.typeNotAllowed', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 18. 文件-类型不允许 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.file.back.typeNotAllowed' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-类型不允许', 'infra.file.back.typeNotAllowed', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'file type not allowed', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 18. 文件-类型不允许 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.file.back.typeNotAllowed' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-类型不允许', 'infra.file.back.typeNotAllowed', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '不允许上传该文件类型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 19. 文件-大小超限

DELETE FROM infra_i18n_key WHERE message_key = 'infra.file.back.sizeExceed';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-大小超限', 'infra.file.back.sizeExceed', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 19. 文件-大小超限 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.file.back.sizeExceed' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-大小超限', 'infra.file.back.sizeExceed', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'file size exceeds limit, max {}MB', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 19. 文件-大小超限 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.file.back.sizeExceed' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-大小超限', 'infra.file.back.sizeExceed', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '文件大小超过限制，允许上传的最大文件大小为 {}MB', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- 代码生成器
-- =============================================

-- 20. 代码生成-表已存在

DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.back.tableExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-表已存在', 'infra.codegen.back.tableExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 20. 代码生成-表已存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.back.tableExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-表已存在', 'infra.codegen.back.tableExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'table definition already exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 20. 代码生成-表已存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.back.tableExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-表已存在', 'infra.codegen.back.tableExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '表定义已经存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 21. 代码生成-导入的表不存在

DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.back.importTableNotFound';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-导入的表不存在', 'infra.codegen.back.importTableNotFound', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 21. 代码生成-导入的表不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.back.importTableNotFound' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-导入的表不存在', 'infra.codegen.back.importTableNotFound', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'imported table not found', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 21. 代码生成-导入的表不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.back.importTableNotFound' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-导入的表不存在', 'infra.codegen.back.importTableNotFound', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '导入的表不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 22. 代码生成-导入的字段不存在

DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.back.importColumnsNotFound';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-导入的字段不存在', 'infra.codegen.back.importColumnsNotFound', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 22. 代码生成-导入的字段不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.back.importColumnsNotFound' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-导入的字段不存在', 'infra.codegen.back.importColumnsNotFound', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'imported columns not found', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 22. 代码生成-导入的字段不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.back.importColumnsNotFound' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-导入的字段不存在', 'infra.codegen.back.importColumnsNotFound', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '导入的字段不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 23. 代码生成-表定义不存在

DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.back.tableNotExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-表定义不存在', 'infra.codegen.back.tableNotExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 23. 代码生成-表定义不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.back.tableNotExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-表定义不存在', 'infra.codegen.back.tableNotExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'table definition not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 23. 代码生成-表定义不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.back.tableNotExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-表定义不存在', 'infra.codegen.back.tableNotExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '表定义不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 24. 代码生成-字段不存在

DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.back.columnNotExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-字段不存在', 'infra.codegen.back.columnNotExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 24. 代码生成-字段不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.back.columnNotExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-字段不存在', 'infra.codegen.back.columnNotExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'column definition not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 24. 代码生成-字段不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.back.columnNotExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-字段不存在', 'infra.codegen.back.columnNotExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '字段义不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 25. 代码生成-同步的字段不存在

DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.back.syncColumnsNotFound';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-同步的字段不存在', 'infra.codegen.back.syncColumnsNotFound', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 25. 代码生成-同步的字段不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.back.syncColumnsNotFound' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-同步的字段不存在', 'infra.codegen.back.syncColumnsNotFound', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'sync columns not found', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 25. 代码生成-同步的字段不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.back.syncColumnsNotFound' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-同步的字段不存在', 'infra.codegen.back.syncColumnsNotFound', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '同步的字段不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 26. 代码生成-同步无变化

DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.back.noChange';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-同步无变化', 'infra.codegen.back.noChange', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 26. 代码生成-同步无变化 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.back.noChange' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-同步无变化', 'infra.codegen.back.noChange', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'sync has no changes', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 26. 代码生成-同步无变化 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.back.noChange' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-同步无变化', 'infra.codegen.back.noChange', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '同步失败，不存在改变', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 27. 代码生成-表注释为空

DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.back.tableCommentEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-表注释为空', 'infra.codegen.back.tableCommentEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 27. 代码生成-表注释为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.back.tableCommentEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-表注释为空', 'infra.codegen.back.tableCommentEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'table comment is empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 27. 代码生成-表注释为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.back.tableCommentEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-表注释为空', 'infra.codegen.back.tableCommentEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '数据库的表注释未填写', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 28. 代码生成-字段注释为空

DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.back.columnCommentEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-字段注释为空', 'infra.codegen.back.columnCommentEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 28. 代码生成-字段注释为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.back.columnCommentEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-字段注释为空', 'infra.codegen.back.columnCommentEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'column {} comment is empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 28. 代码生成-字段注释为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.back.columnCommentEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-字段注释为空', 'infra.codegen.back.columnCommentEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '数据库的表字段({})注释未填写', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 29. 代码生成-主表不存在

DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.back.masterTableNotExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-主表不存在', 'infra.codegen.back.masterTableNotExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 29. 代码生成-主表不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.back.masterTableNotExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-主表不存在', 'infra.codegen.back.masterTableNotExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'master table (id={}) not exists, please check', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 29. 代码生成-主表不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.back.masterTableNotExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-主表不存在', 'infra.codegen.back.masterTableNotExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '主表(id={})定义不存在，请检查', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 30. 代码生成-子表字段不存在

DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.back.subColumnNotExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-子表字段不存在', 'infra.codegen.back.subColumnNotExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 30. 代码生成-子表字段不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.back.subColumnNotExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-子表字段不存在', 'infra.codegen.back.subColumnNotExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'sub table column (id={}) not exists, please check', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 30. 代码生成-子表字段不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.back.subColumnNotExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-子表字段不存在', 'infra.codegen.back.subColumnNotExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '子表的字段(id={})不存在，请检查', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 31. 代码生成-主表生成失败

DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.back.masterNoSubTable';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-主表生成失败', 'infra.codegen.back.masterNoSubTable', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 31. 代码生成-主表生成失败 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.back.masterNoSubTable' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-主表生成失败', 'infra.codegen.back.masterNoSubTable', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'master table generation failed, no sub table', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 31. 代码生成-主表生成失败 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.back.masterNoSubTable' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-主表生成失败', 'infra.codegen.back.masterNoSubTable', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '主表生成代码失败，原因：它没有子表', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- 文件配置
-- =============================================

-- 32. 文件配置-不存在

DELETE FROM infra_i18n_key WHERE message_key = 'infra.fileConfig.back.notExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-不存在', 'infra.fileConfig.back.notExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 32. 文件配置-不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.back.notExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-不存在', 'infra.fileConfig.back.notExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'file config not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 32. 文件配置-不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.back.notExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-不存在', 'infra.fileConfig.back.notExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '文件配置不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 33. 文件配置-key重复

DELETE FROM infra_i18n_key WHERE message_key = 'infra.fileConfig.back.keyDuplicate';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-key重复', 'infra.fileConfig.back.keyDuplicate', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 33. 文件配置-key重复 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.back.keyDuplicate' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-key重复', 'infra.fileConfig.back.keyDuplicate', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'file config key duplicate', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 33. 文件配置-key重复 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.back.keyDuplicate' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-key重复', 'infra.fileConfig.back.keyDuplicate', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '文件配置 key 冲突', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 34. 文件配置-主配置禁止删除

DELETE FROM infra_i18n_key WHERE message_key = 'infra.fileConfig.back.masterProhibitDelete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-主配置禁止删除', 'infra.fileConfig.back.masterProhibitDelete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 34. 文件配置-主配置禁止删除 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.back.masterProhibitDelete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-主配置禁止删除', 'infra.fileConfig.back.masterProhibitDelete', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'master file config cannot be deleted, reason: it is the primary config, deleting will cause file upload failure', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 34. 文件配置-主配置禁止删除 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.back.masterProhibitDelete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-主配置禁止删除', 'infra.fileConfig.back.masterProhibitDelete', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '该文件配置不允许删除，原因：它是主配置，删除会导致无法上传文件', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 35. 文件配置-主数据源不存在

DELETE FROM infra_i18n_key WHERE message_key = 'infra.fileConfig.back.masterNotExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-主数据源不存在', 'infra.fileConfig.back.masterNotExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 35. 文件配置-主数据源不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.back.masterNotExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-主数据源不存在', 'infra.fileConfig.back.masterNotExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'master datasource config not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 35. 文件配置-主数据源不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.back.masterNotExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-主数据源不存在', 'infra.fileConfig.back.masterNotExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '主数据源配置不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- 数据源配置
-- =============================================

-- 36. 数据源配置-不存在

DELETE FROM infra_i18n_key WHERE message_key = 'infra.dataSourceConfig.back.notExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数据源配置-不存在', 'infra.dataSourceConfig.back.notExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 36. 数据源配置-不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.dataSourceConfig.back.notExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数据源配置-不存在', 'infra.dataSourceConfig.back.notExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'datasource config not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 36. 数据源配置-不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.dataSourceConfig.back.notExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数据源配置-不存在', 'infra.dataSourceConfig.back.notExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '数据源配置不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 37. 数据源配置-无法连接

DELETE FROM infra_i18n_key WHERE message_key = 'infra.dataSourceConfig.back.cannotConnect';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数据源配置-无法连接', 'infra.dataSourceConfig.back.cannotConnect', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 37. 数据源配置-无法连接 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.dataSourceConfig.back.cannotConnect' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数据源配置-无法连接', 'infra.dataSourceConfig.back.cannotConnect', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'datasource config invalid, cannot connect', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 37. 数据源配置-无法连接 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.dataSourceConfig.back.cannotConnect' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数据源配置-无法连接', 'infra.dataSourceConfig.back.cannotConnect', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '数据源配置不正确，无法进行连接', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- 示例业务
-- =============================================

-- 38. 示例联系人-不存在

DELETE FROM infra_i18n_key WHERE message_key = 'infra.demo01Contact.back.notExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('示例联系人-不存在', 'infra.demo01Contact.back.notExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 38. 示例联系人-不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.demo01Contact.back.notExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('示例联系人-不存在', 'infra.demo01Contact.back.notExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'demo contact not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 38. 示例联系人-不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.demo01Contact.back.notExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('示例联系人-不存在', 'infra.demo01Contact.back.notExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '示例联系人不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 39. 示例分类-不存在

DELETE FROM infra_i18n_key WHERE message_key = 'infra.demo02Category.back.notExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('示例分类-不存在', 'infra.demo02Category.back.notExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 39. 示例分类-不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.demo02Category.back.notExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('示例分类-不存在', 'infra.demo02Category.back.notExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'demo category not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 39. 示例分类-不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.demo02Category.back.notExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('示例分类-不存在', 'infra.demo02Category.back.notExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '示例分类不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 40. 示例分类-存在子级

DELETE FROM infra_i18n_key WHERE message_key = 'infra.demo02Category.back.hasChildren';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('示例分类-存在子级', 'infra.demo02Category.back.hasChildren', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 40. 示例分类-存在子级 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.demo02Category.back.hasChildren' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('示例分类-存在子级', 'infra.demo02Category.back.hasChildren', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'demo category has children, cannot delete', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 40. 示例分类-存在子级 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.demo02Category.back.hasChildren' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('示例分类-存在子级', 'infra.demo02Category.back.hasChildren', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '存在存在子示例分类，无法删除', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 41. 示例分类-父级不存在

DELETE FROM infra_i18n_key WHERE message_key = 'infra.demo02Category.back.parentNotExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('示例分类-父级不存在', 'infra.demo02Category.back.parentNotExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 41. 示例分类-父级不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.demo02Category.back.parentNotExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('示例分类-父级不存在', 'infra.demo02Category.back.parentNotExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'demo category parent not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 41. 示例分类-父级不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.demo02Category.back.parentNotExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('示例分类-父级不存在', 'infra.demo02Category.back.parentNotExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '父级示例分类不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 42. 示例分类-不能设置自己为父级

DELETE FROM infra_i18n_key WHERE message_key = 'infra.demo02Category.back.parentSelfError';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('示例分类-不能设置自己为父级', 'infra.demo02Category.back.parentSelfError', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 42. 示例分类-不能设置自己为父级 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.demo02Category.back.parentSelfError' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('示例分类-不能设置自己为父级', 'infra.demo02Category.back.parentSelfError', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'cannot set itself as parent demo category', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 42. 示例分类-不能设置自己为父级 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.demo02Category.back.parentSelfError' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('示例分类-不能设置自己为父级', 'infra.demo02Category.back.parentSelfError', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '不能设置自己为父示例分类', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 43. 示例分类-名称重复

DELETE FROM infra_i18n_key WHERE message_key = 'infra.demo02Category.back.nameDuplicate';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('示例分类-名称重复', 'infra.demo02Category.back.nameDuplicate', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 43. 示例分类-名称重复 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.demo02Category.back.nameDuplicate' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('示例分类-名称重复', 'infra.demo02Category.back.nameDuplicate', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'demo category name duplicate', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 43. 示例分类-名称重复 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.demo02Category.back.nameDuplicate' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('示例分类-名称重复', 'infra.demo02Category.back.nameDuplicate', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '已经存在该名字的示例分类', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 44. 示例分类-父级是子级

DELETE FROM infra_i18n_key WHERE message_key = 'infra.demo02Category.back.parentChildError';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('示例分类-父级是子级', 'infra.demo02Category.back.parentChildError', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 44. 示例分类-父级是子级 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.demo02Category.back.parentChildError' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('示例分类-父级是子级', 'infra.demo02Category.back.parentChildError', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'cannot set child as parent', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 44. 示例分类-父级是子级 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.demo02Category.back.parentChildError' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('示例分类-父级是子级', 'infra.demo02Category.back.parentChildError', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '不能设置自己的子示例分类为父示例分类', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 45. 学生-不存在

DELETE FROM infra_i18n_key WHERE message_key = 'infra.demo03Student.back.notExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('学生-不存在', 'infra.demo03Student.back.notExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 45. 学生-不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.demo03Student.back.notExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('学生-不存在', 'infra.demo03Student.back.notExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'student not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 45. 学生-不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.demo03Student.back.notExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('学生-不存在', 'infra.demo03Student.back.notExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '学生不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 46. 学生课程-不存在

DELETE FROM infra_i18n_key WHERE message_key = 'infra.demo03Course.back.notExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('学生课程-不存在', 'infra.demo03Course.back.notExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 46. 学生课程-不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.demo03Course.back.notExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('学生课程-不存在', 'infra.demo03Course.back.notExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'student course not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 46. 学生课程-不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.demo03Course.back.notExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('学生课程-不存在', 'infra.demo03Course.back.notExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '学生课程不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 47. 学生班级-不存在

DELETE FROM infra_i18n_key WHERE message_key = 'infra.demo03Grade.back.notExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('学生班级-不存在', 'infra.demo03Grade.back.notExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 47. 学生班级-不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.demo03Grade.back.notExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('学生班级-不存在', 'infra.demo03Grade.back.notExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'student grade not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 47. 学生班级-不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.demo03Grade.back.notExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('学生班级-不存在', 'infra.demo03Grade.back.notExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '学生班级不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 48. 学生班级-已存在

DELETE FROM infra_i18n_key WHERE message_key = 'infra.demo03Grade.back.exists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('学生班级-已存在', 'infra.demo03Grade.back.exists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 48. 学生班级-已存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.demo03Grade.back.exists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('学生班级-已存在', 'infra.demo03Grade.back.exists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'student grade already exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 48. 学生班级-已存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.demo03Grade.back.exists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('学生班级-已存在', 'infra.demo03Grade.back.exists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '学生班级已存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 49. 错误码导入-数据为空

DELETE FROM infra_i18n_key WHERE message_key = 'infra.errorCode.back.importEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('错误码导入-数据为空', 'infra.errorCode.back.importEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 49. 错误码导入-数据为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.errorCode.back.importEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('错误码导入-数据为空', 'infra.errorCode.back.importEmpty', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'import data is empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 49. 错误码导入-数据为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.errorCode.back.importEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('错误码导入-数据为空', 'infra.errorCode.back.importEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '导入数据为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- 国际化国家
-- =============================================

-- 50. 国际化国家-不存在

DELETE FROM infra_i18n_key WHERE message_key = 'infra.i18nLocale.back.notExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化国家-不存在', 'infra.i18nLocale.back.notExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 50. 国际化国家-不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nLocale.back.notExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化国家-不存在', 'infra.i18nLocale.back.notExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'i18n locale not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 50. 国际化国家-不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nLocale.back.notExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化国家-不存在', 'infra.i18nLocale.back.notExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '国际化国家不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 51. 国际化国家-已存在

DELETE FROM infra_i18n_key WHERE message_key = 'infra.i18nLocale.back.exists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化国家-已存在', 'infra.i18nLocale.back.exists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 51. 国际化国家-已存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nLocale.back.exists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化国家-已存在', 'infra.i18nLocale.back.exists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'i18n locale already exists {}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 51. 国际化国家-已存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nLocale.back.exists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化国家-已存在', 'infra.i18nLocale.back.exists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '国际化国家已存在{}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 52. 国际化国家-默认国家禁止删除

DELETE FROM infra_i18n_key WHERE message_key = 'infra.i18nLocale.back.defaultProhibitDelete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化国家-默认国家禁止删除', 'infra.i18nLocale.back.defaultProhibitDelete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 52. 国际化国家-默认国家禁止删除 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nLocale.back.defaultProhibitDelete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化国家-默认国家禁止删除', 'infra.i18nLocale.back.defaultProhibitDelete', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'default i18n locale cannot be deleted', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 52. 国际化国家-默认国家禁止删除 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nLocale.back.defaultProhibitDelete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化国家-默认国家禁止删除', 'infra.i18nLocale.back.defaultProhibitDelete', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '国际化默认国家不允许删除', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- 国际化键名
-- =============================================

-- 53. 国际化键名-不存在

DELETE FROM infra_i18n_key WHERE message_key = 'infra.i18nKey.back.notExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化键名-不存在', 'infra.i18nKey.back.notExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 53. 国际化键名-不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nKey.back.notExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化键名-不存在', 'infra.i18nKey.back.notExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'i18n key not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 53. 国际化键名-不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nKey.back.notExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化键名-不存在', 'infra.i18nKey.back.notExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '国际化键名不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 54. 国际化键名-已存在

DELETE FROM infra_i18n_key WHERE message_key = 'infra.i18nKey.back.exists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化键名-已存在', 'infra.i18nKey.back.exists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 54. 国际化键名-已存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nKey.back.exists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化键名-已存在', 'infra.i18nKey.back.exists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'i18n key already exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 54. 国际化键名-已存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nKey.back.exists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化键名-已存在', 'infra.i18nKey.back.exists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '国际化键名已存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 55. 国际化键名-禁止修改键名

DELETE FROM infra_i18n_key WHERE message_key = 'infra.i18nKey.back.prohibitUpdate';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化键名-禁止修改键名', 'infra.i18nKey.back.prohibitUpdate', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 55. 国际化键名-禁止修改键名 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nKey.back.prohibitUpdate' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化键名-禁止修改键名', 'infra.i18nKey.back.prohibitUpdate', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'i18n key cannot be modified', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 55. 国际化键名-禁止修改键名 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nKey.back.prohibitUpdate' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化键名-禁止修改键名', 'infra.i18nKey.back.prohibitUpdate', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '国际化键名不允许修改键名', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 56. 国际化键名-系统内置禁止删除

DELETE FROM infra_i18n_key WHERE message_key = 'infra.i18nKey.back.systemProhibitDelete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化键名-系统内置禁止删除', 'infra.i18nKey.back.systemProhibitDelete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 56. 国际化键名-系统内置禁止删除 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nKey.back.systemProhibitDelete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化键名-系统内置禁止删除', 'infra.i18nKey.back.systemProhibitDelete', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'system i18n key cannot be deleted', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 56. 国际化键名-系统内置禁止删除 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nKey.back.systemProhibitDelete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化键名-系统内置禁止删除', 'infra.i18nKey.back.systemProhibitDelete', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '国际化键名不允许删除内置键', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- 国际化信息
-- =============================================

-- 57. 国际化信息-已存在

DELETE FROM infra_i18n_key WHERE message_key = 'infra.i18nMessage.back.exists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化信息-已存在', 'infra.i18nMessage.back.exists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 57. 国际化信息-已存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nMessage.back.exists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化信息-已存在', 'infra.i18nMessage.back.exists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'i18n message already exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 57. 国际化信息-已存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nMessage.back.exists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化信息-已存在', 'infra.i18nMessage.back.exists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '国际化信息已存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 58. 国际化信息-不存在

DELETE FROM infra_i18n_key WHERE message_key = 'infra.i18nMessage.back.notExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化信息-不存在', 'infra.i18nMessage.back.notExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 58. 国际化信息-不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nMessage.back.notExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化信息-不存在', 'infra.i18nMessage.back.notExists', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, 'i18n message not exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 58. 国际化信息-不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nMessage.back.notExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化信息-不存在', 'infra.i18nMessage.back.notExists', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '国际化信息不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
