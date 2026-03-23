package com.lz.module.report.service.goview;

import com.lz.framework.common.pojo.PageParam;
import com.lz.framework.common.pojo.PageResult;
import com.lz.module.report.controller.admin.goview.vo.project.GoViewProjectCreateReqVO;
import com.lz.module.report.controller.admin.goview.vo.project.GoViewProjectUpdateReqVO;
import com.lz.module.report.dal.dataobject.goview.GoViewProjectDO;

import jakarta.validation.Valid;

/**
 * GoView 项目 Service 接口
 *
 * @author 荔枝源码
 */
public interface GoViewProjectService {

    /**
     * 创建项目
     *
     * @param createReqVO 创建信息
     * @return 编号
     */
    Long createProject(@Valid GoViewProjectCreateReqVO createReqVO);

    /**
     * 更新项目
     *
     * @param updateReqVO 更新信息
     */
    void updateProject(@Valid GoViewProjectUpdateReqVO updateReqVO);

    /**
     * 删除项目
     *
     * @param id 编号
     */
    void deleteProject(Long id);

    /**
     * 获得项目
     *
     * @param id 编号
     * @return 项目
     */
    GoViewProjectDO getProject(Long id);

    /**
     * 获得我的项目分页
     *
     * @param pageReqVO 分页查询
     * @param userId 用户编号
     * @return GoView 项目分页
     */
    PageResult<GoViewProjectDO> getMyProjectPage(PageParam pageReqVO, Long userId);

}
