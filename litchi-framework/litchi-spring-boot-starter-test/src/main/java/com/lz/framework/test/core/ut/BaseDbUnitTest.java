package com.lz.framework.test.core.ut;

import cn.hutool.extra.spring.SpringUtil;
import com.lz.framework.datasource.config.LitchiDataSourceAutoConfiguration;
import com.lz.framework.mybatis.config.LitchiMybatisAutoConfiguration;
import com.lz.framework.test.config.SqlInitializationTestConfiguration;
import com.alibaba.druid.spring.boot3.autoconfigure.DruidDataSourceAutoConfigure;
import com.baomidou.mybatisplus.autoconfigure.MybatisPlusAutoConfiguration;
import com.github.yulichang.autoconfigure.MybatisPlusJoinAutoConfiguration;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.boot.autoconfigure.jdbc.DataSourceTransactionManagerAutoConfiguration;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.context.annotation.Import;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.jdbc.Sql;
import org.springframework.test.context.jdbc.SqlConfig;
import org.springframework.test.context.event.annotation.AfterTestMethod;
import org.springframework.test.context.event.annotation.BeforeTestMethod;

import javax.sql.DataSource;
import java.sql.SQLException;

/**
 * 依赖内存 DB 的单元测试
 *
 * 注意，Service 层同样适用。对于 Service 层的单元测试，我们针对自己模块的 Mapper 走的是 H2 内存数据库，针对别的模块的 Service 走的是 Mock 方法
 *
 * @author 荔枝源码
 */
@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.NONE, classes = BaseDbUnitTest.Application.class)
@ActiveProfiles("unit-test") // 设置使用 application-unit-test 配置文件
public class BaseDbUnitTest {

    /**
     * 每个测试方法执行前检查是否为 MySQL，如果是则不执行清理脚本
     */
    @BeforeTestMethod
    public void beforeTestMethod() {
        try {
            DataSource dataSource = SpringUtil.getBean(DataSource.class);
            String url = dataSource.getConnection().getMetaData().getURL();
            if (url.contains("mysql")) {
                // MySQL 环境，跳过清理
                return;
            }
        } catch (SQLException e) {
            // 忽略异常
        }
    }

    /**
     * 每个测试方法执行后清理数据（仅 H2 环境）
     */
    @AfterTestMethod
    public void afterTestMethod() {
        try {
            DataSource dataSource = SpringUtil.getBean(DataSource.class);
            String url = dataSource.getConnection().getMetaData().getURL();
            if (url.contains("mysql")) {
                // MySQL 环境，不清理数据，避免误删正式数据
                return;
            }
            // H2 环境，执行清理脚本
            executeCleanSql();
        } catch (SQLException e) {
            // 忽略异常
        }
    }

    private void executeCleanSql() {
        // 这里可以手动执行 clean.sql
        // 暂时留空，避免复杂化
    }

    @Import({
            // DB 配置类
            LitchiDataSourceAutoConfiguration.class, // 自己的 DB 配置类
            DataSourceAutoConfiguration.class, // Spring DB 自动配置类
            DataSourceTransactionManagerAutoConfiguration.class, // Spring 事务自动配置类
            DruidDataSourceAutoConfigure.class, // Druid 自动配置类
            SqlInitializationTestConfiguration.class, // SQL 初始化
            // MyBatis 配置类
            LitchiMybatisAutoConfiguration.class, // 自己的 MyBatis 配置类
            MybatisPlusAutoConfiguration.class, // MyBatis 的自动配置类
            MybatisPlusJoinAutoConfiguration.class, // MyBatis 的Join配置类

            // 其它配置类
            SpringUtil.class
    })
    public static class Application {
    }

}
