package com.mockmall.baseconfig;

import org.apache.dubbo.config.spring.context.annotation.EnableDubbo;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@EnableDubbo(scanBasePackages = "com.mockmall.baseconfig")
@SpringBootApplication
@MapperScan(basePackages = "com.mockmall.baseconfig.mapper")
public class BaseConfigProviderApplication {

	public static void main(String[] args) {
		SpringApplication.run(BaseConfigProviderApplication.class, args);
	}

}
