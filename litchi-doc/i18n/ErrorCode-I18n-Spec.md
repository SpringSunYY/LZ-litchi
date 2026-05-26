# ErrorCode 国际化规范

## 1. 目的

本文档定义 ErrorCode 枚举类（如 `ErrorCodeConstants.java`）中国际化（i18n）字段的命名规范、i18n Key 填充规范、SQL 生成规范，以及英文翻译规范。

统一规范确保：
- 每一个 ErrorCode 都能在 `infra_i18n_key` / `infra_i18n_message` 表中找到对应的国际化翻译
- 国际化 Key 在不同模块、不同错误码之间命名风格一致
- SQL 脚本可一键生成，可重复执行（先 DELETE 再 INSERT）

---

## 2. ErrorCode i18n Key 命名规范

### 2.1 Key 格式

```
{module}.{businessName}.back.{errorType}
```

| 组成部分 | 含义 | 说明 |
|---|---|---|
| `module` | 模块名（小写） | 来自模块目录名，如 `infra`、`system`、`member` |
| `businessName` | 业务名（驼峰转点） | 从 ErrorCode 常量名中推导 |
| `back` | 固定层级，固定值 | 表示后端异常消息（back-end），不可省略 |
| `errorType` | 错误类型（camelCase） | 从 ErrorCode 常量名中推导 |

**示例**：

| ErrorCode 常量名 | i18n Key |
|---|---|
| `CONFIG_NOT_EXISTS` | `infra.config.back.notExists` |
| `FILE_CONFIG_KEY_DUPLICATE` | `infra.fileConfig.back.duplicate` |
| `DEMO01_CONTACT_NOT_EXISTS` | `infra.demo01Contact.back.notExists` |
| `I18N_MESSAGE_NOT_EXISTS` | `infra.i18nMessage.back.notExists` |

---

### 2.2 businessName 推导规则

**规则：取 ErrorCode 常量名中第一条下划线 `_` 之前的内容，转为小写 + 驼峰转点。**

**推导公式**：
```
businessName = 常量名.split('_')[0].toLowerCase().camelToDot()
```

**camelToDot 规则**：连续的大写字母串视为一个单词，转为点分隔小写。

**推导示例**：

| ErrorCode 常量名 | 第一条下划线前 | 转小写 | 驼峰转点 | businessName |
|---|---|---|---|---|
| `CONFIG_NOT_EXISTS` | `CONFIG` | `config` | `config` | `config` |
| `CONFIG_KEY_DUPLICATE` | `CONFIG` | `config` | `config` | `config` |
| `FILE_CONFIG_NOT_EXISTS` | `FILE_CONFIG` | `file_config` | `fileConfig` | `fileConfig` |
| `DATA_SOURCE_CONFIG_NOT_EXISTS` | `DATA_SOURCE_CONFIG` | `data_source_config` | `dataSourceConfig` | `dataSourceConfig` |
| `API_ERROR_LOG_NOT_FOUND` | `API_ERROR_LOG` | `api_error_log` | `apiErrorLog` | `apiErrorLog` |
| `DEMO01_CONTACT_NOT_EXISTS` | `DEMO01_CONTACT` | `demo01_contact` | `demo01Contact` | `demo01Contact` |
| `DEMO02_CATEGORY_EXITS_CHILDREN` | `DEMO02_CATEGORY` | `demo02_category` | `demo02Category` | `demo02Category` |
| `I18N_KEY_EXISTS` | `I18N_KEY` | `i18n_key` | `i18nKey` | `i18nKey` |
| `JOB_HANDLER_EXISTS` | `JOB` | `job` | `job` | `job` |
| `FILE_PATH_EXISTS` | `FILE` | `file` | `file` | `file` |

---

### 2.3 errorType 推导规则

**规则：取 ErrorCode 常量名中第一条下划线 `_` 之后的内容，转 camelCase 得到原始 errorType，再按语义映射为最终 errorType。**

**推导步骤**：
1. 取常量名第一条下划线后的内容 → 转为 camelCase → 得到原始 errorType
2. 按语义分组表，将原始 errorType 映射为最终 errorType（同类语义使用相同的 errorType）

**第一步：原始 errorType 推导**

