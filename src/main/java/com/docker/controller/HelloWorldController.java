package com.docker.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;

@RestController
public class HelloWorldController {

    @GetMapping("/")
    public HashMap<String,Object> index() {

        return new HashMap<>() {{
            put("success", true);
            put("hello", "world");
            put("new-message", "adding a new msg");
        }};
    }
}