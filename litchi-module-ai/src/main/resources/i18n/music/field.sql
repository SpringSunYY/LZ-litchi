-- =============================================
-- AI 音乐模块 字段国际化 SQL
-- 生成时间：2026-05-30
-- 规范版本：v6.1
-- =============================================
-- 说明：field.sql 以 DO + VO 字段的并集为准
--       DO 继承父类后，字段是 DO 本身 + 父类字段
--       VO 可能还有 DO 没有的字段
-- =============================================

-- ---------------------------------------------
-- 变量定义（必须全部定义，INSERT 中必须全部使用变量）
-- ---------------------------------------------
SET @IS_SYSTEM = 0;
SET @USE_TYPE_FILED = 3;
SET @MODULE_TYPE = 'ai';
SET @LOCALE_TARGET_BACKEND = 1;
SET @LOCALE_EN = 'en-US';
SET @LOCALE_ZH_CN = 'zh-CN';
SET @CREATOR = '0';
SET @REMARK = 'ai auto generate';
SET @ORDER_NUM = 5;

-- =============================================
-- AI 音乐（ai_music 表）
-- =============================================

-- 1. AI音乐-编号
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐-编号', 'ai.music.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 1. AI音乐-编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐-编号', 'ai.music.field.id', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 1. AI音乐-编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐-编号', 'ai.music.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. AI音乐-用户编号
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.field.userId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐-用户编号', 'ai.music.field.userId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. AI音乐-用户编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.field.userId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐-用户编号', 'ai.music.field.userId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'user id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. AI音乐-用户编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.field.userId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐-用户编号', 'ai.music.field.userId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '用户编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. AI音乐-音乐名称
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.field.title';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐-音乐名称', 'ai.music.field.title', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. AI音乐-音乐名称 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.field.title' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐-音乐名称', 'ai.music.field.title', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'music title', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. AI音乐-音乐名称 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.field.title' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐-音乐名称', 'ai.music.field.title', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '音乐名称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. AI音乐-歌词
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.field.lyric';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐-歌词', 'ai.music.field.lyric', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. AI音乐-歌词 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.field.lyric' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐-歌词', 'ai.music.field.lyric', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'lyric', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. AI音乐-歌词 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.field.lyric' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐-歌词', 'ai.music.field.lyric', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '歌词', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. AI音乐-图片地址
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.field.imageUrl';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐-图片地址', 'ai.music.field.imageUrl', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. AI音乐-图片地址 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.field.imageUrl' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐-图片地址', 'ai.music.field.imageUrl', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'image url', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. AI音乐-图片地址 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.field.imageUrl' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐-图片地址', 'ai.music.field.imageUrl', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '图片地址', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 6. AI音乐-音频地址
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.field.audioUrl';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐-音频地址', 'ai.music.field.audioUrl', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 6. AI音乐-音频地址 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.field.audioUrl' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐-音频地址', 'ai.music.field.audioUrl', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'audio url', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 6. AI音乐-音频地址 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.field.audioUrl' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐-音频地址', 'ai.music.field.audioUrl', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '音频地址', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 7. AI音乐-视频地址
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.field.videoUrl';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐-视频地址', 'ai.music.field.videoUrl', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 7. AI音乐-视频地址 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.field.videoUrl' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐-视频地址', 'ai.music.field.videoUrl', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'video url', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 7. AI音乐-视频地址 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.field.videoUrl' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐-视频地址', 'ai.music.field.videoUrl', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '视频地址', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 8. AI音乐-音乐状态
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.field.status';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐-音乐状态', 'ai.music.field.status', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 8. AI音乐-音乐状态 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.field.status' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐-音乐状态', 'ai.music.field.status', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'music status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 8. AI音乐-音乐状态 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.field.status' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐-音乐状态', 'ai.music.field.status', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '音乐状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 9. AI音乐-生成模式
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.field.generateMode';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐-生成模式', 'ai.music.field.generateMode', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 9. AI音乐-生成模式 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.field.generateMode' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐-生成模式', 'ai.music.field.generateMode', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'generate mode', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 9. AI音乐-生成模式 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.field.generateMode' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐-生成模式', 'ai.music.field.generateMode', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '生成模式', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 10. AI音乐-描述词
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.field.gptDescriptionPrompt';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐-描述词', 'ai.music.field.gptDescriptionPrompt', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 10. AI音乐-描述词 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.field.gptDescriptionPrompt' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐-描述词', 'ai.music.field.gptDescriptionPrompt', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'description', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 10. AI音乐-描述词 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.field.gptDescriptionPrompt' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐-描述词', 'ai.music.field.gptDescriptionPrompt', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '描述词', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 11. AI音乐-提示词
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.field.prompt';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐-提示词', 'ai.music.field.prompt', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 11. AI音乐-提示词 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.field.prompt' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐-提示词', 'ai.music.field.prompt', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'prompt', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 11. AI音乐-提示词 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.field.prompt' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐-提示词', 'ai.music.field.prompt', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '提示词', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 12. AI音乐-模型平台
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.field.platform';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐-模型平台', 'ai.music.field.platform', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 12. AI音乐-模型平台 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.field.platform' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐-模型平台', 'ai.music.field.platform', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'platform', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 12. AI音乐-模型平台 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.field.platform' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐-模型平台', 'ai.music.field.platform', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '模型平台', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 13. AI音乐-模型
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.field.model';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐-模型', 'ai.music.field.model', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 13. AI音乐-模型 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.field.model' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐-模型', 'ai.music.field.model', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'model', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 13. AI音乐-模型 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.field.model' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐-模型', 'ai.music.field.model', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '模型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 14. AI音乐-音乐风格标签
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.field.tags';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐-音乐风格标签', 'ai.music.field.tags', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 14. AI音乐-音乐风格标签 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.field.tags' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐-音乐风格标签', 'ai.music.field.tags', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'music style tags', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 14. AI音乐-音乐风格标签 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.field.tags' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐-音乐风格标签', 'ai.music.field.tags', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '音乐风格标签', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 15. AI音乐-音乐时长
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.field.duration';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐-音乐时长', 'ai.music.field.duration', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 15. AI音乐-音乐时长 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.field.duration' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐-音乐时长', 'ai.music.field.duration', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'duration', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 15. AI音乐-音乐时长 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.field.duration' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐-音乐时长', 'ai.music.field.duration', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '音乐时长', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 16. AI音乐-是否发布
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.field.publicStatus';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐-是否发布', 'ai.music.field.publicStatus', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 16. AI音乐-是否发布 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.field.publicStatus' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐-是否发布', 'ai.music.field.publicStatus', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'public status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 16. AI音乐-是否发布 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.field.publicStatus' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐-是否发布', 'ai.music.field.publicStatus', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '是否发布', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 17. AI音乐-任务编号
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.field.taskId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐-任务编号', 'ai.music.field.taskId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 17. AI音乐-任务编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.field.taskId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐-任务编号', 'ai.music.field.taskId', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'task id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 17. AI音乐-任务编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.field.taskId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐-任务编号', 'ai.music.field.taskId', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '任务编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 18. AI音乐-错误信息
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.field.errorMessage';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐-错误信息', 'ai.music.field.errorMessage', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 18. AI音乐-错误信息 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.field.errorMessage' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐-错误信息', 'ai.music.field.errorMessage', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'error message', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 18. AI音乐-错误信息 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.field.errorMessage' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐-错误信息', 'ai.music.field.errorMessage', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '错误信息', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 19. AI音乐-创建时间
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐-创建时间', 'ai.music.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 19. AI音乐-创建时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐-创建时间', 'ai.music.field.createTime', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 19. AI音乐-创建时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐-创建时间', 'ai.music.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '创建时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 20. AI音乐-是否纯音乐
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.field.makeInstrumental';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐-是否纯音乐', 'ai.music.field.makeInstrumental', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, @ORDER_NUM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 20. AI音乐-是否纯音乐 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.field.makeInstrumental' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐-是否纯音乐', 'ai.music.field.makeInstrumental', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, 'make instrumental', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 20. AI音乐-是否纯音乐 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.field.makeInstrumental' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐-是否纯音乐', 'ai.music.field.makeInstrumental', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FILED, '是否纯音乐', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
