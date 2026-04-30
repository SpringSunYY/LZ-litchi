package com.lz.module.infra.controller.admin.demo.demo01.vo;


import com.alibaba.excel.annotation.ExcelProperty;
import com.lz.framework.excel.core.annotations.DictFormat;
import com.lz.framework.excel.core.convert.DictConvert;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;
import org.springframework.format.annotation.DateTimeFormat;
import java.time.LocalDateTime;

@Schema(description = "管理后台 - 示例联系人导入 Request VO")
@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Accessors(chain = false)
public class Demo01ContactImportVO {

    @Schema(description = "名字", example = "王五")
    @ExcelProperty("名字")
    private String name;

    @Schema(description = "性别")
    @ExcelProperty(value = "性别", converter = DictConvert.class)
    @DictFormat("system_user_sex")
    private Boolean sex;

    @Schema(description = "出生年")
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @ExcelProperty("出生年")
    private LocalDateTime birthday;

    @Schema(description = "简介", example = "随便")
    @ExcelProperty("简介")
    private String description;

    @Schema(description = "年龄")
    @ExcelProperty("年龄")
    private Integer age;

    @Schema(description = "头像")
    @ExcelProperty("头像")
    private String avatar;

}