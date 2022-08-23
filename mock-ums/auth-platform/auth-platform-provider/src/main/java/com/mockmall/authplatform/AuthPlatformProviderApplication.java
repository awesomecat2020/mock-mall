package com.mockmall.authplatform;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan(basePackages = "com.mockmall.authplatform.mapper")
public class AuthPlatformProviderApplication {

    public static void main(String[] args) {
        SpringApplication.run(AuthPlatformProviderApplication.class, args);
    }

}
