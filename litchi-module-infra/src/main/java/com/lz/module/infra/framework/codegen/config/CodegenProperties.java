package com.lz.module.infra.framework.codegen.config;

import com.lz.module.infra.enums.codegen.CodegenFrontTypeEnum;
import com.lz.module.infra.enums.codegen.CodegenVOTypeEnum;
import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.validation.annotation.Validated;

import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import java.util.Collection;

@ConfigurationProperties(prefix = "litchi.codegen")
@Validated
@Data
public class CodegenProperties {

    /**
     * 生成的 Java 代码的基础包
     */
    @NotNull(message = "Java 代码的基础包不能为空")
    private String basePackage;

    /**
     * 数据库名数组
     */
    @NotEmpty(message = "数据库不能为空")
    private Collection<String> dbSchemas;

    /**
     * 代码生成的前端类型（默认）
     *
     * 枚举 {@link CodegenFrontTypeEnum#getType()}
     */
    @NotNull(message = "代码生成的前端类型不能为空")
    private Integer frontType;

    /**
     * 代码生成的 VO 类型
     *
     * 枚举 {@link CodegenVOTypeEnum#getType()}
     */
    @NotNull(message = "代码生成的 VO 类型不能为空")
    private Integer voType;

    /**
     * 是否生成批量删除接口
     */
    @NotNull(message = "是否生成批量删除接口不能为空")
    private Boolean deleteBatchEnable;

    /**
     * 是否生成单元测试
     */
    @NotNull(message = "是否生成单元测试不能为空")
    private Boolean unitTestEnable;

    /**
     * 是否启用国际化（1-否，0-是）
     */
    @NotNull(message = "是否启用国际化不能为空")
    private String isI18n = "1";

    /**
     * 是否导入（1-否，0-是）
     */
    @NotNull(message = "是否导入不能为空")
    private String isImport = "1";

    /**
     * 弹窗类型（drawer/modal）
     */
    @NotEmpty(message = "弹窗类型不能为空")
    private String popupType = "drawer";

}
