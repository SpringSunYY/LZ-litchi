package com.lz.framework.excel.core.annotations;

/**
 * Excel 字段方向
 *
 * @author lz
 */
public enum ExcelDirection {

    /**
     * 导出 + 导入
     */
    ALL(0),

    /**
     * 仅导出
     */
    EXPORT(1),

    /**
     * 仅导入
     */
    IMPORT(2);

    private final int value;

    ExcelDirection(int value) {
        this.value = value;
    }

    public int getValue() {
        return value;
    }

    /**
     * 根据 value 获取枚举
     *
     * @param value 值
     * @return 枚举
     */
    public static ExcelDirection getByValue(Integer value) {
        if (value == null) {
            return ALL;
        }
        for (ExcelDirection type : values()) {
            if (type.value == value) {
                return type;
            }
        }
        return ALL;
    }
}
