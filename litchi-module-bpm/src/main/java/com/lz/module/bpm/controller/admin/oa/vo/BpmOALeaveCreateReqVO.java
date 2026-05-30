package com.lz.module.bpm.controller.admin.oa.vo;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.lz.framework.common.validation.i18n.I18nAssertTrue;
import com.lz.framework.common.validation.i18n.I18nNotNull;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Map;

import static com.lz.framework.common.util.date.DateUtils.FORMAT_YEAR_MONTH_DAY_HOUR_MINUTE_SECOND;

@Schema(description = "管理后台 - 请假申请创建 Request VO")
@Data
public class BpmOALeaveCreateReqVO {

    @Schema(description = "请假的开始时间", requiredMode = Schema.RequiredMode.REQUIRED)
    @I18nNotNull(i18nKey = "bpm.oaLeave.back.startTime.notNull", message = "开始时间不能为空")
    @DateTimeFormat(pattern = FORMAT_YEAR_MONTH_DAY_HOUR_MINUTE_SECOND)
    private LocalDateTime startTime;

    @Schema(description = "请假的结束时间", requiredMode = Schema.RequiredMode.REQUIRED)
    @I18nNotNull(i18nKey = "bpm.oaLeave.back.endTime.notNull", message = "结束时间不能为空")
    @DateTimeFormat(pattern = FORMAT_YEAR_MONTH_DAY_HOUR_MINUTE_SECOND)
    private LocalDateTime endTime;

    @Schema(description = "请假类型-参见 bpm_oa_type 枚举", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    private Integer type;

    @Schema(description = "原因", requiredMode = Schema.RequiredMode.REQUIRED, example = "阅读荔枝源码")
    private String reason;

    @Schema(description = "发起人自选审批人 Map", example = "{taskKey1: [1, 2]}")
    private Map<String, List<Long>> startUserSelectAssignees;

    @JsonIgnore
    @I18nAssertTrue(i18nKey = "bpm.oaLeave.back.endTimeValid.assertTrue", message = "结束时间，需要在开始时间之后")
    public boolean isEndTimeValid() {
        return !getEndTime().isBefore(getStartTime());
    }

}
