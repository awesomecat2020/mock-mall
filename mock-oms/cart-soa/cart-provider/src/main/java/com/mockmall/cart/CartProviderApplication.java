package com.mockmall.cart;

import org.apache.dubbo.config.spring.context.annotation.EnableDubbo;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@EnableDubbo(scanBasePackages = "com.mockmall.cart")
@SpringBootApplication
@MapperScan(basePackages = "com.mockmall.cart.mapper")
public class CartProviderApplication {

    public static void main(String[] args) {
        SpringApplication.run(CartProviderApplication.class, args);
    }

}