| 常量名后缀（第一条下划线后） | 原始 errorType（camelCase） |
|---|---|
| `NOT_EXISTS` | `notExists` |
| `NOT_FOUND` | `notFound` |
| `EXISTS` | `exists` |
| `EXITS_CHILDREN` | `exitsChildren` |
| `KEY_DUPLICATE` | `keyDuplicate` |
| `NAME_DUPLICATE` | `nameDuplicate` |
| `TYPE_NOT_ALLOWED` | `typeNotAllowed` |
| `SIZE_EXCEED` | `sizeExceed` |
| `IS_EMPTY` | `isEmpty` |
| `INVALID` | `invalid` |
| `VALID` | `valid`（需映射为 invalid） |
| `PROCESSED` | `processed` |
| `CHANGE_STATUS_INVALID` | `changeStatusInvalid` |
| `CHANGE_STATUS_EQUALS` | `changeStatusEquals` |
| `UPDATE_ONLY_NORMAL_STATUS` | `updateOnlyNormalStatus` |
| `HANDLER_EXISTS` | `handlerExists` |
| `HANDLER_BEAN_NOT_EXISTS` | `handlerBeanNotExists` |
| `HANDLER_BEAN_TYPE_ERROR` | `handlerBeanTypeError` |
| `CAN_NOT_DELETE_SYSTEM_TYPE` | `canNotDeleteSystemType` |
| `DELETE_FAIL_MASTER` | `deleteFailMaster` |
| `MASTER_NOT_EXISTS` | `masterNotExists` |
| `CONFIG_NOT_OK` | `configNotOk` |
| `PROHIBIT_DELETE` | `prohibitDelete` |
| `PROHIBIT_UPDATE_KEY` | `prohibitUpdateKey` |
| `PROHIBIT_DELETE_SYSTEM` | `prohibitDeleteSystem` |
| `IMPORT_DATA_EMPTY` | `importDataEmpty` |
| `TABLE_EXISTS` | `tableExists` |
| `IMPORT_TABLE_NULL` | `importTableNull` |
| `IMPORT_COLUMNS_NULL` | `importColumnsNull` |
| `TABLE_NOT_EXISTS` | `tableNotExists` |
| `COLUMN_NOT_EXISTS` | `columnNotExists` |
| `SYNC_COLUMNS_NULL` | `syncColumnsNull` |
| `SYNC_NONE_CHANGE` | `syncNoneChange` |
| `TABLE_INFO_TABLE_COMMENT_IS_NULL` | `tableInfoTableCommentIsNull` |
| `TABLE_INFO_COLUMN_COMMENT_IS_NULL` | `tableInfoColumnCommentIsNull` |
| `MASTER_TABLE_NOT_EXISTS` | `masterTableNotExists` |
| `SUB_COLUMN_NOT_EXISTS` | `subColumnNotExists` |
| `MASTER_GENERATION_FAIL_NO_SUB_TABLE` | `masterGenerationFailNoSubTable` |
| `PATH_EXISTS` | `pathExists` |
| `GET_VALUE_ERROR_IF_VISIBLE` | `getValueErrorIfVisible` |
| `PARENT_NOT_EXITS` | `parentNotExists` |
| `PARENT_ERROR` | `parentError` |
| `PARENT_IS_CHILD` | `parentIsChild` |

**第二步：语义分组映射（同类复用）**

原始 errorType 按语义统一映射，避免同一业务域内相同语义使用不同词：

