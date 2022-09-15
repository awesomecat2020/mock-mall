package com.mockmall.minifront.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.UrlBasedCorsConfigurationSource;
import org.springframework.web.filter.CorsFilter;

/**
 * CORS
 *
 * @author ccomma
 */
@Configuration
public class CorsConfig {

    @Bean
    public CorsFilter corsFilter() {
        // 1.cors 配置
        CorsConfiguration corsConfiguration = new CorsConfiguration();
        corsConfiguration.addAllowedOrigin("http://localhost:8081");
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
