package com.mockmall.minifront.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author ccomma
 */
@Slf4j
@RestController
@RequestMapping("/test")
public class TestController {


    @GetMapping("/hello")
    public void getInfo(){
        log.debug("debug ****************************");
        log.info("info ****************************");
        log.warn("warn ****************************");
        log.error("error ****************************");
    }

}
