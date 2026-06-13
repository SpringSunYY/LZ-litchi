package com.lz.module.system.controller.admin.logger.vo.operatelog;

import com.lz.framework.common.annotation.Sortable;
import com.lz.framework.common.pojo.PageParam;
import com.lz.framework.common.validation.i18n.I18nSize;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDateTime;

import static com.lz.framework.common.util.date.DateUtils.FORMAT_YEAR_MONTH_DAY_HOUR_MINUTE_SECOND;

@Schema(description = "管理后台 - 操作日志分页列表 Request VO")
@Data
public class OperateLogPageReqVO extends PageParam {

    @Schema(description = "用户编号", example = "荔枝")
    private Long userId;

    @Schema(description = "操作模块业务编号", example = "1")
    private Long bizId;

    @Schema(description = "操作模块，模拟匹配", example = "订单")
    private String type;

    @Schema(description = "操作名，模拟匹配", example = "创建订单")
    private String subType;

    @Schema(description = "操作明细，模拟匹配", example = "修改编号为 1 的用户信息")
    private String action;

    /**
     * 创建时间
     */
    @Sortable(value = "create_time")
    @I18nSize(i18nKey = "system.operateLog.back.createTime.size", min = 0, max = 2, message = "创建时间长度不能超过2")
    @Schema(description = "创建时间")
    @DateTimeFormat(pattern = FORMAT_YEAR_MONTH_DAY_HOUR_MINUTE_SECOND)
    private LocalDateTime[] createTime;

}
