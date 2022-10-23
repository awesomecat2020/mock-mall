package com.mockmall.minifront;

import org.apache.dubbo.config.spring.context.annotation.EnableDubbo;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@EnableDubbo
@SpringBootApplication
public class MiniFrontApplication {

	public static void main(String[] args) {
		SpringApplication.run(MiniFrontApplication.class, args);
	}

}
