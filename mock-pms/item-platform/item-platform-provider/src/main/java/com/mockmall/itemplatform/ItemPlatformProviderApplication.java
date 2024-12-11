package com.mockmall.itemplatform;

import org.apache.dubbo.config.spring.context.annotation.EnableDubbo;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@EnableDubbo(scanBasePackages = "com.mockmall.itemplatform")
@SpringBootApplication
public class ItemPlatformProviderApplication {

    public static void main(String[] args) {
        SpringApplication.run(ItemPlatformProviderApplication.class, args);
    }

}