| 语义 | 最终 errorType | 说明 |
|---|---|---|
| 不存在 / 找不到 | `notExists` | 资源不存在 |
| 未找到 | `notFound` | 同 notExists |
| 已存在 | `exists` | 数据重复 |
| key 重复 / 名称重复 | `keyDuplicate` / `nameDuplicate` | 强调名称/key 重复 |
| 重复 / 冲突 | `duplicate` | 通用重复 |
| 无效 / 不正确 | `invalid` | 格式或值错误 |
| 禁止删除 | `prohibitDelete` | 禁止删除操作 |
| 禁止修改 | `prohibitUpdate` | 禁止修改操作 |
| 为空 | `empty` | 数据为空 |
| 类型不允许 | `typeNotAllowed` | 类型非法 |
| 大小超限 | `sizeExceed` | 超出限制 |
| 无变化 | `noChange` | 同步无改变 |
| 已处理 | `processed` | 重复操作 |
| 状态未变 | `statusEquals` | 状态相同 |
| 状态变更无效 | `statusInvalid` | 状态不允许变更 |
| 仅正常状态可修改 | `onlyNormalUpdate` | 状态限制 |
| 处理器已存在 | `handlerExists` | 处理器重复 |
| Bean 不存在 | `beanNotExists` | Bean 未找到 |
| Bean 类型错误 | `beanTypeError` | Bean 类型错误 |
| 存在子级 | `hasChildren` | 树表删除限制 |
| 不能设置自己为父级 | `parentSelfError` | 自引用 |
| 不能设置子级为父级 | `parentChildError` | 子级作父级 |
| 父级不存在 | `parentNotExists` | 父级未找到 |
| 路径已存在 | `pathExists` | 路径重复 |
| 导入数据为空 | `importEmpty` | 导入为空 |
| 表已存在 | `tableExists` | 表重复 |
| 表定义不存在 | `tableNotExists` | 表未找到 |
| 字段不存在 | `columnNotExists` | 字段未找到 |
| 表注释为空 | `tableCommentEmpty` | 注释未填写 |
| 字段注释为空 | `columnCommentEmpty` | 字段注释未填写 |
| 主表不存在 | `masterTableNotExists` | 主表未找到 |
| 子表字段不存在 | `subColumnNotExists` | 子表字段未找到 |
| 主表无子表 | `masterNoSubTable` | 主表无子表 |
| 主配置禁止删除 | `masterProhibitDelete` | 主配置禁止删除 |
| 主配置不存在 | `masterNotExists` | 主配置未找到 |
| 无法连接 | `cannotConnect` | 无法连接 |

**通用推导公式**：

```
后缀 = 常量名.split('_').slice(1).join('_')  // 第一条下划线后全部
原始 errorType = 后缀.toCamelCase()
最终 errorType = 语义映射(原始 errorType)
i18n key = {module}.{businessName}.back.{最终 errorType}
```

---

### 2.4 ErrorCode 构造函数选择

```java
// 不需要国际化（保留旧写法，不填 i18n）
ErrorCode CODE = new ErrorCode(code, "中文消息");

// 需要国际化（使用三参构造函数，i18n 放中间）
ErrorCode CODE = new ErrorCode(code, "{module}.{business}.back.{errorType}", "中文消息");
```

> 注意：`{}` 占位符仅出现在消息（msg）中，不出现在 i18n key 中。i18n key 一旦确定，任何时候不变。

---

## 3. SQL 生成规范

### 3.1 SQL 文件路径

```
{module}-module-{moduleName}/src/main/resources/i18n/errorCode.sql
```

**示例**：`litchi-module-infra/src/main/resources/i18n/errorCode.sql`

### 3.2 SQL 文件结构

每个 ErrorCode 生成 **一个 key 插入 + 两条 message 插入（en-US + zh-CN）**，三条语句放在一起，统一使用 `` 写死为 5。

```sql
-- =============================================
-- {模块名} 错误码国际化 SQL
-- 生成时间：{YYYY-MM-DD}
-- 规范版本：v1.2
-- =============================================

-- ---------------------------------------------
-- 变量定义（运行时可覆盖）
-- ---------------------------------------------
SET @IS_SYSTEM = 0;
SET @USE_TYPE_EXCEPTION = 5;
SET @MODULE_TYPE = '{module}';
SET @LOCALE_TARGET_BACKEND = 1;
SET @LOCALE_EN = 'en-US';
SET @LOCALE_ZH_CN = 'zh-CN';
SET @CREATOR = '0';
SET @REMARK = 'ai auto generate';
SET @ORDER_NUM = 5;

-- =============================================
-- {业务域分组标题，如：参数配置}
-- =============================================

-- {序号}. {message_name}
DELETE FROM infra_i18n_key WHERE message_key = '{i18nKey}';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('{name}', '{i18nKey}', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- {序号}. {message_name} - en-US
DELETE FROM infra_i18n_message WHERE message_key = '{i18nKey}' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('{name}', '{i18nKey}', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '{enMessage}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- {序号}. {message_name} - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = '{i18nKey}' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('{name}', '{i18nKey}', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_EXCEPTION, '{zhMessage}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
```

