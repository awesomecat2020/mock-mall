package com.mockmall.authplatform;

import org.apache.dubbo.config.spring.context.annotation.EnableDubbo;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@EnableDubbo(scanBasePackages = "com.mockmall.authplatform")
@SpringBootApplication
@MapperScan(basePackages = "com.mockmall.authplatform.mapper")
public class AuthPlatformProviderApplication {

    public static void main(String[] args) {
        SpringApplication.run(AuthPlatformProviderApplication.class, args);
    }

}
