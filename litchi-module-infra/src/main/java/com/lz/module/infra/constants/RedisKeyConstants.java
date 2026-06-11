package com.lz.module.infra.constants;

/**
 * 交易 Redis Key 枚举类
 *
 * @author 荔枝源码
 */
public interface RedisKeyConstants {

    /**
     * 国际化
     */
    String I18N_MESSAGE = "i18n:message";
    String I18N_LOCALE = "i18n:locale";
    String I18N_UPDATED = "i18n:updated:";

    /**
     * 地区
     */
    /**
     * 地区缓存
     * <p>
     * KEY 格式：area:list
     * VALUE 数据格式：String 地区信息
     */
    String AREA_LIST = "area:list";
    /**
     * 地区树缓存
     * <p>
     * KEY ：area_tree
     * VALUE 数据格式：String 地区树
     */
    String AREA_TREE = "area:tree";
}
