package com.mockmall.front.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.UrlBasedCorsConfigurationSource;
import org.springframework.web.filter.CorsFilter;

/**
 * CORS
 *
 * @author ccomma
 * @since 2022/6/16 0:27
 */
@Configuration
public class CorsConfig {

    @Bean
    public CorsFilter corsFilter() {
        // 1.cors 配置
        CorsConfiguration corsConfiguration = new CorsConfiguration();
        corsConfiguration.addAllowedOrigin("http://localhost:8080");
        // cookie
        corsConfiguration.setAllowCredentials(true);
        // get/post
        corsConfiguration.addAllowedMethod("*");
        // header
        corsConfiguration.addExposedHeader("*");

        // 2.路由
        UrlBasedCorsConfigurationSource corsConfigurationSource = new UrlBasedCorsConfigurationSource();
        // 所有路由
        corsConfigurationSource.registerCorsConfiguration("/**", corsConfiguration);

        return new CorsFilter(corsConfigurationSource);
    }
}
