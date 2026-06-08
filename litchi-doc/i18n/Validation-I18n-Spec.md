# Validation & 字段 国际化规范

## 1. 目的

本文档定义：
1. **Validation 校验注解**（如 `@I18nNotNull`、`@I18nAssertTrue`）的国际化和 SQL 生成规范
2. **字段国际化**（所有 `@Schema(description = "xxx")` 注解字段）的 i18n Key 和 SQL 生成规范

统一规范确保：
- 每一个需要国际化的字段都能在 `infra_i18n_key` / `infra_i18n_message` 表中找到对应的翻译
- 国际化 Key 在不同模块、不同注解之间命名风格一致
- SQL 脚本可一键生成，可重复执行（先 DELETE 再 INSERT）

---

## 2. 工作流程（必须同步执行）

**重要：代码修改和 SQL 生成必须同时进行，缺一不可！**

```
扫描 VO 文件 → 修改代码注解 → 生成 SQL → 验证一致性
```

### 2.1 步骤说明

1. **扫描 VO 文件**：扫描 `指定目录下面所有的vo` 目录下所有 VO 文件
2. **识别国际化字段**：有 `@Schema(description = "xxx")` 注解的字段都需要国际化
3. **修改代码注解**：
   - 校验注解：使用 `@I18n*` 系列注解，指定 `i18nKey`
   - Excel 导出：在 `@ExcelProperty` 基础上添加 `@ExcelI18n(i18nKey = "...")`
4. **生成 SQL**：按照规范生成 `validation.sql` 和 `field.sql`
5. 比如我给你的目录为 `litchi-module-infra\src\main\java\com\lz\module\infra\controller\admin\codegen`，那么你生成的 SQL 文件要先创建一个 `codegen` 文件夹放进去
6. **验证一致性**：确保代码中的 `i18nKey` 与 SQL 中的 `message_key` 完全一致

---

## 3. 支持国际化的校验注解

### 3.1 注解源码位置

```
litchi-framework/litchi-common/src/main/java/com/lz/framework/common/validation/
```
你要查看它下面所有的注解，以及了解它怎么用，不要什么之前 NotNull 的你用成 I18nNotEmpty，如果之前是 NotNull 你就用 I18nNotNull，以及其他没有 i18n 注解的但是他们现在也实现了 i18n，你再看看怎么用

### 3.2 i18n 包下的标准校验注解（22个）

| # | 注解类 | errorType | 说明 |
|---|---|---|---|
| 1 | `@I18nNotNull` | `notNull` | 不能为空（对象/值） |
| 2 | `@I18nNotBlank` | `notBlank` | 不能为空（字符串，去除首尾空格后） |
| 3 | `@I18nNotEmpty` | `notEmpty` | 不能为空（集合/字符串/Map） |
| 4 | `@I18nNotContains` | `notContains` | 不能包含指定内容 |
| 5 | `@I18nAssertTrue` | `assertTrue` | 必须为 true |
| 6 | `@I18nAssertFalse` | `assertFalse` | 必须为 false |
| 7 | `@I18nPast` | `past` | 必须是过去的时间 |
| 8 | `@I18nFuture` | `future` | 必须是将来的时间 |
| 9 | `@I18nPositive` | `positive` | 必须为正数 |
| 10 | `@I18nNegative` | `negative` | 必须为负数 |
| 11 | `@I18nEmail` | `email` | 邮箱格式错误 |
| 12 | `@I18nUUID` | `uuid` | UUID 格式错误 |
| 13 | `@I18nURL` | `url` | URL 格式错误 |
| 14 | `@I18nMin` | `min` | 小于最小值 |
| 15 | `@I18nMax` | `max` | 大于最大值 |
| 16 | `@I18nDecimalMin` | `decimalMin` | 小于最小值（支持小数） |
| 17 | `@I18nDecimalMax` | `decimalMax` | 大于最大值（支持小数） |
| 18 | `@I18nSize` | `size` | 长度/大小超限 |
| 19 | `@I18nLength` | `length` | 字符串长度超限 |
| 20 | `@I18nPattern` | `pattern` | 格式不匹配 |
| 21 | `@I18nDigits` | `digits` | 数字精度超限 |
| 22 | `@I18nRange` | `range` | 值不在范围内 |

