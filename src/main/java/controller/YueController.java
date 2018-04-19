package controller;

import Dao.CommentDao;
import entity.Comments;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import util.DateHelper;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;

@Controller
@RequestMapping( "/yue/**")
public class YueController {

    @RequestMapping("/ayi")
    public String more(HttpServletRequest request   ){
        String name="阿一鲍鱼";
        HttpSession session = request.getSession();
        session.setAttribute("comcuisine",name);
        System.out.println("跳转到阿一鲍鱼界面");
        return "yue/阿一鲍鱼";
    }

}
