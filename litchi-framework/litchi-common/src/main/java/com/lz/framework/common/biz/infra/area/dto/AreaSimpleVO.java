package com.lz.framework.common.biz.infra.area.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * 地区简单 VO
 */
@Data
@SuppressWarnings("unused")
@AllArgsConstructor
@NoArgsConstructor
public class AreaSimpleVO {
    /**
     * ID
     */
    private Long id;
    /**
     * 行政编码
     */
    private String code;
    /**
     * 地区名称
     */
    private String name;
    /**
     * 父级编码
     */
    private String parentCode;
    /**
     * 层级
     */
    private Integer level;
    /**
     * 祖级列表，如: 0,1,110000,110105
     */
    private String ancestors;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getParentCode() {
        return parentCode;
    }

    public void setParentCode(String parentCode) {
        this.parentCode = parentCode;
    }

    public Integer getLevel() {
        return level;
    }

    public void setLevel(Integer level) {
        this.level = level;
    }

    public String getAncestors() {
        return ancestors;
    }

    public void setAncestors(String ancestors) {
        this.ancestors = ancestors;
    }
}
