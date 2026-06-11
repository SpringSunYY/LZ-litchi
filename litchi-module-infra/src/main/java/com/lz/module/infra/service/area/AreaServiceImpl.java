package com.lz.module.infra.service.area;

import com.lz.framework.common.util.object.BeanUtils;
import com.lz.framework.redis.core.RedisUtils;
import com.lz.module.infra.constants.RedisKeyConstants;
import com.lz.module.infra.controller.admin.ip.vo.AreaListReqVO;
import com.lz.module.infra.controller.admin.ip.vo.AreaNodeRespVO;
import com.lz.module.infra.controller.admin.ip.vo.AreaSaveReqVO;
import com.lz.module.infra.dal.dataobject.area.AreaDO;
import com.lz.module.infra.dal.mysql.area.AreaMapper;
import jakarta.annotation.Resource;
import jakarta.validation.Valid;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;
import org.springframework.validation.annotation.Validated;

import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.stream.Collectors;

import static com.lz.framework.common.exception.util.ServiceExceptionUtil.exception;
import static com.lz.module.infra.enums.ErrorCodeConstants.*;

/**
 * 地区信息 Service 实现类
 *
 * @author 荔枝
 */
@Service
@Validated
public class AreaServiceImpl implements AreaService {

    @Resource
    private AreaMapper areaMapper;

    @Resource
    private RedisUtils redisUtils;

    @CacheEvict(cacheNames = {RedisKeyConstants.AREA_LIST, RedisKeyConstants.AREA_TREE},
            allEntries = true) // allEntries 清空所有缓存，因为可能修改到 name 字段，不好清理
    @Override
    public Long createArea(AreaSaveReqVO createReqVO) {
        // 校验父级ID的有效性
        validateParentArea(null, createReqVO.getParentId());
        // 校验地区名称的唯一性
        validateAreaNameUnique(null, createReqVO.getParentId(), createReqVO.getName());

        // 插入
        AreaDO area = BeanUtils.toBean(createReqVO, AreaDO.class);
        areaMapper.insert(area);
        // 构建祖级列表（需要自己的ID）
        area.setAncestors(buildAncestors(createReqVO.getParentId(), area.getId()));
        areaMapper.updateById(area);

        // 返回
        return area.getId();
    }

    @CacheEvict(cacheNames = {RedisKeyConstants.AREA_LIST, RedisKeyConstants.AREA_TREE},
            allEntries = true) // allEntries 清空所有缓存，因为可能修改到 name 字段，不好清理
    @Override
    public void deleteArea(Long id) {
        // 校验存在
        validateAreaExists(id);
        // 校验是否有子地区信息
        if (areaMapper.selectCountByParentId(id) > 0) {
            throw exception(AREA_EXITS_CHILDREN);
        }
        // 删除
        areaMapper.deleteById(id);
    }

    @Override
    @CacheEvict(cacheNames = {RedisKeyConstants.AREA_LIST, RedisKeyConstants.AREA_TREE},
            allEntries = true) // allEntries 清空所有缓存，因为可能修改到 name 字段，不好清理
    public void updateArea(AreaSaveReqVO updateReqVO) {
        // 校验存在
        validateAreaExists(updateReqVO.getId());
        // 校验父级ID的有效性
        validateParentArea(updateReqVO.getId(), updateReqVO.getParentId());
        // 校验地区名称的唯一性
        validateAreaNameUnique(updateReqVO.getId(), updateReqVO.getParentId(), updateReqVO.getName());

        // 更新
        AreaDO updateObj = BeanUtils.toBean(updateReqVO, AreaDO.class);
        // 构建祖级列表（需要自己的ID）
        updateObj.setAncestors(buildAncestors(updateReqVO.getParentId(), updateReqVO.getId()));
        areaMapper.updateById(updateObj);
    }


    private void validateAreaExists(Long id) {
        if (areaMapper.selectById(id) == null) {
            throw exception(AREA_NOT_EXISTS);
        }
    }

    private void validateParentArea(Long id, Long parentId) {
        if (parentId == null || AreaDO.PARENT_ID_ROOT.equals(parentId)) {
            return;
        }
        // 1. 不能设置自己为父地区信息
        if (Objects.equals(id, parentId)) {
            throw exception(AREA_PARENT_ERROR);
        }
        // 2. 父地区信息不存在
        AreaDO parentArea = areaMapper.selectById(parentId);
        if (parentArea == null) {
            throw exception(AREA_PARENT_NOT_EXITS);
        }
        // 3. 递归校验父地区信息，如果父地区信息是自己的子地区信息，则报错，避免形成环路
        if (id == null) { // id 为空，说明新增，不需要考虑环路
            return;
        }
        for (int i = 0; i < Short.MAX_VALUE; i++) {
            // 3.1 校验环路
            parentId = parentArea.getParentId();
            if (Objects.equals(id, parentId)) {
                throw exception(AREA_PARENT_IS_CHILD);
            }
            // 3.2 继续递归下一级父地区信息
            if (parentId == null || AreaDO.PARENT_ID_ROOT.equals(parentId)) {
                break;
            }
            parentArea = areaMapper.selectById(parentId);
            if (parentArea == null) {
                break;
            }
        }
    }