### 3.3 上级包中的自定义校验注解（有默认 i18nKey）

这些注解有默认的 `i18nKey` 常量（来自 `GlobalErrorCodeConstants`）：

| # | 注解类 | 默认 i18nKey | errorType | 说明 |
|---|---|---|---|---|
| 1 | `@Mobile` | `validation.mobile` | `mobile` | 手机号格式错误 |
| 2 | `@Telephone` | `validation.telephone` | `telephone` | 电话格式错误 |
| 3 | `@InEnum` | `validation.in.enum` | `inEnum` | 枚举值不在范围内 |
| 4 | `@SortValidation` | `validation.sort` | `sort` | 排序方向只能是 asc 或 desc |
| 5 | `@SortByValid` | `validation.sort.by` | `sortBy` | 排序字段不合法 |

> **注意**：这些注解的 `i18nKey` 有默认值，可以直接使用，也可以覆盖。

### 3.4 i18nKey 常量定义（GlobalErrorCodeConstants）

```java
// litchi-framework/litchi-common/src/main/java/com/lz/framework/common/enums/GlobalErrorCodeConstants.java

public interface GlobalErrorCodeConstants {

    // ========== 请求参数校验 ==========
    String REQUEST_PARAMETER_INVALID = "validation.request.parameter.invalid";
    String REQUEST_PARAMETER_TYPE_ERROR = "validation.request.parameter.type.error";
    String REQUEST_PARAMETER_MISSING = "validation.request.parameter.missing";

    // ========== 字段校验注解 ==========
    String VALIDATION_MOBILE = "validation.mobile";
    String VALIDATION_TELEPHONE = "validation.telephone";
    String VALIDATION_IN_ENUM = "validation.in.enum";
    String VALIDATION_SORT = "validation.sort";
    String VALIDATION_SORT_BY = "validation.sort.by";
}
```

---

## 4. i18n Key 命名规范

### 4.1 校验消息 Key 格式

```
{module}.{entity}.back.{fieldName}.{errorType}
```

| 组成部分 | 含义 | 说明 |
|---|---|---|
| `module` | 模块名（小写） | 来自模块目录名，如 `infra`、`system` |
| `entity` | 实体名（驼峰转点） | 从 VO 类名中推导，去掉 VO 后缀 |
| `back` | 固定层级，固定值 | 表示后端校验消息 |
| `fieldName` | 字段名（camelCase） | 校验注解所在字段名 |
| `errorType` | 错误类型 | 从校验注解类型映射，参见 3.2 节 |

### 4.2 字段 Key 格式

```
{module}.{entity}.field.{fieldName}
```

| 组成部分 | 含义 | 说明 |
|---|---|---|
| `module` | 模块名（小写） | 来自模块目录名，如 `infra`、`system` |
| `entity` | 实体名（驼峰转点） | 从 VO 类名中推导，去掉 VO 后缀 |
| `field` | 固定层级，固定值 | 表示字段 |
| `fieldName` | 字段名（camelCase） | VO 中的字段名 |

### 4.3 entity 推导规则

**核心原则：entity 从 VO 对应的 DO 表名推导，保持与数据库表名一致。**

1. 找到 VO 对应的 DO 类（在同一模块的 `dataobject` 包下）
2. 读取 DO 的 `@TableName` 注解值（如 `infra_codegen_column`）
3. 去掉模块前缀（`infra_`）得到业务表名（`codegen_column`）
4. 下划线转驼峰得到 entity（`codegenColumn`）

**回退规则**：无 DO 直接对应时，根据该 VO 所操作的**业务表对应的 DO** 来推导 entity。例如 `CodegenCreateListReqVO` 操作的是 `CodegenTableDO`（`infra_codegen_table`），所以 entity = `codegenTable`。

**嵌套 VO 字段规则**：当 VO 中的字段类型是另一个 VO 时（如 `CodegenUpdateReqVO.table`），entity 应该根据该字段的类型（而不是当前 VO 类名）查找对应的 DO 表名推导。

### 4.4 message_name 和 message 字段格式规则

**name 中文前缀来源**：来自 DO 类名的**完整中文业务名**。例如 `CodegenTableDO` 的 JavaDoc 是"代码生成 table 表定义"，完整业务名 = `代码生成表`（不是只取"表"）。

