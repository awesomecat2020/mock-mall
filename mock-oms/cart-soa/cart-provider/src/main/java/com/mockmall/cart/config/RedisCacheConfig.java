package com.mockmall.cart.config;

import com.fasterxml.jackson.annotation.JsonAutoDetect;
import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.fasterxml.jackson.annotation.PropertyAccessor;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.jsontype.impl.LaissezFaireSubTypeValidator;
import org.springframework.cache.CacheManager;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.redis.cache.RedisCacheConfiguration;
import org.springframework.data.redis.cache.RedisCacheManager;
import org.springframework.data.redis.connection.RedisConnectionFactory;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.serializer.Jackson2JsonRedisSerializer;
import org.springframework.data.redis.serializer.RedisSerializationContext;
import org.springframework.data.redis.serializer.RedisSerializer;
import org.springframework.data.redis.serializer.StringRedisSerializer;

import java.time.Duration;

/**
 * @author ccomma
 */
@Configuration
@EnableCaching
public class RedisCacheConfig {

    /**
     * 设置 RedisTemplate 规则
     *
     * @param redisConnectionFactory
     * @return
     */
    @Bean
    public RedisTemplate<Object, Object> redisTemplate(RedisConnectionFactory redisConnectionFactory) {
        RedisTemplate<Object, Object> redisTemplate = new RedisTemplate<>();
        redisTemplate.setConnectionFactory(redisConnectionFactory);

        Jackson2JsonRedisSerializer jackson2JsonRedisSerializer = new Jackson2JsonRedisSerializer(Object.class);
        // 解决查询缓存转换异常的问题
        ObjectMapper objectMapper = new ObjectMapper();
        // 指定要序列化的域，field，get 和 set，以及修饰符范围，ANY 是都有包括 private 和 public
        objectMapper.setVisibility(PropertyAccessor.ALL, JsonAutoDetect.Visibility.ANY);
        // 指定序列化输入的类型，类必须是非 final 修饰的，final 修饰的类，比如 String，Integer 等会跑出异常
        objectMapper.activateDefaultTyping(LaissezFaireSubTypeValidator.instance , ObjectMapper.DefaultTyping.NON_FINAL, JsonTypeInfo.As.PROPERTY);
        jackson2JsonRedisSerializer.setObjectMapper(objectMapper);

        // 序列化 key value
        redisTemplate.setKeySerializer(new StringRedisSerializer());
        redisTemplate.setValueSerializer(jackson2JsonRedisSerializer);
        redisTemplate.setHashKeySerializer(new StringRedisSerializer());
        redisTemplate.setHashValueSerializer(jackson2JsonRedisSerializer);
        redisTemplate.afterPropertiesSet();
        return redisTemplate;
    }

    /**
     * 配置 cacheManager 代替默认的 cacheManager （缓存管理器）
     * 当前使用的 redis 缓存做为底层实现
     *
     * @param factory RedisConnectionFactory
     * @return CacheManager
     */
    @Bean
    public CacheManager cacheManager(RedisConnectionFactory factory) {
        // 定义 redis 数据序列化的对象
        RedisSerializer<String> redisSerializer = new StringRedisSerializer();

        // jackson 序列化方式对象
        Jackson2JsonRedisSerializer serializer = new Jackson2JsonRedisSerializer(Object.class);
        ObjectMapper objectMapper = new ObjectMapper();
        // 设置被序列化的对象的属性都可访问：暴力反射
        objectMapper.setVisibility(PropertyAccessor.ALL, JsonAutoDetect.Visibility.ANY);
        // 仅仅序列化对象的属性，且属性不可为 final 修饰
        objectMapper.activateDefaultTyping(LaissezFaireSubTypeValidator.instance, ObjectMapper.DefaultTyping.NON_FINAL, JsonTypeInfo.As.PROPERTY);
        serializer.setObjectMapper(objectMapper);

        // 配置 key value 序列化
        RedisCacheConfiguration config = RedisCacheConfiguration.defaultCacheConfig()
                .serializeKeysWith(RedisSerializationContext.SerializationPair.fromSerializer(redisSerializer))
                .serializeValuesWith(RedisSerializationContext.SerializationPair.fromSerializer(serializer))
                // 关闭控制存储 --> 禁止缓存 value 为 null 的数据
                .disableCachingNullValues()
                // 修改前缀与 key 的间隔符号，默认是::  eg:name:findById
                .computePrefixWith(cacheName -> cacheName + ":");

        // 构建 redis 缓存管理器
        return RedisCacheManager.builder(factory)
                // Cache 事务支持，保证 redis 下的缓存与数据库下的数据一致性
                .transactionAware()
                .cacheDefaults(config)
                .build();
    }

    /**
     * 设置RedisConfiguration配置
     */
    public RedisCacheConfiguration customRedisCacheConfiguration(RedisCacheConfiguration config, Duration ttl) {
        // 设置缓存缺省超时时间
        return config.entryTtl(ttl);
    }
}
