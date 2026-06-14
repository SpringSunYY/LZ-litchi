package com.lz.module.infra.controller.admin.i18n;

import com.lz.framework.common.pojo.CommonResult;
import com.lz.framework.tenant.core.aop.TenantIgnore;
import com.lz.module.infra.controller.admin.i18n.vo.i18nLocale.I18nLocaleSimpRespVO;
import com.lz.module.infra.controller.admin.i18n.vo.i18nMessage.I18nMessageSimpVO;
import com.lz.module.infra.service.i18n.I18nService;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.annotation.Resource;
import jakarta.annotation.security.PermitAll;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;

import static com.lz.framework.common.pojo.CommonResult.success;

/**
 * i18n 键名 Controller
 *
 * @Project: litchi
 * @Author: YY
 * @CreateTime: 2026-04-28  16:42
 * @Version: 1.0
 */
@Tag(name = "管理后台 - 国际化")
@RestController
@RequestMapping("/infra/i18n")
@Validated
public class I18nController {
    @Resource
    private I18nService i18nService;

    /**
     * 获取是否更新国际化
     */
    @GetMapping("/locale/update-key")
    @Parameter(name = "localeTarget", description = "端", required = true)
    @Parameter(name = "locale", description = "语言", required = true, example = "zh-CN")
    @PermitAll
    @TenantIgnore
    public CommonResult<String> getI18nUpdateKey(
            @RequestParam(value = "localeTarget") Integer localeTarget,
            @RequestParam(value = "locale") String locale
    ) {
        return success(i18nService.getI18nUpdateKey(localeTarget, locale));
    }

    /**
     * 获取国家地区
     *
     * @return 键名编号
     */
    @GetMapping("/locale/target")
    @Parameter(name = "localeTarget", description = "使用端", required = true, example = "1024")
    @PermitAll
    @TenantIgnore
    public CommonResult<List<I18nLocaleSimpRespVO>> getI18nLocale(@RequestParam("localeTarget") Integer localeTarget) {
        return success(i18nService.getI18nLocale(localeTarget));
    }


    /**
     * 获取国际化语言
     */
    @GetMapping("/locale/message")
    @Parameter(name = "localeTarget", description = "使用端", required = true, example = "1024")
    @Parameter(name = "acceptLanguage", description = "语言", required = true, example = "zh-CN")
    @PermitAll
    @TenantIgnore
    public CommonResult<List<I18nMessageSimpVO>> getI18nLocaleMessage(
            @RequestParam("localeTarget") Integer localeTarget,
            @RequestHeader(value = "Accept-Language", required = false) String acceptLanguage) {
        return success(i18nService.getI18nLocaleMessage(localeTarget, acceptLanguage));
    }
}
