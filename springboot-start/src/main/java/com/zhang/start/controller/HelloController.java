package com.zhang.start.controller;

import com.zhang.start.exception.BusinessException;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@EnableAutoConfiguration
public class HelloController {

    @Value("${hello.msg}")
    private String message;

    @RequestMapping("/hello")
    private String index() {
        return message;
    }

    @RequestMapping("/testErr")
    private String testErr() {
        //int number = 1 / 0;
        throw new BusinessException("1001", "testErr");
    }
}