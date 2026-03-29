package com.lz.module.system.service.tenant;

import com.lz.framework.common.enums.CommonStatusEnum;
import com.lz.framework.common.pojo.PageResult;
import com.lz.framework.test.core.ut.BaseDbUnitTest;
import com.lz.module.system.controller.admin.tenant.vo.packages.TenantPackagePageReqVO;
import com.lz.module.system.controller.admin.tenant.vo.packages.TenantPackageSaveReqVO;
import com.lz.module.system.dal.dataobject.tenant.TenantDO;
import com.lz.module.system.dal.dataobject.tenant.TenantPackageDO;
import com.lz.module.system.dal.mysql.tenant.TenantPackageMapper;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.context.annotation.Import;

import jakarta.annotation.Resource;
import java.util.List;

import static com.lz.framework.common.util.date.LocalDateTimeUtils.buildBetweenTime;
import static com.lz.framework.common.util.date.LocalDateTimeUtils.buildTime;
import static com.lz.framework.common.util.object.ObjectUtils.cloneIgnoreId;
import static com.lz.framework.test.core.util.AssertUtils.assertPojoEquals;
import static com.lz.framework.test.core.util.AssertUtils.assertServiceException;
import static com.lz.framework.test.core.util.RandomUtils.*;
import static com.lz.module.system.enums.ErrorCodeConstants.*;
import static java.util.Arrays.asList;
import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.ArgumentMatchers.eq;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

/**
* {@link TenantPackageServiceImpl} 的单元测试类
*
* @author 荔枝源码
*/
@Import(TenantPackageServiceImpl.class)
public class TenantPackageServiceImplTest extends BaseDbUnitTest {

    @Resource
    private TenantPackageServiceImpl tenantPackageService;

    @Resource
    private TenantPackageMapper tenantPackageMapper;

    @MockBean
    private TenantService tenantService;

    @Test
    public void testCreateTenantPackage_success() {
        // 准备参数
        TenantPackageSaveReqVO reqVO = randomPojo(TenantPackageSaveReqVO.class,
                o -> o.setStatus(randomCommonStatus()))
                .setId(null); // 防止 id 被赋值

        // 调用
        Long tenantPackageId = tenantPackageService.createTenantPackage(reqVO);
        // 断言
        assertNotNull(tenantPackageId);
        // 校验记录的属性是否正确
        TenantPackageDO tenantPackage = tenantPackageMapper.selectById(tenantPackageId);
        assertPojoEquals(reqVO, tenantPackage, "id");
    }


    @Test
    public void testUpdateTenantPackage_notExists() {
        // 准备参数
        TenantPackageSaveReqVO reqVO = randomPojo(TenantPackageSaveReqVO.class);

        // 调用, 并断言异常
        assertServiceException(() -> tenantPackageService.updateTenantPackage(reqVO), TENANT_PACKAGE_NOT_EXISTS);
    }


    @Test
    public void testDeleteTenantPackage_notExists() {
        // 准备参数
        Long id = randomLongId();

        // 调用, 并断言异常
        assertServiceException(() -> tenantPackageService.deleteTenantPackage(id), TENANT_PACKAGE_NOT_EXISTS);
    }

    @Test
    public void testGetTenantPackagePage() {
       // mock 数据
       TenantPackageDO dbTenantPackage = randomPojo(TenantPackageDO.class, o -> { // 等会查询到
           o.setName("荔枝源码");
           o.setStatus(CommonStatusEnum.ENABLE.getStatus());
           o.setRemark("源码解析");
           o.setCreateTime(buildTime(2022, 10, 10));
       });
       tenantPackageMapper.insert(dbTenantPackage);
       // 测试 name 不匹配
       tenantPackageMapper.insert(cloneIgnoreId(dbTenantPackage, o -> o.setName("源码")));
       // 测试 status 不匹配
       tenantPackageMapper.insert(cloneIgnoreId(dbTenantPackage, o -> o.setStatus(CommonStatusEnum.DISABLE.getStatus())));
       // 测试 remark 不匹配
       tenantPackageMapper.insert(cloneIgnoreId(dbTenantPackage, o -> o.setRemark("解析")));
       // 测试 createTime 不匹配
       tenantPackageMapper.insert(cloneIgnoreId(dbTenantPackage, o -> o.setCreateTime(buildTime(2022, 11, 11))));
       // 准备参数
       TenantPackagePageReqVO reqVO = new TenantPackagePageReqVO();
       reqVO.setName("荔枝");
       reqVO.setStatus(CommonStatusEnum.ENABLE.getStatus());
       reqVO.setRemark("源码");
       reqVO.setCreateTime(buildBetweenTime(2022, 10, 9, 2022, 10, 11));

       // 调用
       PageResult<TenantPackageDO> pageResult = tenantPackageService.getTenantPackagePage(reqVO);
       // 断言
       assertEquals(1, pageResult.getTotal());
       assertEquals(1, pageResult.getList().size());
       assertPojoEquals(dbTenantPackage, pageResult.getList().get(0));
    }

    @Test
    public void testValidTenantPackage_success() {
        // mock 数据
        TenantPackageDO dbTenantPackage = randomPojo(TenantPackageDO.class,
                o -> o.setStatus(CommonStatusEnum.ENABLE.getStatus()));
        tenantPackageMapper.insert(dbTenantPackage);// @Sql: 先插入出一条存在的数据

        // 调用
        TenantPackageDO result = tenantPackageService.validTenantPackage(dbTenantPackage.getId());
        // 断言
        assertPojoEquals(dbTenantPackage, result);
    }

    @Test
    public void testValidTenantPackage_notExists() {
        // 准备参数
        Long id = randomLongId();

        // 调用, 并断言异常
        assertServiceException(() -> tenantPackageService.validTenantPackage(id), TENANT_PACKAGE_NOT_EXISTS);
    }

    @Test
    public void testValidTenantPackage_disable() {
        // mock 数据
        TenantPackageDO dbTenantPackage = randomPojo(TenantPackageDO.class,
                o -> o.setStatus(CommonStatusEnum.DISABLE.getStatus()));
        tenantPackageMapper.insert(dbTenantPackage);// @Sql: 先插入出一条存在的数据

        // 调用, 并断言异常
        assertServiceException(() -> tenantPackageService.validTenantPackage(dbTenantPackage.getId()),
                TENANT_PACKAGE_DISABLE, dbTenantPackage.getName());
    }

    @Test
    public void testGetTenantPackage() {
        // mock 数据
        TenantPackageDO dbTenantPackage = randomPojo(TenantPackageDO.class);
        tenantPackageMapper.insert(dbTenantPackage);// @Sql: 先插入出一条存在的数据

        // 调用
        TenantPackageDO result = tenantPackageService.getTenantPackage(dbTenantPackage.getId());
        // 断言
        assertPojoEquals(result, dbTenantPackage);
    }

    @Test
    public void testGetTenantPackageListByStatus() {
        // mock 数据
        TenantPackageDO dbTenantPackage = randomPojo(TenantPackageDO.class,
                o -> o.setStatus(CommonStatusEnum.ENABLE.getStatus()));
        tenantPackageMapper.insert(dbTenantPackage);
        // 测试 status 不匹配
        tenantPackageMapper.insert(cloneIgnoreId(dbTenantPackage,
                o -> o.setStatus(CommonStatusEnum.DISABLE.getStatus())));

        // 调用
        List<TenantPackageDO> list = tenantPackageService.getTenantPackageListByStatus(
                CommonStatusEnum.ENABLE.getStatus());
        assertEquals(1, list.size());
        assertPojoEquals(dbTenantPackage, list.get(0));
    }

}
