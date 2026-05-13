package com.lz.server;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * 项目的启动类
 * 开始启动了哦
 *
 * @author 荔枝源码
 */
@SuppressWarnings("SpringComponentScan") // 忽略 IDEA 无法识别 ${litchi.info.base-package}
@SpringBootApplication(scanBasePackages = {"${litchi.info.base-package}.server", "${litchi.info.base-package}.module"})
public class LitchiServerApplication {

    public static void main(String[] args) {

        SpringApplication.run(LitchiServerApplication.class, args);
//        new SpringApplicationBuilder(LitchiServerApplication.class)
//                .applicationStartup(new BufferingApplicationStartup(20480))
//                .run(args);

    }

}
