package com.lz.module.infra.controller.admin.i18n;

import com.lz.framework.common.pojo.CommonResult;
import com.lz.framework.tenant.core.aop.TenantIgnore;
import com.lz.module.infra.controller.admin.i18n.vo.I18nLocaleSimpRespVO;
import com.lz.module.infra.controller.admin.i18n.vo.I18nMessageSimpVO;
import com.lz.module.infra.service.i18n.I18nService;
import io.swagger.v3.oas.annotations.Parameter;
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
@RestController
@RequestMapping("/infra/i18n")
@Validated
public class I18nController {
    @Resource
    private I18nService i18nService;

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
    @PermitAll
    @TenantIgnore
    public CommonResult<List<I18nMessageSimpVO>> getI18nLocaleMessage(
            @RequestParam("localeTarget") Integer localeTarget,
            @RequestHeader(value = "Accept-Language", required = false) String acceptLanguage) {
        return success(i18nService.getI18nLocaleMessage(localeTarget, acceptLanguage));
    }
}
