package com.lz.module.member.service.point;

import com.lz.framework.common.pojo.PageResult;
import com.lz.module.member.controller.admin.point.vo.recrod.MemberPointRecordPageReqVO;
import com.lz.module.member.controller.app.point.vo.AppMemberPointRecordPageReqVO;
import com.lz.module.member.dal.dataobject.point.MemberPointRecordDO;
import com.lz.module.member.enums.point.MemberPointBizTypeEnum;

/**
 * 用户积分记录 Service 接口
 *
 * @author QingX
 */
public interface MemberPointRecordService {

    /**
     * 【管理员】获得积分记录分页
     *
     * @param pageReqVO 分页查询
     * @return 签到记录分页
     */
    PageResult<MemberPointRecordDO> getPointRecordPage(MemberPointRecordPageReqVO pageReqVO);

    /**
     * 【会员】获得积分记录分页
     *
     * @param userId 用户编号
     * @param pageReqVO 分页查询
     * @return 签到记录分页
     */
    PageResult<MemberPointRecordDO> getPointRecordPage(Long userId, AppMemberPointRecordPageReqVO pageReqVO);

    /**
     * 创建用户积分记录
     *
     * @param userId  用户ID
     * @param point   变动积分
     * @param bizType 业务类型
     * @param bizId   业务编号
     */
    void createPointRecord(Long userId, Integer point, MemberPointBizTypeEnum bizType, String bizId);
}
