package com.lz.module.infra.controller.admin.demo.demo01.vo;

import com.lz.framework.common.annotation.Sortable;
import com.lz.framework.common.pojo.PageParam;
import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.validation.constraints.Size;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDateTime;

import static com.lz.framework.common.util.date.DateUtils.FORMAT_YEAR_MONTH_DAY_HOUR_MINUTE_SECOND;

@Schema(description = "管理后台 - 示例联系人分页 Request VO")
@Data
public class Demo01ContactPageReqVO extends PageParam {

    @Schema(description = "名字", example = "王五")
    private String name;

    @Schema(description = "性别")
    private Boolean sex;

    @Sortable(value = "birthday")
    @Schema(description = "出生年")
    private LocalDateTime birthday;

    @Schema(description = "简介", example = "随便")
    private String description;

    @Sortable(value = "age")
    @Size(max = 2, message = "年龄长度不能超过2")
    @Schema(description = "年龄")
    private Integer[] age;

    @Schema(description = "头像")
    private String avatar;

    @Sortable(value = "create_time")
    @Size(max = 2, message = "创建时间长度不能超过2")
    @Schema(description = "创建时间")
    @DateTimeFormat(pattern = FORMAT_YEAR_MONTH_DAY_HOUR_MINUTE_SECOND)
    private LocalDateTime[] createTime;

}