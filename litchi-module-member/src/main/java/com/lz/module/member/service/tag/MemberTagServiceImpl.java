package com.lz.module.member.service.tag;

import cn.hutool.core.collection.CollUtil;
import cn.hutool.core.collection.ListUtil;
import cn.hutool.core.util.StrUtil;
import com.lz.framework.common.pojo.PageResult;
import com.lz.module.member.controller.admin.tag.vo.MemberTagCreateReqVO;
import com.lz.module.member.controller.admin.tag.vo.MemberTagPageReqVO;
import com.lz.module.member.controller.admin.tag.vo.MemberTagUpdateReqVO;
import com.lz.module.member.convert.tag.MemberTagConvert;
import com.lz.module.member.dal.dataobject.tag.MemberTagDO;
import com.lz.module.member.dal.mysql.tag.MemberTagMapper;
import com.lz.module.member.service.user.MemberUserService;
import org.springframework.stereotype.Service;
import org.springframework.validation.annotation.Validated;

import jakarta.annotation.Resource;
import java.util.Collection;
import java.util.List;

import static com.lz.framework.common.exception.util.ServiceExceptionUtil.exception;
import static com.lz.module.member.enums.ErrorCodeConstants.*;

/**
 * 会员标签 Service 实现类
 *
 * @author 荔枝源码
 */
@Service
@Validated
public class MemberTagServiceImpl implements MemberTagService {

    @Resource
    private MemberTagMapper memberTagMapper;

    @Resource
    private MemberUserService memberUserService;

    @Override
    public Long createTag(MemberTagCreateReqVO createReqVO) {
        // 校验名称唯一
        validateTagNameUnique(null, createReqVO.getName());
        // 插入
        MemberTagDO tag = MemberTagConvert.INSTANCE.convert(createReqVO);
        memberTagMapper.insert(tag);
        // 返回
        return tag.getId();
    }

    @Override
    public void updateTag(MemberTagUpdateReqVO updateReqVO) {
        // 校验存在
        validateTagExists(updateReqVO.getId());
        // 校验名称唯一
        validateTagNameUnique(updateReqVO.getId(), updateReqVO.getName());
        // 更新
        MemberTagDO updateObj = MemberTagConvert.INSTANCE.convert(updateReqVO);
        memberTagMapper.updateById(updateObj);
    }

    @Override
    public void deleteTag(Long id) {
        // 校验存在
        validateTagExists(id);
        // 校验标签下是否有用户
        validateTagHasUser(id);
        // 删除
        memberTagMapper.deleteById(id);
    }

    private void validateTagExists(Long id) {
        if (memberTagMapper.selectById(id) == null) {
            throw exception(TAG_NOT_EXISTS);
        }
    }

    private void validateTagNameUnique(Long id, String name) {
        if (StrUtil.isBlank(name)) {
            return;
        }
        MemberTagDO tag = memberTagMapper.selelctByName(name);
        if (tag == null) {
            return;
        }

        // 如果 id 为空，说明不用比较是否为相同 id 的标签
        if (id == null) {
            throw exception(TAG_NAME_EXISTS);
        }
        if (!tag.getId().equals(id)) {
            throw exception(TAG_NAME_EXISTS);
        }
    }

    void validateTagHasUser(Long id) {
        Long count = memberUserService.getUserCountByTagId(id);
        if (count > 0) {
            throw exception(TAG_HAS_USER);
        }
    }

    @Override
    public MemberTagDO getTag(Long id) {
        return memberTagMapper.selectById(id);
    }

    @Override
    public List<MemberTagDO> getTagList(Collection<Long> ids) {
        if (CollUtil.isEmpty(ids)) {
            return ListUtil.empty();
        }
        return memberTagMapper.selectByIds(ids);
    }

    @Override
    public PageResult<MemberTagDO> getTagPage(MemberTagPageReqVO pageReqVO) {
        return memberTagMapper.selectPage(pageReqVO);
    }

    @Override
    public List<MemberTagDO> getTagList() {
        return memberTagMapper.selectList();
    }

}
