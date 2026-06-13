package com.lz.module.infra.api.logger;

import com.lz.framework.common.biz.infra.logger.ApiAccessLogCommonApi;
import com.lz.framework.common.biz.infra.logger.dto.ApiAccessLogCreateReqDTO;
import com.lz.framework.ip.core.utils.IPUtils;
import com.lz.module.infra.service.logger.ApiAccessLogService;
import jakarta.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.validation.annotation.Validated;

/**
 * API 访问日志的 API 实现类
 *
 * @author 荔枝源码
 */
@Service
@Validated
public class ApiAccessLogApiImpl implements ApiAccessLogCommonApi {

    @Resource
    private ApiAccessLogService apiAccessLogService;

    @Override
    public void createApiAccessLog(ApiAccessLogCreateReqDTO createDTO) {
        //因为拿不到ip地址，所以这里补全
        createDTO.setUserIpAddr(IPUtils.getIpAddr(createDTO.getUserIp()));
        apiAccessLogService.createApiAccessLog(createDTO);
    }

}
