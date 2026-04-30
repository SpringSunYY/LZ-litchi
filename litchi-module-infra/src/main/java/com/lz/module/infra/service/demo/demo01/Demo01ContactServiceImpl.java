package com.lz.module.infra.service.demo.demo01;

import cn.hutool.core.collection.CollUtil;
import cn.hutool.core.util.StrUtil;
import com.lz.framework.common.pojo.PageResult;
import com.lz.framework.common.util.object.BeanUtils;
import com.lz.module.infra.controller.admin.demo.demo01.vo.Demo01ContactImportRespVO;
import com.lz.module.infra.controller.admin.demo.demo01.vo.Demo01ContactImportVO;
import com.lz.module.infra.controller.admin.demo.demo01.vo.Demo01ContactPageReqVO;
import com.lz.module.infra.controller.admin.demo.demo01.vo.Demo01ContactSaveReqVO;
import com.lz.module.infra.dal.dataobject.demo.demo01.Demo01ContactDO;
import com.lz.module.infra.dal.mysql.demo.demo01.Demo01ContactMapper;
import jakarta.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.annotation.Validated;

import java.util.ArrayList;
import java.util.List;

import static com.lz.framework.common.exception.util.ServiceExceptionUtil.exception;
import static com.lz.module.infra.enums.ErrorCodeConstants.DEMO01_CONTACT_NOT_EXISTS;

/**
 * 示例联系人 Service 实现类
 *
 * @author 荔枝源码
 */
@Service
@Validated
public class Demo01ContactServiceImpl implements Demo01ContactService {

    @Resource
    private Demo01ContactMapper demo01ContactMapper;

    @Override
    public Long createDemo01Contact(Demo01ContactSaveReqVO createReqVO) {
        // 插入
        Demo01ContactDO demo01Contact = BeanUtils.toBean(createReqVO, Demo01ContactDO.class);
        demo01ContactMapper.insert(demo01Contact);
        // 返回
        return demo01Contact.getId();
    }

    @Override
    public void updateDemo01Contact(Demo01ContactSaveReqVO updateReqVO) {
        // 校验存在
        validateDemo01ContactExists(updateReqVO.getId());
        // 更新
        Demo01ContactDO updateObj = BeanUtils.toBean(updateReqVO, Demo01ContactDO.class);
        demo01ContactMapper.updateById(updateObj);
    }

    @Override
    public void deleteDemo01Contact(Long id) {
        // 校验存在
        validateDemo01ContactExists(id);
        // 删除
        demo01ContactMapper.deleteById(id);
    }

    @Override
    public void deleteDemo0iContactList(List<Long> ids) {
        // 校验存在
        validateDemo01ContactExists(ids);
        // 删除
        demo01ContactMapper.deleteByIds(ids);
    }

    private void validateDemo01ContactExists(List<Long> ids) {
        List<Demo01ContactDO> list = demo01ContactMapper.selectByIds(ids);
        if (CollUtil.isEmpty(list) || list.size() != ids.size()) {
            throw exception(DEMO01_CONTACT_NOT_EXISTS);
        }
    }

    private void validateDemo01ContactExists(Long id) {
        if (demo01ContactMapper.selectById(id) == null) {
            throw exception(DEMO01_CONTACT_NOT_EXISTS);
        }
    }

    @Override
    public Demo01ContactDO getDemo01Contact(Long id) {
        return demo01ContactMapper.selectById(id);
    }

    @Override
    public PageResult<Demo01ContactDO> getDemo01ContactPage(Demo01ContactPageReqVO pageReqVO) {
        return demo01ContactMapper.selectPage(pageReqVO);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public Demo01ContactImportRespVO importDemo01ContactList(List<Demo01ContactImportVO> list) {
        if (CollUtil.isEmpty(list)) {
            throw exception(DEMO01_CONTACT_NOT_EXISTS);
        }
        List<Demo01ContactDO> createList = new ArrayList<>(list.size());
        for (int i = 0; i < list.size(); i++) {
            Demo01ContactImportVO importVO = list.get(i);
            Demo01ContactDO demo01Contact = BeanUtils.toBean(importVO, Demo01ContactDO.class);
            createList.add(demo01Contact);
        }
        demo01ContactMapper.insertBatch(createList);
        return Demo01ContactImportRespVO.builder()
                .message(StrUtil.format("成功导入 {} 个示例联系人", createList.size())).build();
    }

}
