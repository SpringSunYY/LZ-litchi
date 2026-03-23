package com.lz.module.bpm.service.definition;

import cn.hutool.core.collection.CollUtil;
import cn.hutool.core.lang.Assert;
import com.lz.framework.common.pojo.PageResult;
import com.lz.framework.common.util.json.JsonUtils;
import com.lz.framework.common.util.object.BeanUtils;
import com.lz.module.bpm.controller.admin.definition.vo.form.BpmFormPageReqVO;
import com.lz.module.bpm.controller.admin.definition.vo.form.BpmFormSaveReqVO;
import com.lz.module.bpm.dal.dataobject.definition.BpmFormDO;
import com.lz.module.bpm.dal.mysql.definition.BpmFormMapper;
import com.lz.module.bpm.enums.ErrorCodeConstants;
import com.lz.module.bpm.service.definition.dto.BpmFormFieldRespDTO;
import jakarta.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.validation.annotation.Validated;

import java.util.*;

import static com.lz.framework.common.exception.util.ServiceExceptionUtil.exception;

/**
 * 动态表单 Service 实现类
 *
 * @author 风里雾里
 */
@Service
@Validated
public class BpmFormServiceImpl implements BpmFormService {

    @Resource
    private BpmFormMapper formMapper;

    @Override
    public Long createForm(BpmFormSaveReqVO createReqVO) {
        this.validateFields(createReqVO.getFields());
        // 插入
        BpmFormDO form = BeanUtils.toBean(createReqVO, BpmFormDO.class);
        formMapper.insert(form);
        // 返回
        return form.getId();
    }

    @Override
    public void updateForm(BpmFormSaveReqVO updateReqVO) {
        validateFields(updateReqVO.getFields());
        // 校验存在
        validateFormExists(updateReqVO.getId());
        // 更新
        BpmFormDO updateObj = BeanUtils.toBean(updateReqVO, BpmFormDO.class);
        formMapper.updateById(updateObj);
    }

    @Override
    public void deleteForm(Long id) {
        // 校验存在
        this.validateFormExists(id);
        // 删除
        formMapper.deleteById(id);
    }

    private void validateFormExists(Long id) {
        if (formMapper.selectById(id) == null) {
            throw exception(ErrorCodeConstants.FORM_NOT_EXISTS);
        }
    }

    @Override
    public BpmFormDO getForm(Long id) {
        return formMapper.selectById(id);
    }

    @Override
    public List<BpmFormDO> getFormList() {
        return formMapper.selectList();
    }

    @Override
    public List<BpmFormDO> getFormList(Collection<Long> ids) {
        if (CollUtil.isEmpty(ids)) {
            return Collections.emptyList();
        }
        return formMapper.selectByIds(ids);
    }

    @Override
    public PageResult<BpmFormDO> getFormPage(BpmFormPageReqVO pageReqVO) {
        return formMapper.selectPage(pageReqVO);
    }

    /**
     * 校验 Field，避免 field 重复
     *
     * @param fields field 数组
     */
    private void validateFields(List<String> fields) {
        if (true) { // TODO YY：兼容 Vue3 工作流：因为采用了新的表单设计器，所以暂时不校验
            return;
        }
        Map<String, String> fieldMap = new HashMap<>(); // key 是 vModel，value 是 label
        for (String field : fields) {
            BpmFormFieldRespDTO fieldDTO = JsonUtils.parseObject(field, BpmFormFieldRespDTO.class);
            Assert.notNull(fieldDTO);
            String oldLabel = fieldMap.put(fieldDTO.getVModel(), fieldDTO.getLabel());
            // 如果不存在，则直接返回
            if (oldLabel == null) {
                continue;
            }
            // 如果存在，则报错
            throw exception(ErrorCodeConstants.FORM_FIELD_REPEAT, oldLabel, fieldDTO.getLabel(), fieldDTO.getVModel());
        }
    }

}
