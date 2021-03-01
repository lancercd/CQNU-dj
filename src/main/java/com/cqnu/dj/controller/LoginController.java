package com.cqnu.dj.controller;


import com.cqnu.dj.pojo.TbTkUser;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;

@Controller
public class LoginController {


    @RequestMapping("/user/login")
    public String login(
            @RequestParam("username") String username,
            @RequestParam("pwd") String pwd,
            HttpSession session,
            Model model){

        if(null == username || username.isEmpty()){
            model.addAttribute("msg", "账号不能为空");
            return "redirect:/login";
        }
        if(null == pwd || pwd.isEmpty()){
            model.addAttribute("msg", "密码不能为空");
            return "redirect:/login";
        }


        TbTkUser user = new TbTkUser();
        user.setUserName(username);
        user.setUserId(1);
        session.setAttribute("user", user);;
        session.setAttribute("uid", 1);
        session.setAttribute("username", "test");
        return "redirect:/index";
    }
}