    private void validateAreaNameUnique(Long id, Long parentId, String name) {
        AreaDO area = areaMapper.selectByParentIdAndName(parentId, name);
        if (area == null) {
            return;
        }
        // 如果 id 为空，说明不用比较是否为相同 id 的地区信息
        if (id == null) {
            throw exception(AREA_NAME_DUPLICATE);
        }
        if (!Objects.equals(area.getId(), id)) {
            throw exception(AREA_NAME_DUPLICATE);
        }
    }

    @Override
    public AreaDO getArea(Long id) {
        return areaMapper.selectById(id);
    }

    @Cacheable(cacheNames = {RedisKeyConstants.AREA_LIST})
    @Override
    public List<AreaDO> getAreaList(AreaListReqVO listReqVO) {
        return areaMapper.selectList(listReqVO);
    }

    @Cacheable(cacheNames = RedisKeyConstants.AREA_TREE)
    @Override
    public List<AreaNodeRespVO> getAreaTree(@Valid AreaListReqVO req) {
        // 1. 查询所有地区数据
        List<AreaDO> allAreas = areaMapper.selectList(req);
        // 2. 按 parentId 分组
        Map<Long, List<AreaDO>> childrenMap = allAreas.stream()
                .collect(java.util.stream.Collectors.groupingBy(AreaDO::getParentId));
        // 3. 递归构建树，从根节点（parentId = 0）开始
        return buildTree(AreaDO.PARENT_ID_ROOT, childrenMap);
    }

    @Override
    public void clearCache() {
        //虽然删除了所有的key，但是不修改对应语言是否更新，前端还是可以拿自己的缓存
        redisUtils.deleteByPatterns(RedisKeyConstants.AREA_LIST, RedisKeyConstants.AREA_TREE);
    }

    private List<AreaNodeRespVO> buildTree(Long parentId, Map<Long, List<AreaDO>> childrenMap) {
        List<AreaDO> children = childrenMap.getOrDefault(parentId, List.of());
        return children.stream()
                .map(area -> {
                    AreaNodeRespVO node = BeanUtils.toBean(area, AreaNodeRespVO.class);
                    node.setChildren(buildTree(area.getId(), childrenMap));
                    return node;
                })
                .collect(Collectors.toList());
    }

    /**
     * 构建祖级列表
     * 从根节点开始，遍历所有父级直到根节点，最后加上自己的ID
     * 例如：自己是朝阳区(110105)，父级是北京(110000)，爷爷是中国(1)
     * 返回 "0,1,110000,110105"
     *
     * @param parentId 父级ID
     * @param ownId    自己的ID
     * @return 祖级列表字符串
     */
    private String buildAncestors(Long parentId, Long ownId) {
        // 根节点，ancestors 为 0
        if (parentId == null || AreaDO.PARENT_ID_ROOT.equals(parentId)) {
            return String.valueOf(AreaDO.PARENT_ID_ROOT);
        }

        // 收集所有父级ID（从近到远）
        List<Long> ancestorIds = new java.util.ArrayList<>();

        // 向上追溯直到根节点
        Long currentParentId = parentId;
        for (int i = 0; i < Short.MAX_VALUE; i++) {
            AreaDO parentArea = areaMapper.selectById(currentParentId);
            if (parentArea == null) {
                break;
            }
            Long ppId = parentArea.getParentId();
            // 已到达根节点
            if (ppId == null || AreaDO.PARENT_ID_ROOT.equals(ppId)) {
                ancestorIds.add(currentParentId);
                break;
            }
            // 检测环路：父级的父级是自己或已在列表中
            if (ppId.equals(currentParentId) || ancestorIds.contains(ppId)) {
                ancestorIds.add(currentParentId);
                break;
            }
            ancestorIds.add(currentParentId);
            currentParentId = ppId;
        }

        // 反转：从根到父级的顺序
        java.util.Collections.reverse(ancestorIds);

        // 构建字符串：0 + 所有父级ID + 自己的ID
        StringBuilder sb = new StringBuilder(String.valueOf(AreaDO.PARENT_ID_ROOT));
        for (Long id : ancestorIds) {
            sb.append(",").append(id);
        }
        sb.append(",").append(ownId);
        return sb.toString();
    }
}
