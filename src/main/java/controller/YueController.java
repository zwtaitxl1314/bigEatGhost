package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping( "/yue/**")
public class YueController {

    @RequestMapping("/ayi")
    public String more(HttpServletRequest request){
        System.out.println("跳转到阿一鲍鱼界面");
        return "yue/阿一鲍鱼";
    }

}
