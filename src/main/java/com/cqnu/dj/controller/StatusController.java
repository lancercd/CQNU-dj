package com.cqnu.dj.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class StatusController {

    @RequestMapping("status")
    public String status(){

        return "front/status";
    }
}
