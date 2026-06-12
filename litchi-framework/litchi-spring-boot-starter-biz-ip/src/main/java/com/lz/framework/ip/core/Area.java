package com.lz.framework.ip.core;

import com.lz.framework.ip.core.enums.AreaTypeEnum;
import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import java.util.List;

/**
 * 区域节点，包括国家、省份、城市、地区等信息
 *
 * 数据来源：数据库中的 infra_area 表
 *
 * @author 荔枝源码
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString(exclude = {"parent"}) // 参见 https://gitee.com/litchicode/litchi-cloud-mini/pulls/2 原因
public class Area {

    /**
     * 编码 - 全球，即根目录
     */
    public static final String CODE_GLOBAL = "0";
    /**
     * 编码 - 中国
     */
    public static final String CODE_CHINA = "1";

    /**
     * 行政编码（唯一标识）
     */
    private String code;

    /**
     * 名字
     */
    private String name;

    /**
     * 类型
     *
     * 枚举 {@link AreaTypeEnum}
     */
    private Integer type;

    /**
     * 父节点
     */
    @JsonManagedReference
    private Area parent;

    /**
     * 子节点
     */
    @JsonBackReference
    private List<Area> children;

}