### 3.3 字段说明

| 字段 | 说明 | 取值 |
|---|---|---|
| `message_name` | 名称 | `{业务名}-{错误简述}`，如 `参数配置-不存在` |
| `message_key` | i18n key | 按第二章规范生成 |
| `is_system` | 是否内置 | 0（非内置），内置系统错误码用 1 |
| `module_type` | 模块类型 | 当前模块名，如 `infra`、`system` |
| `use_type` | 使用类型 | **固定为 5（异常）** |
| `locale_target` | 使用端 | **固定为 1（后台/后端）** |
| `locale` | 语言 | `en-US`（英文）或 `zh-CN`（中文） |
| `message` | 消息内容 | 英文翻译（en-US）或中文原文（zh-CN） |
| `order_num` | 显示顺序 | **固定写死为 5（@ORDER_NUM）** |
| `remark` | 备注 | 统一填写 `ai auto generate` |

### 3.4 SQL 生成规则

- key 表（`infra_i18n_key`）：先 DELETE 按 `message_key`，再 INSERT
- message 表（`infra_i18n_message`）：先 DELETE 按 `message_key + locale`，再 INSERT
- 每条 key 对应两条 message（en-US + zh-CN）
- 同一 ErrorCode 的三条 INSERT 语句放在一起

---

## 4. 英文翻译规范

### 4.1 翻译原则

1. **简洁**：不超过 100 字符
2. **准确**：准确传达原意
3. **通顺**：符合英语习惯表达，避免中式英语
4. **保留占位符**：`{}` 原样保留，由 `ServiceExceptionUtil.doFormat` 运行时替换

### 4.2 常用翻译模板

| 中文模板 | 英文翻译 | 说明 |
|---|---|---|
| `{X}不存在` | `{x} not exists` | 最常用 |
| `{X}已存在` | `{x} already exists` | 数据重复 |
| `{X}重复` | `{x} duplicate` | 强调重复 |
| `{X}无效` / `{X}不正确` | `{x} is invalid` | 格式/值错误 |
| `{X}不允许删除` / `不能删除{X}` | `{x} cannot be deleted` | 禁止删除 |
| `{X}不允许修改` | `{x} cannot be modified` | 禁止修改 |
| `{X}已处理` | `{x} already processed` | 重复操作 |
| `{X}为空` | `{x} is empty` | 数据为空 |
| `{X}超过限制` | `{x} exceeds limit` | 超出限制 |
| `不能设置自己为父{X}` | cannot set itself as parent {x} | 自引用 |
| `不能设置子级为父级` | cannot set child as parent | 子级作父级 |
| `存在子{X}，无法删除` | {x} has children, cannot delete | 树表删除限制 |
| `{X}已处于该状态，无需修改` | {x} already in this status | 状态重复 |
| `只有{X}状态才能修改` | only {x} status can be modified | 状态限制 |
| `{X}已存在，原因：{Y}` | {x} already exists, reason: {y} | 带原因 |
| `允许上传的最大文件大小为 {}MB` | max upload file size is {}MB | 文件大小 |
| `主表(X)定义不存在` | master table (X) not exists | 主表错误 |
| `子表字段(X)不存在` | sub table column (X) not exists | 子表错误 |

### 4.3 占位符 `{}` 处理原则

- `{}` **仅出现在消息（msg）中**，**不出现**在 i18n key 中
- `{}` 在英文翻译中**原样保留**，由 `ServiceExceptionUtil.doFormat` 运行时替换
- 示例：消息 `国际化国家已存在{}` → key `infra.i18nLocale.back.exists` → en `i18n locale already exists {}`

---

## 5. 附录

### 5.1 use_type 枚举值

| 值 | 名称 | 说明 |
|---|---|---|
| 0 | 公共 | 通用 |
| 1 | UI | 用户界面 |
| 2 | 表单 | 表单相关 |
| 3 | 字段 | 字段 |
| 4 | 功能 | 功能操作 |
| **5** | **异常** | **ErrorCode 使用此值** |
| 6 | 菜单 | 菜单 |
| 7 | 字典 | 数据字典 |