**message_name 格式规则**：`{业务名}-{JavaDoc字段描述}-{错误类型}`，全部中文，无空格分隔。

**message 字段格式规则（重点）**：`{业务名}{字段描述}{错误类型}`，**无分隔符**，中文直接拼接。

**示例**（`job.retryCount.notNull`）：
- message_name: `定时任务-重试次数不能为空`
- message (zh-CN): `定时任务重试次数不能为空`（无分隔符）
- message (en-US): `job retry count cannot be empty`（全小写，空格分隔）

**注意事项**：
- message 字段**没有**分隔符 `-`，直接拼接
- en-US 全部**小写**，用空格分隔各单词
- name 前缀（如"定时任务"）在 message 中保留，去掉 `-`

### 4.5 name 中文前缀参考表

| entity | name中文前缀（业务名） |
|---|---|
| `codegenTable` | 代码生成 |
| `codegenColumn` | 代码生成字段 |
| `codegenPreview` | 代码生成预览 |
| `databaseTable` | 数据库表 |
| `demo01Contact` | 示例联系人 |
| `systemConfig` | 系统配置 |

---

## 5. 代码注解示例

### 5.1 校验注解使用

以前他是什么注解就只要加对应实现国际化的注解，不要给他额外加注解，**且不再保留原注解**。

```java
// i18n 包下的注解 - 必须指定 i18nKey，且不再保留原 @NotNull/@NotBlank 等注解
@I18nNotNull(i18nKey = "infra.demo01Contact.back.sex.notNull", message = "性别不能为空")
private Integer sex;

@I18nNotBlank(i18nKey = "infra.demo01Contact.back.name.notBlank", message = "名字不能为空")
private String name;

// 自定义校验注解 - 可以直接使用（使用默认 i18nKey）
@Mobile
private String phone;

// 也可以覆盖默认 i18nKey
@Telephone(i18nKey = "infra.xxx.back.telephone.telephone")
private String tel;

@InEnum(value = StatusEnum.class)
private Integer status;

@SortValidation
private String[] sort;
```

### 5.2 字段国际化注解使用

```java
// Excel 导出字段国际化
@ExcelProperty(value = "名字")
@ExcelI18n(i18nKey = "infra.demo01Contact.field.name")
private String name;

// 字典类型字段 - 将 @DictFormat 替换为 @ExcelColumnSelect(i18n = true)，保留 @ExcelProperty 和 @ExcelI18n
@ExcelProperty("性别")
@ExcelColumnSelect(dictType = DictTypeConstants.USER_SEX, i18n = true)
@ExcelI18n(i18nKey = "infra.demo01Contact.field.sex")
private Integer sex;
```

> **注意**：
> - `@ExcelProperty(value = "中文表头")` 作为 fallback
> - `@ExcelI18n(i18nKey = "...")` 指定字段国际化 key
> - **只对已有 `@ExcelProperty` 注解的字段添加 `@ExcelI18n`**，原本没有 Excel 导出注解的字段不要额外添加（不在代码层面改变 Excel 导出能力）
> - **字段来源规则**：field.sql 以 DO + VO 字段的**并集**为准。
- DO 继承父类后，字段是 DO 本身 + 父类字段的并集。父类字段（如 BaseDO 的 createTime、creator、updater、updateTime、deleted）也属于 DO 的字段。
- VO 可能还有 DO 没有的字段（如 Flowable 自带的 `version`、`name`、`key`、`bpmnXml` 等字段）。
- 实际操作中，需要**同时扫描 VO 和 DO**，取两者字段的并集，每个字段都要生成 field.sql 条目。

**field.sql 的字段来源**：以 DO 的 JavaDoc 字段描述为准，每个字段都需要生成国际化 SQL，与 VO 上是否有 `@ExcelProperty` 无关。
> - 字典值本身的翻译（如"系统配置"、"会员"）由字典模块统一处理，field.sql 只需生成字段名的国际化 key
> - **字典类型字段**：将 `@DictFormat` 替换为 `@ExcelColumnSelect(i18n = true)`，`@ExcelProperty` 和 `@ExcelI18n` 均保留
> - **`dictType` 的值必须使用 `DictTypeConstants` 常量类中定义的常量，禁止硬编码字符串**；如果常量不存在，需要先在 `DictTypeConstants` 中新增常量后再使用

