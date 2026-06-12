package com.lz.module.infra.service.area;

import cn.hutool.core.collection.CollUtil;
import cn.hutool.core.util.StrUtil;
import com.lz.framework.common.util.object.BeanUtils;
import com.lz.framework.common.util.object.ObjectUtils;
import com.lz.framework.common.util.validation.ValidationUtils;
import com.lz.framework.mybatis.core.query.LambdaQueryWrapperX;
import com.lz.framework.redis.core.RedisUtils;
import com.lz.module.infra.constants.RedisKeyConstants;
import com.lz.module.infra.controller.admin.ip.vo.*;
import com.lz.module.infra.dal.dataobject.area.AreaDO;
import com.lz.module.infra.dal.mysql.area.AreaMapper;
import jakarta.annotation.Resource;
import jakarta.validation.Valid;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.annotation.Validated;

import java.util.*;
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
        validateParentArea(null, createReqVO.getParentCode());
        // 校验地区名称的唯一性
        validateAreaNameUnique(null, createReqVO.getParentCode(), createReqVO.getName());
        // 校验编码的唯一性
        validateAreaCodeUnique(null, createReqVO.getCode());
        // 插入
        AreaDO area = BeanUtils.toBean(createReqVO, AreaDO.class);
        areaMapper.insert(area);
        // 构建祖级列表（需要自己的ID）
        area.setAncestors(buildAncestors(createReqVO.getParentCode(), area.getCode()));
        areaMapper.updateById(area);

        // 返回
        return area.getId();
    }

    private void validateAreaCodeUnique(Long id, String code) {
        AreaDO areaDO = areaMapper.selectByCode(code);
        //如果id为空，且存在
        if (id == null && areaDO != null) {
            throw exception(AREA_CODE_DUPLICATE);
        }
        //如果id不为空，且存在，判断id是否不同，如果不同就是新的
        if (id != null && !id.equals(areaDO.getId())) {
            throw exception(AREA_CODE_DUPLICATE);
        }
    }

    @CacheEvict(cacheNames = {RedisKeyConstants.AREA_LIST, RedisKeyConstants.AREA_TREE},
            allEntries = true) // allEntries 清空所有缓存，因为可能修改到 name 字段，不好清理
    @Override
    public void deleteArea(Long id) {
        // 校验存在
        AreaDO areaDO = validateAreaExists(id);
        // 校验是否有子地区信息
        if (areaMapper.selectCountByParentCode(areaDO.getCode()) > 0) {
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
        validateParentArea(updateReqVO.getCode(), updateReqVO.getParentCode());
        // 校验地区名称的唯一性
        validateAreaNameUnique(updateReqVO.getId(), updateReqVO.getParentCode(), updateReqVO.getName());
        //检验code一致性
        validateAreaCodeUnique(updateReqVO.getId(), updateReqVO.getCode());
        // 更新
        AreaDO updateObj = BeanUtils.toBean(updateReqVO, AreaDO.class);
        // 构建祖级列表（需要自己的ID）
        updateObj.setAncestors(buildAncestors(updateReqVO.getParentCode(), updateReqVO.getCode()));
        areaMapper.updateById(updateObj);
    }


    private AreaDO validateAreaExists(Long id) {
        AreaDO areaDO = areaMapper.selectById(id);
        if (areaDO == null) {
            throw exception(AREA_NOT_EXISTS);
        }
        return areaDO;
    }

    private void validateParentArea(String code, String parentCode) {
        if (parentCode == null || AreaDO.PARENT_CODE_ROOT.equals(parentCode)) {
            return;
        }
        // 1. 不能设置自己为父地区信息
        if (Objects.equals(code, parentCode)) {
            throw exception(AREA_PARENT_ERROR);
        }
        // 2. 父地区信息不存在
        AreaDO parentArea = areaMapper.selectByCode(code);
        if (parentArea == null) {
            throw exception(AREA_PARENT_NOT_EXITS);
        }
        // 3. 递归校验父地区信息，如果父地区信息是自己的子地区信息，则报错，避免形成环路
        if (code == null) { // id 为空，说明新增，不需要考虑环路
            return;
        }
        for (int i = 0; i < Short.MAX_VALUE; i++) {
            // 3.1 校验环路
            parentCode = parentArea.getParentCode();
            if (Objects.equals(code, parentCode)) {
                throw exception(AREA_PARENT_IS_CHILD);
            }
            // 3.2 继续递归下一级父地区信息
            if (AreaDO.PARENT_CODE_ROOT.equals(parentCode)) {
                break;
            }
            parentArea = areaMapper.selectById(parentCode);
            if (parentArea == null) {
                break;
            }
        }
    }

    private void validateAreaNameUnique(Long id, String parentCode, String name) {
        AreaDO area = areaMapper.selectByParentCodeAndName(parentCode, name);
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
        Map<String, List<AreaDO>> childrenMap = allAreas.stream()
                .collect(java.util.stream.Collectors.groupingBy(AreaDO::getParentCode));
        // 3. 递归构建树，从根节点（parentId = 0）开始
        return buildTree(AreaDO.PARENT_CODE_ROOT, childrenMap);
    }

    @Override
    public void clearCache() {
        //虽然删除了所有的key，但是不修改对应语言是否更新，前端还是可以拿自己的缓存
        redisUtils.deleteByPatterns(RedisKeyConstants.AREA_LIST, RedisKeyConstants.AREA_TREE);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public AreaExcelRespVO importAreaList(List<AreaExcelVO> list) {
        // 校验
        if (CollUtil.isEmpty(list)) {
            throw exception(AREA_IMPORT_DATA_EMPTY);
        }
        ValidationUtils.validateList(list, AREA_IMPORT_DATA_EMPTY);
        //根据行政编码查询信息
        //先获取所有的行政编码
        Set<String> codeList = list.stream().map(AreaExcelVO::getCode).collect(Collectors.toSet());
        //查询已有的行政编码
        List<AreaDO> existList = getExistAreaList(codeList);
        //已经存在的话创建map，作为更新
        Map<String, AreaDO> existMap = existList.stream().collect(Collectors.toMap(AreaDO::getCode, v -> v));
        List<AreaDO> createList = new ArrayList<>();
        for (AreaExcelVO excelVO : list) {
            AreaDO areaDO;
            AreaDO existAreaDo = existMap.get(excelVO.getCode());
            if (ObjectUtils.isNotNull(existAreaDo)) {
                // 如果存在，更新已有对象的字段
                BeanUtils.copyProperties(excelVO, existAreaDo);
                areaDO = existAreaDo;
            } else {
                areaDO = new AreaDO();
                BeanUtils.copyProperties(excelVO, areaDO);
            }
            createList.add(areaDO);
        }
        // 先插入数据库，保证数据是最新的
        areaMapper.insertOrUpdate(createList);

        // 批量构建祖级列表：先收集所有需要的 parentCode，一次性查询
        Set<String> parentCodes = createList.stream()
                .map(AreaDO::getParentCode)
                .filter(code -> code != null && !AreaDO.PARENT_CODE_ROOT.equals(code))
                .collect(Collectors.toSet());
        // 查询所有需要的父级区域，构建 code -> AreaDO 的 map
        Map<String, AreaDO> parentAreaMap = new HashMap<>();
        if (CollUtil.isNotEmpty(parentCodes)) {
            List<AreaDO> parentAreas = getExistAreaList(parentCodes);
            parentAreaMap = parentAreas.stream().collect(Collectors.toMap(AreaDO::getCode, v -> v));
        }
        // 为每个地区构建祖级列表
        for (AreaDO areaDO : createList) {
            String ancestors = buildAncestors(areaDO.getParentCode(), areaDO.getCode(), parentAreaMap);
            areaDO.setAncestors(ancestors);
        }
        // 批量更新祖级列表
        areaMapper.updateBatch(createList);
        clearCache();
        return AreaExcelRespVO.builder()
                .message(StrUtil.format("成功导入 {} 个地区信息", createList.size())).build();
    }

    private List<AreaDO> getExistAreaList(Set<String> codeSet) {
        // 查询已有的，分批查询，1000条一批
        int batchSize = 1000;
        int currentBatchCount = 0;
        int index = 0;
        int count = codeSet.size();
        List<String> list = codeSet.stream().toList();
        List<AreaDO> existAllList = new ArrayList<>();
        while (currentBatchCount <= count) {
            currentBatchCount = currentBatchCount + batchSize;
            List<String> batchList = list.subList(index, Math.min(currentBatchCount, count));
            index = currentBatchCount;
            List<AreaDO> existList = areaMapper.selectList(new LambdaQueryWrapperX<AreaDO>()
                    .inIfPresent(AreaDO::getCode, batchList));
            existAllList.addAll(existList);
        }
        return existAllList;
    }

    private List<AreaNodeRespVO> buildTree(String parentCode, Map<String, List<AreaDO>> childrenMap) {
        List<AreaDO> children = childrenMap.getOrDefault(parentCode, List.of());
        return children.stream()
                .map(area -> {
                    AreaNodeRespVO node = BeanUtils.toBean(area, AreaNodeRespVO.class);
                    node.setChildren(buildTree(area.getCode(), childrenMap));
                    return node;
                })
                .collect(Collectors.toList());
    }

    /**
     * 构建祖级列表（批量导入使用，从缓存的 parentAreaMap 中获取父级）
     *
     * @param parentCode    父级编码
     * @param ownCode       自己的编码
     * @param parentAreaMap 父级区域 map
     * @return 祖级列表字符串
     */
    private String buildAncestors(String parentCode, String ownCode, Map<String, AreaDO> parentAreaMap) {
        // 根节点，ancestors 为 0
        if (parentCode == null || AreaDO.PARENT_CODE_ROOT.equals(parentCode)) {
            return AreaDO.PARENT_CODE_ROOT;
        }

        // 收集所有父级编码（从近到远）
        List<String> ancestorCodes = new ArrayList<>();

        // 向上追溯直到根节点，从缓存的 map 中获取
        String currentParentCode = parentCode;
        for (int i = 0; i < Short.MAX_VALUE; i++) {
            AreaDO parentArea = parentAreaMap.get(currentParentCode);
            if (parentArea == null) {
                break;
            }
            String ppCode = parentArea.getParentCode();
            // 已到达根节点
            if (ppCode == null || AreaDO.PARENT_CODE_ROOT.equals(ppCode)) {
                ancestorCodes.add(currentParentCode);
                break;
            }
            // 检测环路：父级的父级是自己或已在列表中
            if (ppCode.equals(currentParentCode) || ancestorCodes.contains(ppCode)) {
                ancestorCodes.add(currentParentCode);
                break;
            }
            ancestorCodes.add(currentParentCode);
            currentParentCode = ppCode;
        }

        // 反转：从根到父级的顺序
        Collections.reverse(ancestorCodes);

        // 构建字符串：0 + 所有父级编码 + 自己的编码
        StringBuilder sb = new StringBuilder(AreaDO.PARENT_CODE_ROOT);
        for (String code : ancestorCodes) {
            sb.append(",").append(code);
        }
        sb.append(",").append(ownCode);
        return sb.toString();
    }

    /**
     * 构建祖级列表（单个操作使用，直接从数据库查询）
     * 从根节点开始，遍历所有父级直到根节点，最后加上自己的编码
     * 例如：自己是朝阳区(110105)，父级是北京(110000)，爷爷是中国(1)
     * 返回 "0,1,110000,110105"
     *
     * @param parentCode 父级编码
     * @param ownCode    自己的编码
     * @return 祖级列表字符串
     */
    private String buildAncestors(String parentCode, String ownCode) {
        // 根节点，ancestors 为 0
        if (parentCode == null || AreaDO.PARENT_CODE_ROOT.equals(parentCode)) {
            return AreaDO.PARENT_CODE_ROOT;
        }

        // 收集所有父级ID（从近到远）
        List<String> ancestorCodes = new ArrayList<>();

        // 向上追溯直到根节点
        String currentParentCode = parentCode;
        for (int i = 0; i < Short.MAX_VALUE; i++) {
            AreaDO parentArea = areaMapper.selectByCode(currentParentCode);
            if (parentArea == null) {
                break;
            }
            String ppCode = parentArea.getParentCode();
            // 已到达根节点
            if (ppCode == null || AreaDO.PARENT_CODE_ROOT.equals(ppCode)) {
                ancestorCodes.add(currentParentCode);
                break;
            }
            // 检测环路：父级的父级是自己或已在列表中
            if (ppCode.equals(currentParentCode) || ancestorCodes.contains(ppCode)) {
                ancestorCodes.add(currentParentCode);
                break;
            }
            ancestorCodes.add(currentParentCode);
            currentParentCode = ppCode;
        }

        // 反转：从根到父级的顺序
        Collections.reverse(ancestorCodes);

        // 构建字符串：0 + 所有父级ID + 自己的ID
        StringBuilder sb = new StringBuilder(AreaDO.PARENT_CODE_ROOT);
        for (String code : ancestorCodes) {
            sb.append(",").append(code);
        }
        sb.append(",").append(ownCode);
        return sb.toString();
    }
}