### 5.2 is_system 枚举值

| 值 | 名称 | 说明 |
|---|---|---|
| 0 | 否 | 非内置，可编辑删除 |
| 1 | 是 | 内置，不可编辑删除 |

### 5.3 locale_target 使用端

| 值 | 名称 | 说明 |
|---|---|---|
| 0 | PC / 前端 | 前端展示 |
| **1** | **后台 / 后端** | **ErrorCode 使用此值** |

### 5.4 ErrorCode i18n Key 完整对照表（infra 模块）

> order_num 固定为 5。

| # | ErrorCode | i18n Key | name | en-US | zh-CN (原值) |
|---|---|---|---|---|---|
| 1 | CONFIG_NOT_EXISTS | infra.config.back.notExists | 参数配置-不存在 | config not exists | 参数配置不存在 |
| 2 | CONFIG_KEY_DUPLICATE | infra.config.back.keyDuplicate | 参数配置-key重复 | config key duplicate | 参数配置 key 重复 |
| 3 | CONFIG_CAN_NOT_DELETE_SYSTEM_TYPE | infra.config.back.systemType.prohibitDelete | 参数配置-系统类型禁止删除 | system config type cannot be deleted | 不能删除类型为系统内置的参数配置 |
| 4 | CONFIG_GET_VALUE_ERROR_IF_VISIBLE | infra.config.back.value.invalid | 参数配置-值不可见 | fail to get config value, invisible config is not allowed | 获取参数配置失败，原因：不允许获取不可见配置 |
| 5 | JOB_NOT_EXISTS | infra.job.back.notExists | 定时任务-不存在 | job not exists | 定时任务不存在 |
| 6 | JOB_HANDLER_EXISTS | infra.job.back.handlerExists | 定时任务-处理器已存在 | job handler already exists | 定时任务的处理器已经存在 |
| 7 | JOB_CHANGE_STATUS_INVALID | infra.job.back.statusInvalid | 定时任务-状态变更无效 | job status change invalid | 只允许修改为开启或者关闭状态 |
| 8 | JOB_CHANGE_STATUS_EQUALS | infra.job.back.statusEquals | 定时任务-状态未变 | job already in this status | 定时任务已经处于该状态，无需修改 |
| 9 | JOB_UPDATE_ONLY_NORMAL_STATUS | infra.job.back.onlyNormalUpdate | 定时任务-仅正常状态可修改 | only normal job can be updated | 只有开启状态的任务，才可以修改 |
| 10 | JOB_CRON_EXPRESSION_VALID | infra.job.back.cronExpression.invalid | 定时任务-CRON表达式无效 | cron expression is invalid | CRON 表达式不正确 |
| 11 | JOB_HANDLER_BEAN_NOT_EXISTS | infra.job.back.beanNotExists | 定时任务-处理器Bean不存在 | job handler bean not exists | 定时任务的处理器 Bean 不存在，注意 Bean 默认首字母小写 |
| 12 | JOB_HANDLER_BEAN_TYPE_ERROR | infra.job.back.beanTypeError | 定时任务-处理器Bean类型错误 | job handler bean type error | 定时任务的处理器 Bean 类型不正确，未实现 JobHandler 接口 |
| 13 | API_ERROR_LOG_NOT_FOUND | infra.apiErrorLog.back.notFound | API错误日志-不存在 | api error log not found | API 错误日志不存在 |
| 14 | API_ERROR_LOG_PROCESSED | infra.apiErrorLog.back.processed | API错误日志-已处理 | api error log already processed | API 错误日志已处理 |
| 15 | FILE_PATH_EXISTS | infra.file.back.pathExists | 文件-路径已存在 | file path already exists | 文件路径已存在 |
| 16 | FILE_NOT_EXISTS | infra.file.back.notExists | 文件-不存在 | file not exists | 文件不存在 |
| 17 | FILE_IS_EMPTY | infra.file.back.empty | 文件-为空 | file is empty | 文件为空 |
| 18 | FILE_TYPE_NOT_ALLOWED | infra.file.back.typeNotAllowed | 文件-类型不允许 | file type not allowed | 不允许上传该文件类型 |
| 19 | FILE_SIZE_EXCEED | infra.file.back.sizeExceed | 文件-大小超限 | file size exceeds limit, max {}MB | 文件大小超过限制，允许上传的最大文件大小为 {}MB |
| 20 | CODEGEN_TABLE_EXISTS | infra.codegen.back.tableExists | 代码生成-表已存在 | table definition already exists | 表定义已经存在 |
| 21 | CODEGEN_IMPORT_TABLE_NULL | infra.codegen.back.importTableNotFound | 代码生成-导入的表不存在 | imported table not found | 导入的表不存在 |
| 22 | CODEGEN_IMPORT_COLUMNS_NULL | infra.codegen.back.importColumnsNotFound | 代码生成-导入的字段不存在 | imported columns not found | 导入的字段不存在 |
| 23 | CODEGEN_TABLE_NOT_EXISTS | infra.codegen.back.tableNotExists | 代码生成-表定义不存在 | table definition not exists | 表定义不存在 |
| 24 | CODEGEN_COLUMN_NOT_EXISTS | infra.codegen.back.columnNotExists | 代码生成-字段不存在 | column definition not exists | 字段义不存在 |
| 25 | CODEGEN_SYNC_COLUMNS_NULL | infra.codegen.back.syncColumnsNotFound | 代码生成-同步的字段不存在 | sync columns not found | 同步的字段不存在 |
| 26 | CODEGEN_SYNC_NONE_CHANGE | infra.codegen.back.noChange | 代码生成-同步无变化 | sync has no changes | 同步失败，不存在改变 |
| 27 | CODEGEN_TABLE_INFO_TABLE_COMMENT_IS_NULL | infra.codegen.back.tableCommentEmpty | 代码生成-表注释为空 | table comment is empty | 数据库的表注释未填写 |
| 28 | CODEGEN_TABLE_INFO_COLUMN_COMMENT_IS_NULL | infra.codegen.back.columnCommentEmpty | 代码生成-字段注释为空 | column {} comment is empty | 数据库的表字段({})注释未填写 |
| 29 | CODEGEN_MASTER_TABLE_NOT_EXISTS | infra.codegen.back.masterTableNotExists | 代码生成-主表不存在 | master table (id={}) not exists | 主表(id={})定义不存在，请检查 |
| 30 | CODEGEN_SUB_COLUMN_NOT_EXISTS | infra.codegen.back.subColumnNotExists | 代码生成-子表字段不存在 | sub table column (id={}) not exists | 子表的字段(id={})不存在，请检查 |
| 31 | CODEGEN_MASTER_GENERATION_FAIL_NO_SUB_TABLE | infra.codegen.back.masterNoSubTable | 代码生成-主表生成失败 | master table generation failed, no sub table | 主表生成代码失败，原因：它没有子表 |
| 32 | FILE_CONFIG_NOT_EXISTS | infra.fileConfig.back.notExists | 文件配置-不存在 | file config not exists | 文件配置不存在 |
| 33 | FILE_CONFIG_KEY_DUPLICATE | infra.fileConfig.back.keyDuplicate | 文件配置-key重复 | file config key duplicate | 文件配置 key 冲突 |
| 34 | FILE_CONFIG_DELETE_FAIL_MASTER | infra.fileConfig.back.masterProhibitDelete | 文件配置-主配置禁止删除 | master file config cannot be deleted | 该文件配置不允许删除，原因：它是主配置，删除会导致无法上传文件 |
| 35 | FILE_CONFIG_MASTER_NOT_EXISTS | infra.fileConfig.back.masterNotExists | 文件配置-主数据源不存在 | master datasource config not exists | 主数据源配置不存在 |
| 36 | DATA_SOURCE_CONFIG_NOT_EXISTS | infra.dataSourceConfig.back.notExists | 数据源配置-不存在 | datasource config not exists | 数据源配置不存在 |
| 37 | DATA_SOURCE_CONFIG_NOT_OK | infra.dataSourceConfig.back.cannotConnect | 数据源配置-无法连接 | datasource config invalid, cannot connect | 数据源配置不正确，无法进行连接 |
| 38 | DEMO01_CONTACT_NOT_EXISTS | infra.demo01Contact.back.notExists | 示例联系人-不存在 | demo contact not exists | 示例联系人不存在 |
| 39 | DEMO02_CATEGORY_NOT_EXISTS | infra.demo02Category.back.notExists | 示例分类-不存在 | demo category not exists | 示例分类不存在 |
| 40 | DEMO02_CATEGORY_EXITS_CHILDREN | infra.demo02Category.back.hasChildren | 示例分类-存在子级 | demo category has children, cannot delete | 存在存在子示例分类，无法删除 |
| 41 | DEMO02_CATEGORY_PARENT_NOT_EXITS | infra.demo02Category.back.parentNotExists | 示例分类-父级不存在 | demo category parent not exists | 父级示例分类不存在 |
| 42 | DEMO02_CATEGORY_PARENT_ERROR | infra.demo02Category.back.parentSelfError | 示例分类-不能设置自己为父级 | cannot set itself as parent demo category | 不能设置自己为父示例分类 |
| 43 | DEMO02_CATEGORY_NAME_DUPLICATE | infra.demo02Category.back.nameDuplicate | 示例分类-名称重复 | demo category name duplicate | 已经存在该名字的示例分类 |
| 44 | DEMO02_CATEGORY_PARENT_IS_CHILD | infra.demo02Category.back.parentChildError | 示例分类-父级是子级 | cannot set child as parent | 不能设置自己的子示例分类为父示例分类 |
| 45 | DEMO03_STUDENT_NOT_EXISTS | infra.demo03Student.back.notExists | 学生-不存在 | student not exists | 学生不存在 |
| 46 | DEMO03_COURSE_NOT_EXISTS | infra.demo03Course.back.notExists | 学生课程-不存在 | student course not exists | 学生课程不存在 |
| 47 | DEMO03_GRADE_NOT_EXISTS | infra.demo03Grade.back.notExists | 学生班级-不存在 | student grade not exists | 学生班级不存在 |
| 48 | DEMO03_GRADE_EXISTS | infra.demo03Grade.back.exists | 学生班级-已存在 | student grade already exists | 学生班级已存在 |
| 49 | ERROR_CODE_IMPORT_DATA_EMPTY | infra.errorCode.back.importEmpty | 错误码导入-数据为空 | import data is empty | 导入数据为空 |
| 50 | I18N_LOCALE_NOT_EXISTS | infra.i18nLocale.back.notExists | 国际化国家-不存在 | i18n locale not exists | 国际化国家不存在 |
| 51 | I18N_LOCALE_EXISTS | infra.i18nLocale.back.exists | 国际化国家-已存在 | i18n locale already exists {} | 国际化国家已存在{} |
| 52 | I18N_LOCALE_PROHIBIT_DELETE | infra.i18nLocale.back.defaultProhibitDelete | 国际化国家-默认国家禁止删除 | default i18n locale cannot be deleted | 国际化默认国家不允许删除 |
| 53 | I18N_KEY_NOT_EXISTS | infra.i18nKey.back.notExists | 国际化键名-不存在 | i18n key not exists | 国际化键名不存在 |
| 54 | I18N_KEY_EXISTS | infra.i18nKey.back.exists | 国际化键名-已存在 | i18n key already exists | 国际化键名已存在 |
| 55 | I18N_KEY_PROHIBIT_UPDATE_KEY | infra.i18nKey.back.prohibitUpdate | 国际化键名-禁止修改键名 | i18n key cannot be modified | 国际化键名不允许修改键名 |
| 56 | I18N_KEY_PROHIBIT_DELETE_SYSTEM | infra.i18nKey.back.systemProhibitDelete | 国际化键名-系统内置禁止删除 | system i18n key cannot be deleted | 国际化键名不允许删除内置键 |
| 57 | I18N_MESSAGE_EXISTS | infra.i18nMessage.back.exists | 国际化信息-已存在 | i18n message already exists | 国际化信息已存在 |
| 58 | I18N_MESSAGE_NOT_EXISTS | infra.i18nMessage.back.notExists | 国际化信息-不存在 | i18n message not exists | 国际化信息不存在 |

---
