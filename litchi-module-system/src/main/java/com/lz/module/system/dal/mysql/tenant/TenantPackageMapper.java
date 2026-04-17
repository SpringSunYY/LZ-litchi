package com.lz.module.system.dal.mysql.tenant;

import cn.hutool.core.collection.CollUtil;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.lz.framework.common.enums.CommonStatusEnum;
import com.lz.framework.common.pojo.PageResult;
import com.lz.framework.mybatis.core.mapper.BaseMapperX;
import com.lz.framework.mybatis.core.query.LambdaQueryWrapperX;
import com.lz.module.system.controller.admin.tenant.vo.packages.TenantPackagePageReqVO;
import com.lz.module.system.controller.admin.tenant.vo.packages.TenantPackageRespVO;
import com.lz.module.system.dal.dataobject.tenant.TenantPackageDO;
import com.lz.module.system.enums.tenant.SystemTenantPackageTypeEnum;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Set;

/**
 * 租户套餐 Mapper
 *
 * @author 荔枝源码
 */
@Mapper
public interface TenantPackageMapper extends BaseMapperX<TenantPackageDO> {

    default PageResult<TenantPackageDO> selectPage(TenantPackagePageReqVO reqVO) {
        return selectPage(reqVO, new LambdaQueryWrapperX<TenantPackageDO>()
                .likeIfPresent(TenantPackageDO::getName, reqVO.getName())
                .eqIfPresent(TenantPackageDO::getCode, reqVO.getCode())
                .eqIfPresent(TenantPackageDO::getType, reqVO.getType())
                .eqIfPresent(TenantPackageDO::getDescription, reqVO.getDescription())
                .eqIfPresent(TenantPackageDO::getStatus, reqVO.getStatus())
                .eqIfPresent(TenantPackageDO::getPublished, reqVO.getPublished())
                .betweenIfPresent(TenantPackageDO::getCreateTime, reqVO.getCreateTime())
                .orderByDesc(TenantPackageDO::getId));
    }

    default List<TenantPackageDO> selectListByStatus(Integer status) {
        return selectList(TenantPackageDO::getStatus, status);
    }

    default TenantPackageDO selectByName(String name) {
        return selectOne(TenantPackageDO::getName, name);
    }

    /**
     * 根据编码获得套餐
     *
     * @param packageCode 套餐编码
     * @return 套餐
     */
    default TenantPackageDO selectByCode(String packageCode) {
        return selectOne(TenantPackageDO::getCode, packageCode);
    }

    ;

    /**
     * 根据编码数组，获得套餐列表 只返回状态为开启的
     *
     * @param packageCodes 套餐编码数组
     * @return 套餐列表
     */
    default List<TenantPackageDO> selectListByCodes(List<String> packageCodes) {
        if (CollUtil.isEmpty(packageCodes)) {
            return CollUtil.newArrayList();
        }
        LambdaQueryWrapper<TenantPackageDO> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.in(TenantPackageDO::getCode, packageCodes);
        queryWrapper.eq(TenantPackageDO::getStatus, CommonStatusEnum.ENABLE.getStatus());
        return selectList(queryWrapper);
    }

    default List<TenantPackageDO> selectListByTypeBuiltIn() {
        LambdaQueryWrapper<TenantPackageDO> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(TenantPackageDO::getType, SystemTenantPackageTypeEnum.SYSTEM_TENANT_PACKAGE_TYPE_ENUM_0.getStatus());
        queryWrapper.eq(TenantPackageDO::getStatus, CommonStatusEnum.ENABLE.getStatus());
        return selectList(queryWrapper);
    }
}