---

## 6. SQL 生成规范

### 6.1 SQL 文件路径

```
{module}-module-{moduleName}/src/main/resources/i18n/
├── validation.sql   # 校验消息国际化
└── field.sql        # 字段国际化
```

**示例**：`litchi-module-infra/src/main/resources/i18n/codegen/validation.sql`

### 6.2 validation.sql 模板（校验消息）

**三件套同步规则**：Java 代码注解修改、validation.sql、field.sql 必须同时完成。

> **变量定义强制要求**：INSERT 语句中所有可变量化的字段必须使用 `SET` 定义的变量，**禁止写死具体值**。
> 需要定义的变量共 9 个（见下方模板），INSERT 中对应的字段：
> - `use_type` → 必须用 `@USE_TYPE_EXCEPTION`（值为 5）
> - `locale_target` → 必须用 `@LOCALE_TARGET_BACKEND`（值为 1）
> - `locale` → 必须用 `@LOCALE_EN` / `@LOCALE_ZH_CN`
> - `remark` → 必须用 `@REMARK`（禁止写 `'back'` 等具体值）
> - `is_system` → 必须用 `@IS_SYSTEM`
> - `module_type` → 必须用 `@MODULE_TYPE`
> - `order_num` → 必须用 `@ORDER_NUM`
> - `creator` → 必须用 `@CREATOR`

```sql
-- =============================================
-- {模块名} 校验消息国际化 SQL
-- 生成时间：{YYYY-MM-DD}
-- 规范版本：v6.1
-- =============================================

-- ---------------------------------------------
-- 变量定义（必须全部定义，INSERT 中必须全部使用变量）
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
-- {业务域分组标题}
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

### 6.3 field.sql 模板（字段国际化）

> **变量定义强制要求**：INSERT 语句中所有可变量化的字段必须使用 `SET` 定义的变量，**禁止写死具体值**。
> 需要定义的变量共 9 个（见下方模板），INSERT 中对应的字段：
> - `use_type` → 必须用 `@USE_TYPE_FILED`（值为 2）
> - `locale_target` → 必须用 `@LOCALE_TARGET_BACKEND`（值为 1）
> - `locale` → 必须用 `@LOCALE_EN` / `@LOCALE_ZH_CN`
> - `remark` → 必须用 `@REMARK`（禁止写 `'field'` 等具体值）
> - `is_system` → 必须用 `@IS_SYSTEM`
> - `module_type` → 必须用 `@MODULE_TYPE`
> - `order_num` → 必须用 `@ORDER_NUM`
> - `creator` → 必须用 `@CREATOR`

```sql
-- =============================================
-- {模块名} 字段国际化 SQL
-- 生成时间：{YYYY-MM-DD}
-- 规范版本：v6.1
-- =============================================

-- ---------------------------------------------
-- 变量定义（必须全部定义，INSERT 中必须全部使用变量）
-- ---------------------------------------------
SET @IS_SYSTEM = 0;
SET @USE_TYPE_FILED = 3;
SET @MODULE_TYPE = '{module}';
SET @LOCALE_TARGET_BACKEND = 1;
SET @LOCALE_EN = 'en-US';
SET @LOCALE_ZH_CN = 'zh-CN';
SET @CREATOR = '0';
SET @REMARK = 'ai auto generate';
SET @ORDER_NUM = 5;

-- =============================================
-- {业务域分组标题}
-- =============================================

