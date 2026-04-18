package com.lz.module.system.controller.admin.tenant.vo.tenant;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Schema(description = "管理后台 - 租户创建/修改 Request VO")
@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class TenantSaveRespVO {

    private Long tenantId;

    private Long userId;
}
