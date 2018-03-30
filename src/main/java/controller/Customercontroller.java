package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping( "/customer/**")
public class Customercontroller {

    @RequestMapping("/regist")
    public String regist(){
        System.out.println("执行regist方法");
        return "redirect:/index.jsp";
    }

    @RequestMapping("/login")
    public  String login(){
        System.out.println("执行login方法");
        return "redirect:/index.jsp";
    }
}
