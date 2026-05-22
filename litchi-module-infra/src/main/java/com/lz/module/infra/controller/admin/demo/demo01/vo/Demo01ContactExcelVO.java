package com.lz.module.infra.controller.admin.demo.demo01.vo;

import com.alibaba.excel.annotation.ExcelProperty;
import com.lz.framework.excel.core.annotations.ExcelColumnSelect;
import com.lz.framework.excel.core.annotations.ExcelI18n;
import com.lz.framework.excel.core.convert.DictConvert;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;
import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDateTime;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Accessors(chain = false)
public class Demo01ContactExcelVO {

    /**
     * 名字
     */
    @ExcelProperty("名字")
    @ExcelI18n(i18nKey = "infra.demo01Contact.field.name")
    private String name;

    /**
     * 性别
     */
    @ExcelProperty(value = "性别", converter = DictConvert.class)
    @ExcelColumnSelect(dictType = "system_user_sex", i18n = true)
    @ExcelI18n(i18nKey = "infra.demo01Contact.field.sex")
    private Integer sex;

    /**
     * 出生年
     */
    @ExcelProperty(value = "出生年")
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @ExcelI18n(i18nKey = "infra.demo01Contact.field.birthday")
    private LocalDateTime birthday;

    /**
     * 年龄
     */
    @ExcelProperty("年龄")
    @ExcelI18n(i18nKey = "infra.demo01Contact.field.age")
    private Integer age;

    /**
     * 简介
     */
    @ExcelProperty("简介")
    @ExcelI18n(i18nKey = "infra.demo01Contact.field.description")
    private String description;

    /**
     * 头像
     */
    @ExcelProperty("头像")
    @ExcelI18n(i18nKey = "infra.demo01Contact.field.avatar")
    private String avatar;

}
