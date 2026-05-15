package com.lz.module.infra.framework.i18n.config;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.validation.annotation.Validated;

import jakarta.validation.constraints.NotBlank;

/**
 * 国际化配置属性
 *
 * @author YY
 */
@ConfigurationProperties(prefix = "litchi.i18n")
@Validated
@Data
public class I18nProperties {

    /**
     * 默认语言
     */
    @NotBlank(message = "默认语言不能为空")
    private String defaultLocale = "zh-CN";

}
