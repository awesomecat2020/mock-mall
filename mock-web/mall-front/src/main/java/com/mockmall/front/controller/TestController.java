package com.mockmall.front.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * 测试
 *
 * @author ccomma
 * @since 2022/6/14 8:19
 */
@RestController
public class TestController {

    @GetMapping("test")
    public String test() {
        return "hello world";
    }

}
