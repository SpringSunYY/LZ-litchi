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

    @ExcelProperty(value = "名字")
    @ExcelI18n(i18nKey = "infra:demo01-contact:field:name")
    private String name;

    @ExcelProperty(value = "性别", converter = DictConvert.class)
    @ExcelColumnSelect(dictType = "infra_i18n_test", i18n = true)
    @ExcelI18n(i18nKey = "infra:demo01-contact:field:sex")
    private Boolean sex;

    @ExcelProperty(value = "出生年")
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @ExcelI18n(i18nKey = "infra:demo01-contact:field:birthday")
    private LocalDateTime birthday;

    @ExcelProperty("简介")
    @ExcelI18n(i18nKey = "infra:demo01-contact:field:description")
    private String description;

    @ExcelProperty("年龄")
    @ExcelI18n(i18nKey = "infra:demo01-contact:field:age")
    private Integer age;

    @ExcelProperty("头像")
    @ExcelI18n(i18nKey = "infra:demo01-contact:field:avatar")
    private String avatar;

}