-- {序号}. {message_name}
DELETE FROM infra_i18n_key WHERE message_key = '{i18nKey}';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('{name}', '{i18nKey}', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- {序号}. {message_name} - en-US
DELETE FROM infra_i18n_message WHERE message_key = '{i18nKey}' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('{name}', '{i18nKey}', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '{enMessage}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- {序号}. {message_name} - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = '{i18nKey}' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('{name}', '{i18nKey}', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '{zhMessage}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
```

### 6.4 SQL 生成示例（规范版本：v6.1）

**validation.sql 示例**（`CodegenColumnSaveReqVO.columnComment`）：

```
message_name:     代码生成字段-字段描述不能为空
message (zh-CN):   代码生成字段字段描述不能为空（无分隔符）
message (en-US):   codegen column comment cannot be empty（全小写）
```

**field.sql 示例**（`CodegenColumnRespVO.columnComment`）：

```
message_name:     代码生成-字段描述
message (zh-CN):   字段描述
message (en-US):   column comment
```

---

## 7. 字典国际化规范

字典国际化的 i18n Key 由字典模块统一管理，格式为：

```
{module}.dict.{dictTypeCode}
```

字典值本身的国际化也在字典模块中处理，不在业务模块的国际化 SQL 中生成。

**但业务模块仍需处理**：字典类型字段的**字段名**（如"参数类型"、"是否可见"）的国际化。需要将 `@DictFormat` 替换为 `@ExcelColumnSelect(i18n = true)`，并保留 `@ExcelProperty` 和 `@ExcelI18n`。

---

## 8. 英文翻译规范

### 8.1 翻译原则

1. **简洁**：不超过 100 字符
2. **准确**：准确传达原意
3. **通顺**：符合英语习惯表达
4. **全部小写**（业务名前缀 + 字段描述 + 错误类型，全部 lowercase，空格分隔）
5. **末尾无标点**

### 8.2 校验消息翻译模板（message 字段专用）

| 中文（zh-CN message，无分隔符） | 英文（en-US message，全小写） |
|---|---|
| `定时任务重试次数不能为空` | `job retry count cannot be empty` |
| `定时任务处理器的名字不能为空` | `job handler name cannot be blank` |
| `定时任务任务名称不能为空` | `job task name cannot be blank` |
| `定时任务CRON表达式不能为空` | `job cron expression cannot be blank` |
| `定时任务重试间隔不能为空` | `job retry interval cannot be empty` |

### 8.3 通用翻译模板

| 中文 | 英文（message 字段，全小写） |
|---|---|
| `{X}不能为空` | `job {x} cannot be empty` |
| `{X}不能为空`（字符串） | `job {x} cannot be blank` |
| `{X}必须为 true` | `job {x} must be true` |
| `{X}必须为 false` | `job {x} must be false` |
| `{X}必须是过去的时间` | `job {x} must be in the past` |
| `{X}必须是将来的时间` | `job {x} must be in the future` |
| `{X}必须为正数` | `job {x} must be positive` |
| `{X}必须为负数` | `job {x} must be negative` |
| `{X}邮箱格式不正确` | `job {x} must be a valid email` |
| `{X}UUID格式不正确` | `job {x} must be a valid uuid` |
| `{X}URL格式不正确` | `job {x} must be a valid url` |
| `{X}不能小于 {value}` | `job {x} must be >= {value}` |
| `{X}不能大于 {value}` | `job {x} must be <= {value}` |
| `{X}手机号格式不正确` | `job {x} mobile number format is incorrect` |
| `{X}电话格式不正确` | `job {x} telephone number format is incorrect` |
| `{X}必须在指定范围` | `job {x} must be in specified range` |
| `{X}排序方向只能是 asc 或 desc` | `job {x} sort direction must be asc or desc` |
| `{X}排序字段不合法` | `job {x} sort field is invalid` |
| `{X}长度不能超过 {max} 个字符` | `job {x} length cannot exceed {max} characters` |

> **注意**：英文 message 的业务名前缀（如 `job`）来自 `message_name` 前缀的英文翻译，去掉分隔符 `-`，全部小写。

### 8.4 字段翻译模板

| 中文 | 英文（全小写） |
|---|---|
| 名字 | name |
| 性别 | sex |
| 出生日期 | birthday |
| 年龄 | age |
| 简介 | description |
| 头像 | avatar |
| 编号 | id |
| 状态 | status |
| 类型 | type |
| 备注 | remark |
| 创建时间 | create time |
| 表名称 | table name |
| 表描述 | table comment |
| 字段名 | column name |
| 字段描述 | column comment |
| 字段类型 | data type |
| 数据源配置编号 | data source config id |
| 数据源配置 | data source config |

---

## 9. 附录

### 9.1 use_type 枚举值

| 值 | 名称 | 说明 |
|---|---|---|
| **5** | **异常** | **Validation 校验消息使用此值** |
| 2 | 表单 | **字段国际化使用此值** |
| 7 | 字典 | 字典使用此值 |

