package controller;


import Dao.UserDao;
import entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping( "/goto/**")
public class PageController {

    @Autowired
    private UserDao userdao;

    @RequestMapping("/head")
    public String check(HttpServletRequest request) {
        return "head";
    }

    @RequestMapping("/foot")
    public String foot(HttpServletRequest request) {
        return "foot";
    }

    @RequestMapping("/message")
    public String message(HttpServletRequest request) {
        String username = request.getParameter("username");
        User user = userdao.findByName(username);
        if(user == null){
            System.out.println("用户不存在");
            return null;
        }else{
            HttpSession session = request.getSession();
            session.setAttribute("user",user);
            System.out.println(username);
            return "message";
        }
    }

}
