package com.lz.module.bpm.service.definition;

import cn.hutool.core.collection.CollUtil;
import com.lz.framework.common.enums.CommonStatusEnum;
import com.lz.framework.common.pojo.PageResult;
import com.lz.framework.common.util.object.BeanUtils;
import com.lz.module.bpm.controller.admin.definition.vo.group.BpmUserGroupPageReqVO;
import com.lz.module.bpm.controller.admin.definition.vo.group.BpmUserGroupSaveReqVO;
import com.lz.module.bpm.dal.dataobject.definition.BpmUserGroupDO;
import com.lz.module.bpm.dal.mysql.definition.BpmUserGroupMapper;
import jakarta.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.validation.annotation.Validated;

import java.util.Collection;
import java.util.List;
import java.util.Map;

import static com.lz.framework.common.exception.util.ServiceExceptionUtil.exception;
import static com.lz.framework.common.util.collection.CollectionUtils.convertMap;
import static com.lz.module.bpm.enums.ErrorCodeConstants.USER_GROUP_IS_DISABLE;
import static com.lz.module.bpm.enums.ErrorCodeConstants.USER_GROUP_NOT_EXISTS;

/**
 * 用户组 Service 实现类
 *
 * @author 荔枝源码
 */
@Service
@Validated
public class BpmUserGroupServiceImpl implements BpmUserGroupService {

    @Resource
    private BpmUserGroupMapper userGroupMapper;

    @Override
    public Long createUserGroup(BpmUserGroupSaveReqVO createReqVO) {
        BpmUserGroupDO userGroup = BeanUtils.toBean(createReqVO, BpmUserGroupDO.class);
        userGroupMapper.insert(userGroup);
        return userGroup.getId();
    }

    @Override
    public void updateUserGroup(BpmUserGroupSaveReqVO updateReqVO) {
        // 校验存在
        validateUserGroupExists(updateReqVO.getId());
        // 更新
        BpmUserGroupDO updateObj = BeanUtils.toBean(updateReqVO, BpmUserGroupDO.class);
        userGroupMapper.updateById(updateObj);
    }

    @Override
    public void deleteUserGroup(Long id) {
        // 校验存在
        this.validateUserGroupExists(id);
        // 删除
        userGroupMapper.deleteById(id);
    }

    private void validateUserGroupExists(Long id) {
        if (userGroupMapper.selectById(id) == null) {
            throw exception(USER_GROUP_NOT_EXISTS);
        }
    }

    @Override
    public BpmUserGroupDO getUserGroup(Long id) {
        return userGroupMapper.selectById(id);
    }

    @Override
    public List<BpmUserGroupDO> getUserGroupList(Collection<Long> ids) {
        return userGroupMapper.selectByIds(ids);
    }


    @Override
    public List<BpmUserGroupDO> getUserGroupListByStatus(Integer status) {
        return userGroupMapper.selectListByStatus(status);
    }

    @Override
    public PageResult<BpmUserGroupDO> getUserGroupPage(BpmUserGroupPageReqVO pageReqVO) {
        return userGroupMapper.selectPage(pageReqVO);
    }

    @Override
    public void validUserGroups(Collection<Long> ids) {
        if (CollUtil.isEmpty(ids)) {
            return;
        }
        // 获得用户组信息
        List<BpmUserGroupDO> userGroups = userGroupMapper.selectByIds(ids);
        Map<Long, BpmUserGroupDO> userGroupMap = convertMap(userGroups, BpmUserGroupDO::getId);
        // 校验
        ids.forEach(id -> {
            BpmUserGroupDO userGroup = userGroupMap.get(id);
            if (userGroup == null) {
                throw exception(USER_GROUP_NOT_EXISTS);
            }
            if (!CommonStatusEnum.ENABLE.getStatus().equals(userGroup.getStatus())) {
                throw exception(USER_GROUP_IS_DISABLE, userGroup.getName());
            }
        });
    }

}
