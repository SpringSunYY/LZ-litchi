package com.lz.module.infra.enums;

/**
 * Infra 字典类型的枚举类
 *
 * @author 荔枝源码
 */
public interface DictTypeConstants {

    String USER_TYPE = "user_type"; // 用户类型
    String USER_SEX = "user_sex";// 性别

    String JOB_STATUS = "infra_job_status"; // 定时任务状态的枚举
    String JOB_LOG_STATUS = "infra_job_log_status"; // 定时任务日志状态的枚举

    String API_ERROR_LOG_PROCESS_STATUS = "infra_api_error_log_process_status"; // API 错误日志的处理状态的枚举

    String CONFIG_TYPE = "infra_config_type"; // 参数配置类型
    String BOOLEAN_STRING = "infra_boolean_string"; // Boolean 是否类型

    String OPERATE_TYPE = "infra_operate_type"; // 操作类型

    // ========== 国际化相关 ==========
    String I18N_KEY_IS_SYSTEM = "infra_i18n_key_is_system"; // 国际化键是否内置
    String I18N_KEY_USE_TYPE = "infra_i18n_key_use_type"; // 国际化键使用类型
    String I18N_LOCALE_TARGET = "infra_i18n_locale_target"; // 国际化国家使用端
    String I18N_LOCALE_STATUS = "infra_i18n_locale_status"; // 国际化国家状态
    String I18N_LOCALE_IS_DEFAULT = "infra_i18n_locale_is_default"; // 国际化国家是否默认

    String SYSTEM_MODULE_TYPE = "system_module_type";//

    String INFRA_AREA_LEVEL = "system_area_level"; // 地区层级// 系统模块
}
