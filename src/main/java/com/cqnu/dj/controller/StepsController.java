package com.cqnu.dj.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class StepsController {

    @RequestMapping("/steps")
    public String Steps(){

        return "front/steps";
    }
}
