package com.lz.module.promotion.controller.app.reward;

import com.lz.framework.common.pojo.CommonResult;
import com.lz.framework.common.util.object.BeanUtils;
import com.lz.module.promotion.controller.app.reward.vo.AppRewardActivityRespVO;
import com.lz.module.promotion.dal.dataobject.reward.RewardActivityDO;
import com.lz.module.promotion.service.reward.RewardActivityService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.annotation.Resource;
import jakarta.annotation.security.PermitAll;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import static com.lz.framework.common.pojo.CommonResult.success;

@Tag(name = "用户 App - 满减送活动")
@RestController
@RequestMapping("/promotion/reward-activity")
@Validated
public class AppRewardActivityController {

    @Resource
    private RewardActivityService rewardActivityService;

    @GetMapping("/get")
    @Operation(summary = "获得满减送活动")
    @Parameter(name = "id", description = "编号", required = true, example = "1024")
    @PermitAll
    public CommonResult<AppRewardActivityRespVO> getRewardActivity(@RequestParam("id") Long id) {
        RewardActivityDO activity = rewardActivityService.getRewardActivity(id);
        if (activity == null) {
            return success(null);
        }
        // 拼接 Rule 描述
        AppRewardActivityRespVO activityVO = BeanUtils.toBean(activity, AppRewardActivityRespVO.class);
        for (int i = 0; i < activityVO.getRules().size(); i++) {
            AppRewardActivityRespVO.Rule ruleVO = activityVO.getRules().get(i);
            RewardActivityDO.Rule rule = activity.getRules().get(i);
            ruleVO.setDescription(rewardActivityService.getRewardActivityRuleDescription(activity.getConditionType(), rule));
        }
        return success(activityVO);
    }

}
