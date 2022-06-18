package com.mockmall.front.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * 测试
 *
 * @author ccomma
 */
@RestController
public class TestController {

    @GetMapping("test")
    public String test() {
        return "hello world";
    }

}
